using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;


public class Script2DCommandNode : Script2DNode
{

	private Command command;
	
	protected Script2DPort next = null;
	protected Script2DPort last = null;
	protected Script2DPort returnPort = null;
	
	protected List<Script2DPort> inputs = new List<Script2DPort>();


	public override bool DoesWaitForFinish
	{
		get { return command.DoesWaitForFinish; }
	}


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
		Vector2 size = GetGUISizeForCommand(c, new Vector2(250,30 + 24 * c.ParamCount));

		next = new Script2DPort(new Vector2(size.x,size.y/2),ParamType.Void,this,Script2DPortDirection.HorizontalOut);
		last = new Script2DPort(new Vector2(0,size.y/2),ParamType.Void,this,Script2DPortDirection.HorizontalIn);
		
		command = c;
		
		returnPort = new Script2DPort(new Vector2(50,size.y),command.ReturnType,this,Script2DPortDirection.VerticalOut);
		
		RegisterPort("next",next);
		RegisterPort("last",last);
		RegisterPort("return",returnPort);
		
		
		for(int i=0;i<command.ParamCount;i++)
		{
			Script2DPort port = new Script2DPort(new Vector2(20+i*45,0),command.GetParam(i).Type,this,Script2DPortDirection.VerticalIn);
			inputs.Add(port);
			RegisterPort("port"+i.ToString(),port);
		}
	}


	protected override void DestroyPorts()
	{
		DeregisterPort("next");
		DeregisterPort("last");
		DeregisterPort("return");

		for(int i=0;i<inputs.Count;i++)
		{
			DeregisterPort("input"+i.ToString());
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
			return null;
		}

		for(int i=0;i<command.ParamCount;i++)
		{
			if(inputs[i].ConnectedPort!=null)
			{
				command.GetParam(i).Value = inputs[i].ConnectedPort.MyNode.Get();
			}
		}

		object retVal = command.DirectInvoke();

		return (IEnumerator)retVal;
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

		hash.Add("command",command.Serialize());

		return hash;
	}


	
	
	public static Vector2 GetGUISizeForCommand(Command cmd, Vector2 defaultSize)
	{
		MethodInfo info = cmd.Method;
		
		object[] atts = info.GetCustomAttributes(false);
		
		for(int i=0;i<atts.Length;i++)
		{
			if(atts[i] is CommandGUISizeAttribute)
			{
				return ((CommandGUISizeAttribute)atts[i]).size;
			}
		}
		
		return defaultSize;
	}
}
