using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;


public abstract class Script2DNode
{

	//private int id = 0;

	private Vector2 position = Vector2.zero;


	protected Script2DNode next = null;
	protected List<Script2DPort> inputs = new List<Script2DPort>();



	public abstract ParamType ReturnType
	{
		get;
	}

	public Vector2 Position
	{
		get { return position; }
		set { position = value; }
	}
	
	public int InputCount
	{
		get { return inputs.Count; }
	}


	public Script2DNode Next
	{
		get { return next; }
		set { next = value; }
	}


	public Script2DNode()
	{
	}
	
	
	
	public Script2DPort GetInput(int index)
	{
		if(index>=0 && index<inputs.Count)
		{
			return inputs[index];
		}
		return null;
	}
	
	public void ConnectInputTo(int inputIndex, Script2DNode node)
	{
		if(inputIndex>=0 && inputIndex<inputs.Count)
		{
			inputs[inputIndex].Node = node;
		}
	}


	public abstract object Run();

}
