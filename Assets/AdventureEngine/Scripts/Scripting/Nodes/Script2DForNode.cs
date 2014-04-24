using UnityEngine;
using System.Collections;

public class Script2DForNode : Script2DNode
{

	private Script2DPort input = null;
	
	private Script2DPort next = null;
	private Script2DPort repeat = null;
	private Script2DPort last = null;

	private Script2DPort index = null;


	private int i = -1;

	
	public Script2DPort InputPort
	{
		get { return input; }
	}
	
	public Script2DPort NextPort
	{
		get { return next; }
	}
	
	public Script2DPort RepeatPort
	{
		get { return repeat; }
	}
	
	public Script2DPort LastPort
	{
		get { return last; }
	}

	public Script2DPort IndexPort
	{
		get { return index; }
	}
	
	public Script2DForNode(Script2DTree tree) : base(tree)
	{
		input = new Script2DPort(new Vector2(25,0),ParamType.Bool,this,Script2DPortDirection.VerticalIn);
		
		next = new Script2DPort(new Vector2(100,10),ParamType.Void,this,Script2DPortDirection.HorizontalOut);
		repeat = new Script2DPort(new Vector2(100,50),ParamType.Void,this,Script2DPortDirection.HorizontalOut);
		last = new Script2DPort(new Vector2(0,25),ParamType.Void,this,Script2DPortDirection.HorizontalIn);

		index = new Script2DPort(new Vector2(50,50),ParamType.Int,this,Script2DPortDirection.VerticalOut);
		
		RegisterPort("input",input);
		RegisterPort("next",next);
		RegisterPort("repeat",repeat);
		RegisterPort("last",last);
		RegisterPort("index",index);
	}
	
	protected override void DestroyPorts()
	{
		DeregisterPort("input");
		DeregisterPort("next");
		DeregisterPort("repeat");
		DeregisterPort("last");
		DeregisterPort("index");
	}
	
	
	public override Script2DNode GetMoveNext()
	{
		bool isTrue = (bool)Get();
		
		if(isTrue)
		{
			i++;
			return RepeatPort.ConnectedPort.MyNode;
		}
		else
		{
			return NextPort.ConnectedPort.MyNode;
		}
	}

	public override IEnumerator Run()
	{
		yield break;
	}
	
	public override object Get()
	{
		return i;
	}

}
