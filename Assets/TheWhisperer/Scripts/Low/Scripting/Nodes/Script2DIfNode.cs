using UnityEngine;
using System.Collections;

public class Script2DIfNode : Script2DNode
{

	
	
	private Script2DPort next = null;
	private Script2DPort falseNext = null;
	private Script2DPort last = null;
	private Script2DPort returnPort = null;


	public override ParamType ReturnType
	{
		get { return ParamType.Bool; }
	}
	

	public Script2DPort NextPort
	{
		get { return next; }
	}

	public Script2DPort FalseNextPort
	{
		get { return falseNext; }
	}
	
	public Script2DPort LastPort
	{
		get { return last; }
	}
	
	public Script2DPort ReturnPort
	{
		get { return returnPort; }
	}



	public Script2DIfNode(Script2DTree tree) : base(tree)
	{
		inputs.Add(new Script2DPort(new Vector2(50,0),ParamType.Bool,this,Script2DPortDirection.VerticalIn));
		
		next = new Script2DPort(new Vector2(300,25),ParamType.Void,this,Script2DPortDirection.HorizontalOut);
		falseNext = new Script2DPort(new Vector2(300,75),ParamType.Void,this,Script2DPortDirection.HorizontalOut);
		last = new Script2DPort(new Vector2(0,50),ParamType.Void,this,Script2DPortDirection.HorizontalIn);

		returnPort = new Script2DPort(new Vector2(50,100),ParamType.Bool,this,Script2DPortDirection.VerticalOut);
		
		RegisterPort(inputs[0]);
		RegisterPort(next);
		RegisterPort(falseNext);
		RegisterPort(last);
		RegisterPort(returnPort);
	}
	
	protected override void DestroyPorts()
	{
		DeregisterPort(inputs[0]);
		DeregisterPort(next);
		DeregisterPort(falseNext);
		DeregisterPort(last);
		DeregisterPort(returnPort);
	}


	public virtual Script2DNode GetMoveNext()
	{
		bool isTrue = (bool)Get();
		
		if(isTrue)
		{
			return NextPort.ConnectedPort.MyNode;
		}
		else
		{
			return FalseNextPort.ConnectedPort.MyNode;
		}
	}


	
	public override IEnumerator Run()
	{
		yield break;
	}

	public override object Get()
	{
		if(inputs[0].ConnectedPort!=null)
		{
			return inputs[0].ConnectedPort.MyNode.Run();
		}
		return false;
	}

#if UNITY_EDITOR
	
	public override bool DrawContents(Script2DDrawContext context)
	{		
		for(int i=0;i<InputCount;i++)
		{
			context.DrawPort(GetInput(i));
		}
		
		context.DrawPort(next);
		context.DrawPort(falseNext);
		context.DrawPort(last);
		
		context.BeginNode(this);
		
		
		context.EndNode();
		
		context.DrawPort(returnPort);
		
		return true;
	}

#endif

}
