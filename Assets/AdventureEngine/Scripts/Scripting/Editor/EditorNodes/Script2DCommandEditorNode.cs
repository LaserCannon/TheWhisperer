﻿using UnityEngine;
using UnityEditor;
using System.Reflection;
using System.Collections;

public class Script2DCommandEditorNode : Script2DCommandNode
{
	public Script2DCommandEditorNode(Hashtable data, Script2DTree nodeTree) : base(data,nodeTree) {}
	public Script2DCommandEditorNode(Command command, Script2DTree nodeTree) : base(command,nodeTree) {}
	public Script2DCommandEditorNode(string methodName, Script2DTree nodeTree) : base(methodName,nodeTree) {}

	
	
	protected override string OverriddenClassName
	{
		get { return "Script2DCommandNode"; }
	}


	public override bool DrawContents(Script2DDrawContextBase contextbase)
	{		
		Script2DDrawContext context = (Script2DDrawContext)contextbase;

		Command cmd = ScriptCommand;
		
		int height = 30 + 24 * cmd.ParamCount;
		
		//--
		context.BeginNode(this,new Vector2(250,height));
		//++
		
		if(cmd!=null)
		{
			EditorGUILayout.BeginHorizontal();
			
			// -- 'Enabled' button -- //
			string buttonTxt = ScriptCommand.enabled ? ":" : "//";
			if(GUILayout.Button(buttonTxt,EditorStyles.miniButton,GUILayout.Width(context.cam_size(24)),GUILayout.Height(context.cam_size(24))))
			{
				ScriptCommand.enabled = !ScriptCommand.enabled;
			}
			// -- -- -- -- //
			
			// -- Method name -- //
			if(cmd.enabled)
				GUILayout.Label(ScriptCommand.MethodName,EditorStyles.label);
			else
			{
				int oldSize = ScriptEditorStyles.GreyedOutStyle.fontSize;
				ScriptEditorStyles.GreyedOutStyle.fontSize = (int)(context.Zoom * 12f);
				GUILayout.Label(ScriptCommand.MethodName,ScriptEditorStyles.GreyedOutStyle);
				ScriptEditorStyles.GreyedOutStyle.fontSize = oldSize;
			}
			// -- -- -- -- //
			
			// -- Wait for this function? -- //
			if(ScriptCommand.IsWaitable && ScriptCommand.Method.ReturnTypeCustomAttributes.IsDefined(typeof(ForceWaitAttribute),true))
			{
				ScriptCommand.DoesWaitForFinish = true;
				GUI.enabled = false;
			}
			else if(ScriptCommand.Method.ReturnTypeCustomAttributes.IsDefined(typeof(ForceNoWaitAttribute),true))
			{
				ScriptCommand.DoesWaitForFinish = false;
				GUI.enabled = false;
			}
			
			//Otherwise, the user can choose (if the command is waitable)
			if(ScriptCommand.IsWaitable)
			{
				string waitString = ScriptCommand.DoesWaitForFinish ? "Wait" : "---";
				if(GUILayout.Button (waitString,EditorStyles.miniButton,GUILayout.Width(context.cam_size(40)),GUILayout.Height(context.cam_size(20))))
				{
					ScriptCommand.DoesWaitForFinish = !ScriptCommand.DoesWaitForFinish;
				}
			}
			else
				ScriptCommand.DoesWaitForFinish = false;
			
			GUI.enabled = true;
			// -- -- -- -- //
			
			// -- 'Delete this function' button -- //
			if(GUILayout.Button ("X",EditorStyles.miniButton,GUILayout.Width(context.cam_size(24)),GUILayout.Height(context.cam_size(24))))
			{
				return false;
			}
			// -- -- -- -- //
			
			
			EditorGUILayout.EndHorizontal();
			
			
			// -- Parameters -- //
			MethodInfo method = ScriptCommand.Method;
			if(method!=null)
			{
				for(int j=0;j<ScriptCommand.ParamCount;j++)
				{
					if(inputs[j].ConnectedPort!=null)
					{
						GUI.enabled = false;
					}
					
					Param p = ScriptCommand.GetParam(j);
					string pName = ScriptCommand.GetParamName(j);
					
					object outval = null;
					
					//First, see if this paramter has an alternate GUI
					bool customFound = CommandAttributesEditorExtension.CallGUIFunctionForCommand(ScriptCommand,j,p.Value, out outval);
					
					//If we didn't find a GUI function, do the default UI
					if(!customFound)
					{
						outval = DrawParamGUI(context,pName,p);
					}
					
					//Set the value!
					ScriptCommand.SetParamValue(j,outval);
					
					GUI.enabled = true;
				}
			}
			else
			{
				GUILayout.Label ("[missing method - " + ScriptCommand.MethodName + "]");
			}
			// -- -- -- -- //
		}
		
		context.EndNode();
		
		
		for(int i=0;i<inputs.Count;i++)
		{
			context.DrawPort(inputs[i]);
		}
		
		context.DrawPort(next);
		
		
		context.DrawPort(last);
		
		context.DrawPort(returnPort);
		
		return ScriptCommand!=null && ScriptCommand.Method!=null;
	}
	
	
	
	public object DrawParamGUI(Script2DDrawContext context, string pName, Param p)
	{
		if(p.IsInt)		return EditorGUILayout.IntField(pName + " (Integer):",p.Int,GUILayout.Height((float)(18f*context.Zoom)));
		if(p.IsFloat)	return EditorGUILayout.FloatField(pName + " (Float):",p.Float,GUILayout.Height((float)(18f*context.Zoom)));
		if(p.IsObject)	return EditorGUILayout.ObjectField(pName + " (Object):",p.Object,p.TypeRecord,true,GUILayout.Height((float)(18f*context.Zoom)));
		if(p.IsString)	return EditorGUILayout.TextField(pName + " (String):",p.String,GUILayout.Height((float)(18f*context.Zoom)));
		if(p.IsBool)	return EditorGUILayout.Toggle(pName + " (Bool):",p.Bool,GUILayout.Height((float)(18f*context.Zoom)));
		if(p.IsEnum)	{
			string[] strs = System.Enum.GetNames(p.TypeRecord);
			return EditorGUILayout.Popup(pName + " (Enum):",p.Int,strs,GUILayout.Height((float)(18f*context.Zoom)));
		}
		return null;
	}

}
