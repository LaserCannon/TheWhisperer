using UnityEngine;
using System.Collections;

public class Script2DIfNode : Script2DNode
{


	private Script2DPort falseNext = null;


	public override ParamType ReturnType
	{
		get { return ParamType.Bool; }
	}

	public Script2DNode FalseNext
	{
		get { return falseNext.Node; }
		set { falseNext.Node = value; }
	}
	
	public Script2DPort FalseNextPort
	{
		get { return falseNext; }
	}



	public Script2DIfNode() : base()
	{
		inputs.Add(new Script2DPort(ParamType.Bool,this));

		falseNext = new Script2DPort(ParamType.Void,this);
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
