using UnityEngine;
using System.Collections;


#if UNITY_EDITOR
using UnityEditor;
#endif


public class Script2DIfNode : Script2DNode
{

	private Script2DPort next = null;
	private Script2DPort falseNext = null;
	private Script2DPort last = null;




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



	public Script2DIfNode(Script2DTree tree) : base(tree)
	{
		inputs.Add(new Script2DPort(new Vector2(25,0),ParamType.Bool,this,Script2DPortDirection.VerticalIn));
		
		next = new Script2DPort(new Vector2(100,10),ParamType.Void,this,Script2DPortDirection.HorizontalOut);
		falseNext = new Script2DPort(new Vector2(100,40),ParamType.Void,this,Script2DPortDirection.HorizontalOut);
		last = new Script2DPort(new Vector2(0,25),ParamType.Void,this,Script2DPortDirection.HorizontalIn);
		
		RegisterPort(inputs[0]);
		RegisterPort(next);
		RegisterPort(falseNext);
		RegisterPort(last);
	}
	
	protected override void DestroyPorts()
	{
		DeregisterPort(inputs[0]);
		DeregisterPort(next);
		DeregisterPort(falseNext);
		DeregisterPort(last);
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
		
		context.BeginNode(this, new Vector2(100,50));


		GUI.Label (new Rect(15,15,20,20),"IF",EditorStyles.boldLabel);
		
		
		context.EndNode();
		
		for(int i=0;i<InputCount;i++)
		{
			context.DrawPort(GetInput(i));
		}
		
		context.DrawPort(next);
		context.DrawPort(falseNext);
		context.DrawPort(last);
		
		return true;
	}

#endif

}
