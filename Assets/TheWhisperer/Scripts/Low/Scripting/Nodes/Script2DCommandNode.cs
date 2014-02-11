using UnityEngine;
using System.Collections;

public class Script2DCommandNode : Script2DNode
{

	private Command command;


	public Command ScriptCommand
	{
		get { return command; }
	}

	public override ParamType ReturnType
	{
		get { return command.ReturnType; }
	}



	public Script2DCommandNode(string methodName) : base()
	{
		command = new Command(methodName);

		for(int i=0;i<command.ParamCount;i++)
		{
			inputs.Add(new Script2DPort(command.GetParam(i).Type,this));
		}
	}
	public Script2DCommandNode(Command c) : base()
	{
		command = c;
		
		for(int i=0;i<command.ParamCount;i++)
		{
			inputs.Add(new Script2DPort(command.GetParam(i).Type,this));
		}
	}


	
	
	public override IEnumerator Run()
	{
		if(!command.enabled)
		{
			yield break;
		}

		for(int i=0;i<command.ParamCount;i++)
		{
			if(inputs[i].Node!=null)
			{
				command.GetParam(i).Value = inputs[i].Node.Get();
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
			if(inputs[i].Node!=null)
			{
				command.GetParam(i).Value = inputs[i].Node.Get();
			}
		}
		
		object retVal = command.DirectInvoke();

		return retVal;
	}


}
