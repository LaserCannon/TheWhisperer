#define UNITY_EDITOR

using UnityEngine;
using System.Collections;
using System.Collections.Generic;


//TODO: To avoid the UNITY_EDITOR command, make an interface for the Script2D to interact with


#if UNITY_EDITOR

using UnityEditor;

public class Script2DDrawContext
{
	private Font font;
	private GUIStyle textStyle;
	
	private Script2D target = null;
	
	private Rect bounds = new Rect(0,0,1,1);
	private Vector2 cameraPos = Vector2.zero;
	private float zoom = 1f;

	public delegate void MessageDelegate();
	public event MessageDelegate OnNeedsRepaint = null;
	
	Script2DNode draggingNode = null;
	Script2DPort connectingPort = null;
	
	private bool ObjectSelected
	{
		get { return draggingNode!=null || connectingPort!=null; }
	}

	public float Zoom
	{
		get { return zoom; }
	}


	private Texture arrow_down = null;
	private Texture arrow_right = null;

	
	
	public Script2DDrawContext()
	{
		arrow_down = (Texture)Resources.LoadAssetAtPath("Assets/"+PlayerSettings.productName+"/Scripts/Low/Scripting/Editor/arrow_down.psd",typeof(Texture));
		arrow_right = (Texture)Resources.LoadAssetAtPath("Assets/"+PlayerSettings.productName+"/Scripts/Low/Scripting/Editor/arrow_right.psd",typeof(Texture));

		textStyle = new GUIStyle(EditorStyles.label);
	}



	public void SetTargetScript(Script2D targetScript)
	{
		target = targetScript;
	}



	void Repaint()
	{
		if(OnNeedsRepaint!=null)
		{
			OnNeedsRepaint();
		}
	}
	
	public void Draw()
	{
		if(target!=null)
		{
			DrawGrid ();

			bounds = new Rect(0,0,1,1);

			//TODO: Make the bounds extensions a variable
			foreach(Script2DNode node in target.ScriptTree.NodeList)
			{
				if(node.Position.x < bounds.x)
					bounds.x = node.Position.x;
				if(node.Position.y < bounds.y)
					bounds.y = node.Position.y;
			}
			foreach(Script2DNode node in target.ScriptTree.NodeList)
			{
				if(node.Position.x+300f > bounds.x+bounds.width)
					bounds.width = node.Position.x+300f - bounds.x;
				if(node.Position.y+200f > bounds.y+bounds.height)
					bounds.height = node.Position.y+200f - bounds.y;
			}
			
			if(Event.current.type == EventType.ScrollWheel)
			{
				zoom /= 1f + Event.current.delta.y/100f;
				zoom = Mathf.Clamp(zoom,0.25f,3f);
				
				Repaint();
			}
			
			
			int oldLabelSize = EditorStyles.label.fontSize;
			EditorStyles.label.fontSize = (int)(12f * zoom);
			EditorStyles.miniButton.fontSize = (int)(12f * zoom);
			
			foreach(Script2DNode node in target.ScriptTree.NodeList)
			{
				if(!node.DrawContents(this))
				{
					node.RemoveFromTree();
					return;
				}
			}

			
			if(connectingPort!=null)
			{
				connectingPort.ConnectedPort = DrawActiveConnection(connectingPort);
			}
			
			Command c = NewCommandDropDown();
			if(c!=null)
			{
				Script2DNode newNode = new Script2DCommandNode(c,target.ScriptTree);
				newNode.Position = cameraPos + Vector2.one*20f;
			}
			
			if(GUILayout.Button ("If"))
			{
				Script2DNode newNode = new Script2DIfNode(target.ScriptTree);
				newNode.Position = cameraPos + Vector2.one*20f;
			}

			if(GUILayout.Button("Save"))
			{
				target.savedJson = target.ScriptTree.Serialize();
			}
			
			
			if(Event.current.type == EventType.MouseDrag)
			{
				if(draggingNode!=null)
				{
					draggingNode.Position += Event.current.delta / zoom;
				}
				else if(!ObjectSelected)
				{
					cameraPos -= Event.current.delta / zoom;
					
					cameraPos.x = Mathf.Clamp(cameraPos.x,bounds.x,bounds.x+bounds.width);
					cameraPos.y = Mathf.Clamp(cameraPos.y,bounds.y,bounds.y+bounds.height);
				}
				
				Repaint();
			}
			if(Event.current.type == EventType.MouseUp)
			{
				draggingNode = null;
				connectingPort = null;
				
				Repaint();
			}
			
			EditorStyles.miniButton.fontSize = oldLabelSize;
			EditorStyles.label.fontSize = oldLabelSize;
		}
	}

	public static Command NewCommandDropDown()
	{
		//TODO: Optimize this (cache the method names in the dictionary)
		//Cataegorize all methods in type "ScriptCommands"
		Dictionary<string,List<string>> methodCategories = ScriptCommandUtilities.GetMethodNamesByCategory();
		
		//Build an array of method names, by category
		//TODO: Alphabetize these
		List<string> methodnames = new List<string>();
		
		methodnames.Add("Add Command...");	//This is our "default" for the drop-down below
		
		foreach(string key in methodCategories.Keys)
		{
			methodnames.Add("--- "+key);
			
			foreach(string val in methodCategories[key])
			{
				methodnames.Add(val);
			}
		}
		
		//Now do the drop-down
		int commind = 0;
		commind = EditorGUILayout.Popup(commind,methodnames.ToArray());
		if(commind!=0 && !methodnames[commind].Contains("-"))
		{
			return new Command(methodnames[commind]);
		}
		return null;
	}

	
	private Script2DPort DrawActiveConnection(Script2DPort fromPort)
	{
		Script2DPort closePort = null;
		float closest = 20f;

		foreach(Script2DPort port in target.ScriptTree.PortList)
		{
			if(fromPort.IsCompatibleWith(port))
			{
				if( (cam_pos(port.Position) - Event.current.mousePosition).magnitude < closest )
				{
					closePort = port;
					closest = (cam_pos(port.Position) - Event.current.mousePosition).magnitude;
				}
			}
		}
		
		if(closePort != null)
		{
			DrawBezier(cam_pos(fromPort.Position),cam_pos(closePort.Position),false,Color.white,2f,false);
		}
		else
		{
			DrawBezier(cam_pos(fromPort.Position),Event.current.mousePosition,false,Color.white,2f,false);
		}
		return closePort;
	}

	
	
	public Rect BeginNode(Script2DNode node, Vector2 size)
	{
		Rect dragRect = cam_rect(node.Position.x,node.Position.y,size.x,size.y);
		
		if(Event.current.type==EventType.MouseDown && !ObjectSelected && dragRect.Contains( Event.current.mousePosition))
		{
			draggingNode = node;
		}
		
		GUILayout.BeginArea(dragRect,EditorStyles.textField);
		
		EditorGUILayout.BeginVertical ();
		
		return dragRect;
	}
	
	public void EndNode()
	{
		EditorGUILayout.EndVertical();
		
		GUILayout.EndArea();
	}
	
	
	public void DrawGrid()
	{
		Vector2 gridCursor = cameraPos;
		gridCursor.x = ((int)(gridCursor.x/200f))*200f;
		gridCursor.y = ((int)(gridCursor.y/200f))*200f;
		
		while(gridCursor.x < cameraPos.x + 4000f)
		{
			Drawing.DrawLine(cam_pos(new Vector2(gridCursor.x,cameraPos.y)),cam_pos(new Vector2(gridCursor.x,cameraPos.y+4200)),Color.grey,1f);
			
			gridCursor.x += 200f;
		}
		
		while(gridCursor.y < cameraPos.y + 4000f)
		{
			Drawing.DrawLine(cam_pos(new Vector2(cameraPos.x,gridCursor.y)),cam_pos(new Vector2(cameraPos.x+4200,gridCursor.y)),Color.gray,1f);
			
			gridCursor.y += 200f;
		}
	}

	
	
	public bool DrawPort(Script2DPort port)
	{
		//Draw the arrow texture 
		bool isVert = port.PortDirection==Script2DPortDirection.VerticalIn || port.PortDirection==Script2DPortDirection.VerticalOut;
		Vector2 arrowSize = isVert ? new Vector2(20,10) : new Vector2(10,20);
		Rect rect = cam_rect(port.Position.x-arrowSize.x/2f,port.Position.y-arrowSize.y/2f,arrowSize.x,arrowSize.y);
		GUI.DrawTexture(rect,isVert ? arrow_down : arrow_right);
		
		if(port.ConnectedPort!=null)
		{
			DrawBezier(port.Position,port.ConnectedPort.Position,false,Color.white,1f);
		}
		
		if(Event.current.type == EventType.MouseDown && rect.Contains(Event.current.mousePosition))
		{
			if(!ObjectSelected)
			{
				connectingPort = port;
				return true;
			}
		}
		return false;
	}
	
	public void DrawBezier(Vector2 start, Vector2 end, bool updown, Color c, float width, bool useCam = true)
	{
		if(useCam)
		{
			start = cam_pos(start);
			end = cam_pos(end);
		}
		
		if(updown)
		{
			Drawing.DrawBezier(start,start+Vector2.up*100,end-Vector2.up*100,end,c,width);
		}
		else
		{
			Drawing.DrawBezier(start,start+Vector2.right*100,end-Vector2.right*100,end,c,width);
		}
	}
	
	
	private Texture GetArrowTexture(Script2DPortDirection dir)
	{
		if(dir==Script2DPortDirection.VerticalIn || dir==Script2DPortDirection.VerticalOut)
		{
			return arrow_down;
		}
		else
		{
			return arrow_right;
		}
	}
	
	
	//Camera transforms
	
	public Vector2 cam_pos(Vector2 pos)
	{
		return (pos - cameraPos) * zoom;
	}
	
	public float cam_x(float x)
	{
		return (x - cameraPos.x) * zoom;
	}
	public float cam_y(float y)
	{
		return (y - cameraPos.y) * zoom;
	}
	
	public Vector2 cam_size(Vector2 size)
	{
		return size * zoom;
	}
	
	public float cam_size(float size)
	{
		return size * zoom;
	}
	
	public Rect cam_rect(float x, float y, float w, float h)
	{
		return new Rect(cam_x(x),cam_y(y),cam_size(w),cam_size(h));
	}
	public Rect zoomed_rect(float x, float y, float w, float h)
	{
		return new Rect(x*zoom,y*zoom,w*zoom,h*zoom);
	}

}


public class Drawing
{
	//****************************************************************************************************
	//  static function DrawLine(rect : Rect) : void
	//  static function DrawLine(rect : Rect, color : Color) : void
	//  static function DrawLine(rect : Rect, width : float) : void
	//  static function DrawLine(rect : Rect, color : Color, width : float) : void
	//  static function DrawLine(Vector2 pointA, Vector2 pointB) : void
	//  static function DrawLine(Vector2 pointA, Vector2 pointB, color : Color) : void
	//  static function DrawLine(Vector2 pointA, Vector2 pointB, width : float) : void
	//  static function DrawLine(Vector2 pointA, Vector2 pointB, color : Color, width : float) : void
	//  
	//  Draws a GUI line on the screen.
	//  
	//  DrawLine makes up for the severe lack of 2D line rendering in the Unity runtime GUI system.
	//  This function works by drawing a 1x1 texture filled with a color, which is then scaled
	//   and rotated by altering the GUI matrix.  The matrix is restored afterwards.
	//****************************************************************************************************
	
	public static Texture2D lineTex;
	
	public static void DrawLine(Rect rect) { DrawLine(rect, GUI.contentColor, 1.0f); }
	public static void DrawLine(Rect rect, Color color) { DrawLine(rect, color, 1.0f); }
	public static void DrawLine(Rect rect, float width) { DrawLine(rect, GUI.contentColor, width); }
	public static void DrawLine(Rect rect, Color color, float width) { DrawLine(new Vector2(rect.x, rect.y), new Vector2(rect.x + rect.width, rect.y + rect.height), color, width); }
	public static void DrawLine(Vector2 pointA, Vector2 pointB) { DrawLine(pointA, pointB, GUI.contentColor, 1.0f); }
	public static void DrawLine(Vector2 pointA, Vector2 pointB, Color color) { DrawLine(pointA, pointB, color, 1.0f); }
	public static void DrawLine(Vector2 pointA, Vector2 pointB, float width) { DrawLine(pointA, pointB, GUI.contentColor, width); }
	public static void DrawLine(Vector2 pointA, Vector2 pointB, Color color, float width)
	{
		// Save the current GUI matrix, since we're going to make changes to it.
		Matrix4x4 matrix = GUI.matrix;
		GUI.matrix = Matrix4x4.identity;
		
		// Generate a single pixel texture if it doesn't exist
		if (!lineTex) {
			lineTex = new Texture2D(1, 1);
			lineTex.SetPixel(0, 0, Color.white);
			lineTex.Apply();
		}
		
		// Store current GUI color, so we can switch it back later,
		// and set the GUI color to the color parameter
		Color savedColor = GUI.color;
		GUI.color = color;
		
		// Use Scale to adjust the size of the line.
		// We could do this when we draw the texture, but by scaling it here we can use
		//  non-integer values for the width and length (such as sub 1 pixel widths).
		// Note that the pivot point is at +.5 from pointA.y, this is so that the width of the line
		//  is centered on the origin at pointA.
		
		// Set the rotation for the line.
		//  The angle was calculated with pointA as the origin.
		
		
		// For some reason, when used in an Editor window, everything is rotated around the wrong place until some kind of offset is used. The exact value of this was a bit of guesswork - your mileage may vary. Think this is probably a bug in how GUI.matrix is applied.
		Vector2 offset = new Vector2(0f, -20f);
		
		// Set the GUI matrix to rotate around a pivot point
		// We're doing a 3-stage matrix multiplication since we don't want to rotate around the origin - there's a weird offset bug in the way the GUI is rendered that needs to be worked around   
		offset += new Vector2(0f, 0.5f); // Compensate for line width
		Quaternion guiRot = Quaternion.FromToRotation(Vector2.right, pointB-pointA);
		Matrix4x4 guiRotMat = Matrix4x4.TRS(pointA, guiRot, new Vector3((pointB-pointA).magnitude, width, 1));
		Matrix4x4 guiTransMat = Matrix4x4.TRS(offset, Quaternion.identity, Vector3.one);
		Matrix4x4 guiTransMatInv = Matrix4x4.TRS(-offset, Quaternion.identity, Vector3.one);
		
		GUI.matrix = guiTransMatInv * guiRotMat * guiTransMat;
		
		// Finally, draw the actual line.
		// We're really only drawing a 1x1 texture from pointA.
		// The matrix operations done with Scale, Rotate and Translate will make this
		//  render with the proper width, length, and angle and position
		GUI.DrawTexture(new Rect(0, 0, 1, 1), lineTex);
		
		// We're done.  Restore the GUI matrix and GUI color to whatever they were before.
		GUI.matrix = matrix;
		GUI.color = savedColor;
	}
	
	public static void DrawBezier(Vector2 A, Vector2 ACtrl, Vector2 BCtrl, Vector2 B, Color c, float width)
	{
		float t = 0f;
		Vector2 lastPoint = A;
		while(t<1f)
		{
			t += 0.05f;
			
			Vector3 newPoint3 = SplineNode.Bezier(new Vector3(A.x,A.y),new Vector3(ACtrl.x,ACtrl.y),
			                                      new Vector3(BCtrl.x,BCtrl.y),new Vector3(B.x,B.y), t ) ;
			
			Vector2 newPoint = new Vector2(newPoint3.x,newPoint3.y);
			
			DrawLine(lastPoint,newPoint,c,width);
			
			lastPoint = newPoint;
		}
		
	}
}

#endif
