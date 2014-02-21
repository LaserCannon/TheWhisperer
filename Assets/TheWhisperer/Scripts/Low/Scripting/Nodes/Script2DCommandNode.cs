using UnityEngine;
using System.Collections;
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


	public override ParamType ReturnType
	{
		get { return returnPort.Type; }
	}


	public Script2DCommandNode(string methodName, Script2DTree nodeTree) : base(nodeTree)
	{
		next = new Script2DPort(new Vector2(300,50),ParamType.Void,this,Script2DPortMode.Out);
		last = new Script2DPort(new Vector2(0,50),ParamType.Void,this,Script2DPortMode.In);

		command = new Command(methodName);
		
		returnPort = new Script2DPort(new Vector2(50,100),command.ReturnType,this,Script2DPortMode.Out);

		RegisterPort(next);
		RegisterPort(last);
		RegisterPort(returnPort);

		for(int i=0;i<command.ParamCount;i++)
		{
			Script2DPort port = new Script2DPort(new Vector2(20+i*45,0),command.GetParam(i).Type,this,Script2DPortMode.In);
			inputs.Add(port);
			RegisterPort(port);
		}
	}
	public Script2DCommandNode(Command c, Script2DTree nodeTree) : base(nodeTree)
	{
		next = new Script2DPort(new Vector2(300,50),ParamType.Void,this,Script2DPortMode.Out);
		last = new Script2DPort(new Vector2(0,50),ParamType.Void,this,Script2DPortMode.In);

		command = c;
		
		returnPort = new Script2DPort(new Vector2(50,100),command.ReturnType,this,Script2DPortMode.Out);
		
		RegisterPort(next);
		RegisterPort(last);
		RegisterPort(returnPort);

		for(int i=0;i<command.ParamCount;i++)
		{
			Script2DPort port = new Script2DPort(new Vector2(20+i*45,0),command.GetParam(i).Type,this,Script2DPortMode.In);
			inputs.Add(port);
			RegisterPort(port);
		}
	}


	~Script2DCommandNode()
	{
		DeregisterPort(next);
		DeregisterPort(last);
		DeregisterPort(returnPort);

		for(int i=0;i<inputs.Count;i++)
		{
			DeregisterPort(inputs[i]);
		}
		
		RemoveFromTree();
	}

	
	public override Script2DNode GetMoveNext()
	{
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

	
	#if UNITY_EDITOR

	public override bool DrawContents(Script2DDrawContext context)
	{		
		for(int i=0;i<InputCount;i++)
		{
			context.DrawPort(GetInput(i));
		}
		
		context.DrawPort(next);

		//--
		//++
		
		context.DrawPort(last);
		
		//--
		context.BeginNode(this);
		//++
		
		Command cmd = ScriptCommand;
		
		if(cmd!=null)
		{
			EditorGUILayout.BeginHorizontal();
			
			// -- 'Enabled' button -- //
			string buttonTxt = ScriptCommand.enabled ? ":" : "//";
			if(GUILayout.Button(buttonTxt,GUILayout.Width(24)))
			{
				ScriptCommand.enabled = !ScriptCommand.enabled;
			}
			// -- -- -- -- //
			
			// -- Method name -- //
			if(cmd.enabled)
				GUILayout.Label(ScriptCommand.MethodName,EditorStyles.whiteLargeLabel);
			else
				GUILayout.Label(ScriptCommand.MethodName,ScriptEditorStyles.GreyedOutStyle);
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
				if(GUILayout.Button (waitString,GUILayout.Width(40)))
				{
					ScriptCommand.DoesWaitForFinish = !ScriptCommand.DoesWaitForFinish;
				}
			}
			else
				ScriptCommand.DoesWaitForFinish = false;
			
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
			MethodInfo method = ScriptCommand.Method;
			if(method!=null)
			{
				for(int j=0;j<ScriptCommand.ParamCount;j++)
				{
					if(GetInput(j).ConnectedPort!=null)
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
						outval = DrawParamGUI(pName,p);
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
		
		context.DrawPort(returnPort);
		
		return ScriptCommand!=null && ScriptCommand.Method!=null;
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

	#endif


}
