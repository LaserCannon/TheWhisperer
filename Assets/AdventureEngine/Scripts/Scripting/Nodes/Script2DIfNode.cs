﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;



public class Script2DIfNode : Script2DNode
{
	private Script2DPort input = null;

	private Script2DPort next = null;
	private Script2DPort falseNext = null;
	private Script2DPort last = null;


	public Script2DPort InputPort
	{
		get { return input; }
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



	public Script2DIfNode(Script2DTree tree) : base(tree)
	{
		input = new Script2DPort(new Vector2(25,0),ParamType.Bool,this,Script2DPortDirection.VerticalIn);
		
		next = new Script2DPort(new Vector2(100,10),ParamType.Void,this,Script2DPortDirection.HorizontalOut);
		falseNext = new Script2DPort(new Vector2(100,40),ParamType.Void,this,Script2DPortDirection.HorizontalOut);
		last = new Script2DPort(new Vector2(0,25),ParamType.Void,this,Script2DPortDirection.HorizontalIn);
		
		RegisterPort("input",input);
		RegisterPort("next",next);
		RegisterPort("falseNext",falseNext);
		RegisterPort("last",last);
	}

	protected override void DestroyPorts()
	{
		DeregisterPort("input");
		DeregisterPort("next");
		DeregisterPort("falseNext");
		DeregisterPort("last");
	}


	public override Script2DNode GetMoveNext()
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
		if(input.ConnectedPort!=null)
		{
			return input.ConnectedPort.MyNode.Get();
		}
		return false;
	}
	




}
