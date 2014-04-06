using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;

#if UNITY_EDITOR
using UnityEditor;
#endif

public partial class Script2DCommandNode : Script2DNode
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
		int height = 30 + 24 * c.ParamCount;

		next = new Script2DPort(new Vector2(250,height/2),ParamType.Void,this,Script2DPortDirection.HorizontalOut);
		last = new Script2DPort(new Vector2(0,height/2),ParamType.Void,this,Script2DPortDirection.HorizontalIn);
		
		command = c;
		
		returnPort = new Script2DPort(new Vector2(50,height),command.ReturnType,this,Script2DPortDirection.VerticalOut);
		
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
}
