using UnityEngine;
using UnityEditor;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;

[CustomEditor(typeof(Script))]
public class ScriptEditor : Editor
{
	
	private static Command draggingCommand = null;
	private static int indexToInsert = -1;

	
	public delegate void messageDelegate();
	public static event messageDelegate onScriptSelected;
	
	
	void OnEnable()
	{
		Command.onExecuteCommand += Repaint;
		
		if(onScriptSelected!=null)
			onScriptSelected();
	}
	
	void OnDisable()
	{
		Command.onExecuteCommand -= Repaint;
	}
	
	void OnDestroy()
	{
		Command.onExecuteCommand -= Repaint;
	}
	
	
	//TODO: Undo support
	public override void OnInspectorGUI()
	{
		
		//Simplify the "Target"
		Script Target = (Script)target;
		
		if(GUILayout.Button ("Open ScriptEditor"))
		{
			ScriptEditorWindow.OpenEditor();
		}
		
		DrawScriptHeader (Target);
	}
	
	public static void DrawScriptHeader(Script Target)
	{
		if(Target==null)	return;
		
		Target.PlayLimit = (TriggerPlayLimit)EditorGUILayout.EnumPopup("Play Limit",Target.PlayLimit);
		
		if(Target.PlayLimit==TriggerPlayLimit.OnceAlways)
			Target.PlayLimitSaveString = EditorGUILayout.TextField("Played Save Key",Target.PlayLimitSaveString);
		
		if(Target.PlayLimit!=TriggerPlayLimit.None)
			GUI.enabled = false;
		Target.Cooldown = EditorGUILayout.FloatField("Cooldown",Target.Cooldown);
		GUI.enabled = true;
		
		if(GUI.changed)
			EditorUtility.SetDirty(Target);
	}
	
	public static void DrawScriptor(Editor editor, Script Target)
	{
		
		if(Target==null)	return;
		
		float firstSlot = GUILayoutUtility.GetLastRect().yMax;	//Save the top slot
		
		if(indexToInsert==0 && Event.current.type != EventType.MouseDrag)	//Somehow, it doesnt like "GetRect()" while dragging...
		{
			Rect r = GUILayoutUtility.GetRect(200,4,GUILayout.Height(4));
			GUI.DrawTexture(r,ScriptEditorStyles.White);
			if(editor!=null)
				editor.Repaint();
		}
		
		//Draw each command
		for(int i=0;i<Target.Commands.Count;i++)
		{
			Command cmd = Target.Commands[i];

			try{
				cmd.Refresh(); 
			}
			catch (System.Exception e)
			{
				EditorGUILayout.BeginHorizontal();
				GUILayout.Label (e.GetType().ToString() + " [missing method - " + cmd.MethodName + "] Replace with:");
				Command newCommand = NewCommandDropDown();
				if(newCommand!=null)
				{
					Target.Commands[i] = newCommand;
					EditorUtility.SetDirty(Target);
				}
				EditorGUILayout.EndHorizontal();
				return;
			}

			
			Rect dragRect = new Rect(0,0,0,0);
			
			EditorGUILayout.BeginVertical (EditorStyles.objectFieldThumb);
			if(!DrawCommandGUI(cmd,ref dragRect) && cmd!=null)
			{
				Target.Commands.RemoveAt(i);
				EditorUtility.SetDirty(Target);
				return;
			}
			
			//--Drag-And-Drop--//
			if(Event.current.type == EventType.MouseDown)
			{
				if(dragRect.Contains( Event.current.mousePosition))
				{
					draggingCommand = cmd;
				}
			}
			if(Event.current.type == EventType.MouseDrag)
			{
				if(draggingCommand!=null)
				{
					Rect lastRect = GUILayoutUtility.GetLastRect();
					if(Mathf.Abs(lastRect.yMax-Event.current.mousePosition.y) < 15)
					{
						indexToInsert = i+1;
					}
					if(Mathf.Abs(firstSlot-Event.current.mousePosition.y) < 15)
					{
						indexToInsert = 0;
					}
				}
			}
			
			if(indexToInsert==i+1 && Event.current.type != EventType.MouseDrag)	//Somehow, it doesnt like "GetRect()" while dragging...
			{
				Rect r = GUILayoutUtility.GetRect(200,4,GUILayout.Height(4));
				GUI.DrawTexture(r,ScriptEditorStyles.White);
				if(editor!=null)	
					editor.Repaint();
			}
			//-- - - --//
			
			EditorGUILayout.EndVertical();
		}
		if(Event.current.type == EventType.MouseUp)
		{
			if(draggingCommand!=null)
			{
				int i = Target.Commands.IndexOf(draggingCommand);
				
				if(i<0) return;
				
				Target.Commands.Insert(indexToInsert,draggingCommand);
				if(indexToInsert>i)
					Target.Commands.RemoveAt(i);
				else
					Target.Commands.RemoveAt(i+1);
				draggingCommand = null;
				indexToInsert = -1;
				EditorUtility.SetDirty(Target);
				Event.current.Use();
			}
		}
			
		
		Command newCom = NewCommandDropDown();
		if(newCom!=null)
		{
			Target.Commands.Add (newCom);
		}
		
		if(GUI.changed)
			EditorUtility.SetDirty(Target);
		
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
	
	
	public static object DrawParamGUI(string pName, Param p)
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
	
	public static bool DrawCommandGUI(Command cmd)
	{
		Rect r = new Rect(0,0,1,1);
		return DrawCommandGUI(cmd,ref r);
	}
	
	public static bool DrawCommandGUI(Command cmd, ref Rect dragRect)
	{
		//NOTE: Returns false if either the Command is null, or if the user clicked the "X" button
		
		EditorGUILayout.BeginVertical ();
		
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
			
			// -- Drag handle -- //
			dragRect = GUILayoutUtility.GetRect(32,24,GUILayout.Width(24));
			if(cmd.IsRunning)
				GUI.Label(dragRect,">>",ScriptEditorStyles.ActiveStyle);
			else
				GUI.Label(dragRect,"__");
			// -- -- -- -- //
			
			// -- Method name -- //
			if(cmd.enabled)
				GUILayout.Label(cmd.MethodName,EditorStyles.whiteLargeLabel);
			else
				GUILayout.Label(cmd.MethodName,ScriptEditorStyles.GreyedOutStyle);
			// -- -- -- -- //
			
			// -- Wait for this function? -- //
			//Check to see if we are FORCING this command to wait / not wait
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
					
					Param p = cmd.GetParam(j);
					string pName = cmd.GetParamName(j);
					
					object outval;

					//First, see if this paramter has an alternate GUI
					bool customFound = Script2DCommandEditorNode.CallGUIFunctionForCommand(cmd,j,p.Value, out outval);
					
					//If we didn't find a GUI function, do the default UI
					if(!customFound)
					{
						outval = DrawParamGUI(pName,p);
					}
					
					//Set the value!
					cmd.SetParamValue(j,outval);
				}
			}
			else
			{
				GUILayout.Label ("[missing method - " + cmd.MethodName + "]");
			}
			// -- -- -- -- //
		}
		
		EditorGUILayout.EndVertical();
		
		return cmd!=null && cmd.Method!=null;
	}
	
}
