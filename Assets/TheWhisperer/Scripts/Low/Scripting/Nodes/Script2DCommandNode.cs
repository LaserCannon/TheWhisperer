using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;

#if UNITY_EDITOR
using UnityEditor;
#endif

public class Script2DCommandNode : Script2DNode
{

	private Command command;
	
	protected Script2DPort next = null;
	protected Script2DPort last = null;
	protected Script2DPort returnPort = null;
	
	protected List<Script2DPort> inputs = new List<Script2DPort>();


	public Command ScriptCommand
	{
		get { return command; }
	}



	
	public Script2DPort NextPort
	{
		get { return next; }
	}

	public Script2DPort LastPort
	{
		get { return last; }
	}
	
	public Script2DPort ReturnPort
	{
		get { return returnPort; }
	}


	public ParamType ReturnType
	{
		get { return returnPort.Type; }
	}


	public Script2DCommandNode(string methodName, Script2DTree nodeTree) : base(nodeTree)
	{
		SetupWithCommand(new Command(methodName));
	}
	public Script2DCommandNode(Command c, Script2DTree nodeTree) : base(nodeTree)
	{
		SetupWithCommand(c); 
	}
	public Script2DCommandNode(Hashtable data, Script2DTree nodeTree) : base(data,nodeTree)
	{
		SetupWithCommand( new Command((Hashtable)data["command"]) );
	}


	private void SetupWithCommand(Command c)
	{
		next = new Script2DPort(new Vector2(300,50),ParamType.Void,this,Script2DPortDirection.HorizontalOut);
		last = new Script2DPort(new Vector2(0,50),ParamType.Void,this,Script2DPortDirection.HorizontalIn);
		
		command = c;
		
		returnPort = new Script2DPort(new Vector2(50,100),command.ReturnType,this,Script2DPortDirection.VerticalOut);
		
		RegisterPort(next);
		RegisterPort(last);
		RegisterPort(returnPort);
		
		
		for(int i=0;i<command.ParamCount;i++)
		{
			Script2DPort port = new Script2DPort(new Vector2(20+i*45,0),command.GetParam(i).Type,this,Script2DPortDirection.VerticalIn);
			inputs.Add(port);
			RegisterPort(port);
		}
	}


	protected override void DestroyPorts()
	{
		DeregisterPort(next);
		DeregisterPort(last);
		DeregisterPort(returnPort);

		for(int i=0;i<inputs.Count;i++)
		{
			DeregisterPort(inputs[i]);
		}
	}

	
	public override Script2DNode GetMoveNext()
	{
		if(NextPort.ConnectedPort==null)
		{
			return null;
		}
		return NextPort.ConnectedPort.MyNode;
	}
	
	
	public override IEnumerator Run()
	{
		if(!command.enabled)
		{
			yield break;
		}

		for(int i=0;i<command.ParamCount;i++)
		{
			if(inputs[i].ConnectedPort!=null)
			{
				command.GetParam(i).Value = inputs[i].ConnectedPort.MyNode.Get();
			}
		}

		object retVal = command.DirectInvoke();

		if(retVal!=null && retVal.GetType()==typeof(IEnumerator) && command.DoesWaitForFinish)
		{
			yield return (IEnumerator)retVal;
		}
		yield break;
	}

	public override object Get()
	{
		for(int i=0;i<command.ParamCount;i++)
		{
			if(inputs[i].ConnectedPort!=null)
			{
				command.GetParam(i).Value = inputs[i].ConnectedPort.MyNode.Get();
			}
		}
		
		object retVal = command.DirectInvoke();

		return retVal;
	}

	public override Hashtable Serialize ()
	{
		Hashtable hash = base.Serialize();

		hash.Add("next",next.ID);
		hash.Add("return",returnPort.ID);
		hash.Add("last",last.ID);
		
		hash.Add("nextLink",next.ConnectedPortID);

		ArrayList inputList = new ArrayList();
		for(int i=0;i<inputs.Count;i++)
		{
			Hashtable element = new Hashtable();
			element.Add("inputID",inputs[i].ID);
			element.Add("inputLinkID",inputs[i].ConnectedPortID);
			inputList.Add(element);
		}
		hash.Add("inputs",inputList);

		hash.Add("command",command.Serialize());

		return hash;
	}
	
	public override void Deserialize(Hashtable data)
	{
		base.Deserialize(data);

		next.AssignID( (int)(double)data["next"] );
		returnPort.AssignID( (int)(double)data["return"] ); 
		last.AssignID( (int)(double)data["last"] );
		
		ArrayList inputList = (ArrayList)data["inputs"];
		for(int i=0;i<command.ParamCount;i++)
		{
			Hashtable element = (Hashtable)inputList[i];
			inputs[i].AssignID( (int)(double)element["inputID"] );
		}
	}

	
	public override void DeserializeConnections (Hashtable data)
	{
		base.DeserializeConnections(data);

		next.ConnectedPort = tree.GetPort( (int)(double)data["nextLink"] );
		
		ArrayList inputList = (ArrayList)data["inputs"];
		for(int i=0;i<inputList.Count;i++)
		{
			Hashtable element = (Hashtable)inputList[i];
			inputs[i].ConnectedPort = tree.GetPort( (int)(double)element["inputLinkID"] );
		}

	}

	
	#if UNITY_EDITOR

	public override bool DrawContents(Script2DDrawContext context)
	{		
		
		//--
		context.BeginNode(this,new Vector2(300,100));
		//++
		
		Command cmd = ScriptCommand;
		
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
					
					object outval;
					
					//First, see if this paramter has an alternate GUI
					bool customFound = CommandGUIFunctionAttribute.CallGUIFunction(ScriptCommand,j,p.Value, out outval);
					
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

	#endif

}
