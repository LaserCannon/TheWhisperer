﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;



public class Script2DEntryNode : Script2DNode
{
	private Script2DPort next = null;


	public Script2DPort NextPort
	{
		get { return next; }
	}


	public Script2DEntryNode(Script2DTree tree) : base(tree)
	{
		next = new Script2DPort(new Vector2(100,25),ParamType.Void,this,Script2DPortDirection.HorizontalOut);

		RegisterPort("next",next);
	}

	protected override void DestroyPorts()
	{
		DeregisterPort("next");
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
		yield break;
	}

	public override object Get()
	{
		return null;
	}



}
