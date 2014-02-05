using UnityEngine;
using System.Collections;

public class Script2DIfNode : Script2DNode
{


	private Script2DNode falseNext = null;


	public override ParamType ReturnType
	{
		get { return ParamType.Bool; }
	}

	public Script2DNode FalseNext
	{
		get { return falseNext; }
		set { falseNext = value; }
	}



	public Script2DIfNode(string methodName) : base()
	{
		inputs.Add(new Script2DPort(ParamType.Bool));
	}


	public virtual Script2DNode GetMoveNext()
	{
		bool isTrue = (bool)Get();
		
		if(isTrue)
		{
			return Next;
		}
		else
		{
			return FalseNext;
		}
	}


	
	public override IEnumerator Run()
	{
		yield break;
	}

	public override object Get()
	{
		if(inputs[0].Node!=null)
		{
			return inputs[0].Node.Run();
		}
		return false;
	}


}
