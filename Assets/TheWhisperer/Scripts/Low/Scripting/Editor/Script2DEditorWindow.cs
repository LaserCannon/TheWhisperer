using UnityEngine;
using UnityEditor;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;

public class Script2DEditorWindow : EditorWindow
{

	private Script2D target = null;
	private Vector2 scrollPos = Vector2.zero;

	private Rect bounds = new Rect(0,0,1,1);
	private Vector2 cameraPos = Vector2.zero;
	private float zoom = 1f;
	
	[MenuItem("Window/Script2D Editor")]
	public static void OpenEditor()
	{
		Script2DEditorWindow window = EditorWindow.GetWindow<Script2DEditorWindow>(false,"Script2D Editor");
		window.minSize = new Vector2(300,200);
	}
	
	void Update()
	{
		if(Selection.activeGameObject!=null && Selection.activeGameObject.GetComponent<Script2D>()!=null)
		{
			target = Selection.activeGameObject.GetComponent<Script2D>();
		}
	}


	void OnGUI()
	{
		if(target!=null)
		{
			DrawGrid ();

			Script2DNode lastNode = null;
			foreach(Script2DNode node in target.ScriptTree.NodeList)
			{
				if(node.GetType()==typeof(Script2DCommandNode))
				{
					if(!DrawCommandNodeGUI((Script2DCommandNode)node))
					{
						target.ScriptTree.RemoveNode(node);
						return;
					}
				}
				if(node.GetType()==typeof(Script2DIfNode))
				{
					if(!DrawIfNodeGUI((Script2DIfNode)node))
					{
						target.ScriptTree.RemoveNode(node);
						return;
					}
				}

				for(int i=0;i<node.InputCount;i++)
				{
					if(node.GetInput(i).Node != null)
					{
						DrawBezier(GetOutputPosition(node.GetInput(i).Node), GetPortPosition(node,i), true,Color.white,1f);
					}
				}

				bounds = new Rect(0,0,1,1);

				if(node.Position.x-60f < bounds.x)
					bounds.x = node.Position.x - 60f;
				if(node.Position.x > bounds.x+bounds.width)
					bounds.width = node.Position.x - bounds.x;
				if(node.Position.y-60f < bounds.y)
					bounds.y = node.Position.y - 60f;
				if(node.Position.y > bounds.y+bounds.height)
					bounds.height = node.Position.y - bounds.y;

				lastNode = node;
			}

			if(Event.current.type == EventType.ScrollWheel)
			{
				zoom /= 1f + Event.current.delta.y/100f;
				zoom = Mathf.Clamp(zoom,0.25f,3f);

				Repaint();
			}

			if(connectingPort!=null)
			{
				connectingPort.Node = DrawActiveConnection(connectingPort,GetOutputPosition,GetCurrentPortPosition);
			}

			if(connectingNode!=null)
			{
				connectingNode.Node = DrawActiveConnection(connectingNode,GetLastPosition,GetNextPosition);
			}

			Command c = ScriptEditor.NewCommandDropDown();
			if(c!=null)
			{
				Script2DNode newNode = new Script2DCommandNode(c);
				newNode.Position = cameraPos + Vector2.one*20f;
				target.ScriptTree.AddNode(newNode);
			}

			if(GUILayout.Button ("If"))
			{
				Script2DNode newNode = new Script2DIfNode();
				newNode.Position = cameraPos + Vector2.one*20f;
				target.ScriptTree.AddNode(newNode);
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
				connectingNode = null;

				Repaint();
			}
		}
	}

	Script2DNode draggingNode = null;
	Script2DPort connectingPort = null;
	Script2DPort connectingNode = null;
	Vector2 portPosition = Vector2.zero;

	private bool ObjectSelected
	{
		get { return draggingNode!=null || connectingPort!=null || connectingNode!=null; }
	}


	public delegate Vector2 NodeOffsetDelegate(Script2DNode node);


	private Script2DNode DrawActiveConnection(Script2DPort fromPort, NodeOffsetDelegate offsetDelegate, NodeOffsetDelegate fromOffsetDelegate)
	{
		Script2DNode closeNode = null;
		float closest = 20f;
		foreach(Script2DNode node in target.ScriptTree.NodeList)
		{
			if(fromPort.Type==node.ReturnType)
			{
				if( (cam_pos(offsetDelegate(node)) - Event.current.mousePosition).magnitude < closest )
				{
					closeNode = node;
					closest = (cam_pos(offsetDelegate(node)) - Event.current.mousePosition).magnitude;
				}
			}
		}

		if(closeNode != null)
		{
			DrawBezier(cam_pos(fromOffsetDelegate(fromPort.MyNode)),cam_pos(offsetDelegate(closeNode)),false,Color.white,2f,false);
		}
		else
		{
			DrawBezier(cam_pos(fromOffsetDelegate(fromPort.MyNode)),Event.current.mousePosition,false,Color.white,2f,false);
		}
		return closeNode;
	}


	public bool DrawCommandNodeGUI(Script2DCommandNode node)
	{
		//NOTE: Returns false if either the Command is null, or if the user clicked the "X" button

		for(int i=0;i<node.InputCount;i++)
		{
			DrawPort(GetPortPosition(node,i),node.GetInput(i));
		}

		DrawNext(GetNextPosition(node),node.NextPort);

		if(node.Next!=null)
		{
			DrawBezier(GetNextPosition(node),GetLastPosition(node.Next),false,Color.white,1f);
		}

		DrawLast(GetLastPosition(node));


		BeginNode(node);

		Command cmd = node.ScriptCommand;

		if(cmd!=null)
		{
			EditorGUILayout.BeginHorizontal();
			
			// -- 'Enabled' button -- //
			string buttonTxt = cmd.enabled ? ":" : "//";
			if(GUILayout.Button(buttonTxt,GUILayout.Width(24)))
			{
				cmd.enabled = !cmd.enabled;
			}
			// -- -- -- -- //
			
			// -- Method name -- //
			if(cmd.enabled)
				GUILayout.Label(cmd.MethodName,EditorStyles.whiteLargeLabel);
			else
				GUILayout.Label(cmd.MethodName,ScriptEditor.GreyedOutStyle);
			// -- -- -- -- //
			
			// -- Wait for this function? -- //
			if(cmd.IsWaitable && cmd.Method.ReturnTypeCustomAttributes.IsDefined(typeof(ForceWaitAttribute),true))
			{
				cmd.DoesWaitForFinish = true;
				GUI.enabled = false;
			}
			else if(cmd.Method.ReturnTypeCustomAttributes.IsDefined(typeof(ForceNoWaitAttribute),true))
			{
				cmd.DoesWaitForFinish = false;
				GUI.enabled = false;
			}
			
			//Otherwise, the user can choose (if the command is waitable)
			if(cmd.IsWaitable)
			{
				string waitString = cmd.DoesWaitForFinish ? "Wait" : "---";
				if(GUILayout.Button (waitString,GUILayout.Width(40)))
				{
					cmd.DoesWaitForFinish = !cmd.DoesWaitForFinish;
				}
			}
			else
				cmd.DoesWaitForFinish = false;
			
			GUI.enabled = true;
			// -- -- -- -- //
			
			// -- 'Delete this function' button -- //
			if(GUILayout.Button ("X",GUILayout.Width(24)))
			{
				return false;
			}
			// -- -- -- -- //
			
			
			EditorGUILayout.EndHorizontal();
			
			
			// -- Parameters -- //
			MethodInfo method = cmd.Method;
			if(method!=null)
			{
				for(int j=0;j<cmd.ParamCount;j++)
				{
					if(node.GetInput(j).Node!=null)
					{
						GUI.enabled = false;
					}
					
					Param p = cmd.GetParam(j);
					string pName = cmd.GetParamName(j);
					
					object outval;
					
					//First, see if this paramter has an alternate GUI
					bool customFound = CommandGUIFunctionAttribute.CallGUIFunction(cmd,j,p.Value, out outval);
					
					//If we didn't find a GUI function, do the default UI
					if(!customFound)
					{
						outval = DrawParamGUI(pName,p);
					}
					
					//Set the value!
					cmd.SetParamValue(j,outval);

					GUI.enabled = true;
				}
			}
			else
			{
				GUILayout.Label ("[missing method - " + cmd.MethodName + "]");
			}
			// -- -- -- -- //
		}

		EndNode();
		
		DrawReturn(GetOutputPosition(node));
		
		return cmd!=null && cmd.Method!=null;
	}

	public bool DrawIfNodeGUI(Script2DIfNode node)
	{

		for(int i=0;i<node.InputCount;i++)
		{
			DrawPort(GetPortPosition(node,i),node.GetInput(i));
		}
		
		DrawNext(GetNextPosition(node),node.NextPort);
		DrawNext(GetAltNextPosition(node),node.FalseNextPort);
		
		if(node.Next!=null)
		{
			DrawBezier(GetNextPosition(node),GetLastPosition(node.Next),false,Color.white,1f);
		}
		if(node.FalseNext!=null)
		{
			DrawBezier(GetAltNextPosition(node),GetLastPosition(node.FalseNext),false,Color.white,1f);
		}
		
		DrawLast(GetLastPosition(node));

		BeginNode(node);

		
		EndNode();
		
		DrawReturn(GetOutputPosition(node));

		return true;
	}


	public Rect BeginNode(Script2DNode node)
	{
		Rect dragRect = cam_rect(node.Position.x,node.Position.y,300,100);

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
		gridCursor.x = ((int)(gridCursor.x/200f)+1)*200f;
		gridCursor.y = ((int)(gridCursor.y/200f)+1)*200f;
		
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

	
	public object DrawParamGUI(string pName, Param p)
	{
		if(p.IsInt)		return EditorGUILayout.IntField(pName + " (Integer):",p.Int);
		if(p.IsFloat)	return EditorGUILayout.FloatField(pName + " (Float):",p.Float);
		if(p.IsObject)	return EditorGUILayout.ObjectField(pName + " (Object):",p.Object,p.TypeRecord,true);
		if(p.IsString)	return EditorGUILayout.TextField(pName + " (String):",p.String);
		if(p.IsBool)	return EditorGUILayout.Toggle(pName + " (Bool):",p.Bool);
		if(p.IsEnum)	{
			string[] strs = System.Enum.GetNames(p.TypeRecord);
			return EditorGUILayout.Popup(pName + " (Enum):",p.Int,strs);
		}
		return null;
	}


	public bool DrawPort(Vector2 pos, Script2DPort port, bool useCam = true)
	{
		Rect rect = useCam ? cam_rect(pos.x-10f,pos.y-10f,20f,20f) : new Rect(pos.x-10f,pos.y-10f,20f,20f);
		GUI.DrawTexture(rect,ScriptEditor.White);

		if(Event.current.type == EventType.MouseDown && rect.Contains(Event.current.mousePosition))
		{
			if(!ObjectSelected)
			{
				connectingPort = port;
				portPosition = pos;
				return true;
			}
		}
		return false;
	}

	public void DrawReturn(Vector2 pos, bool useCam = true)
	{
		Rect rect = useCam ? cam_rect(pos.x-10f,pos.y-10f,20f,20f) : new Rect(pos.x-10f,pos.y-10f,20f,20f);
		GUI.DrawTexture(rect,ScriptEditor.White);
	}

	public bool DrawNext(Vector2 pos, Script2DPort port, bool useCam = true)
	{
		Rect rect = useCam ? cam_rect(pos.x-10f,pos.y-10f,20f,20f) : new Rect(pos.x-10f,pos.y-10f,20f,20f);
		GUI.DrawTexture(rect,ScriptEditor.White);
		
		if(Event.current.type == EventType.MouseDown && rect.Contains(Event.current.mousePosition))
		{
			if(!ObjectSelected)
			{
				connectingNode = port;
				return true;
			}
		}
		return false;
	}
	
	public void DrawLast(Vector2 pos, bool useCam = true)
	{
		Rect rect = useCam ? cam_rect(pos.x-10f,pos.y-10f,20f,20f) : new Rect(pos.x-10f,pos.y-10f,20f,20f);
		GUI.DrawTexture(rect,ScriptEditor.White);
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


	public static Vector2 GetPortPosition(Script2DNode node, int portInd)
	{
		return new Vector2(node.Position.x+portInd*40f+40f,node.Position.y);
	}
	public Vector2 GetCurrentPortPosition(Script2DNode node)
	{
		return portPosition;
	}
	public static Vector2 GetOutputPosition(Script2DNode node)
	{
		return new Vector2(node.Position.x+40f,node.Position.y+100);
	}
	public static Vector2 GetNextPosition(Script2DNode node)
	{
		return new Vector2(node.Position.x+300,node.Position.y+50);
	}
	public static Vector2 GetAltNextPosition(Script2DNode node)
	{
		return new Vector2(node.Position.x+300,node.Position.y+100);
	}
	public static Vector2 GetLastPosition(Script2DNode node)
	{
		return new Vector2(node.Position.x,node.Position.y+50);
	}



	//Camera transforms

	private Vector2 cam_pos(Vector2 pos)
	{
		return (pos - cameraPos) * zoom;
	}

	private float cam_x(float x)
	{
		return (x - cameraPos.x) * zoom;
	}
	private float cam_y(float y)
	{
		return (y - cameraPos.y) * zoom;
	}

	private Vector2 cam_size(Vector2 size)
	{
		return size * zoom;
	}
	
	private float cam_size(float size)
	{
		return size * zoom;
	}

	private Rect cam_rect(float x, float y, float w, float h)
	{
		return new Rect(cam_x(x),cam_y(y),cam_size(w),cam_size(h));
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



