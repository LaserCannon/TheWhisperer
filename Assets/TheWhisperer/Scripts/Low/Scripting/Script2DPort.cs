using UnityEngine;
using System.Collections;

public class Script2DPort
{

	private ParamType type = ParamType.Bool;

	private Script2DNode myNode = null;

	private Script2DNode node = null;


	public ParamType Type
	{
		get { return type; }
	}


	public Script2DNode MyNode
	{
		get { return myNode; }
	}


	public Script2DNode Node
	{
		get { return node; }
		set
		{
			if(value==null || value.ReturnType==type)
			{
				node = value;
			}
			else
			{
				Debug.LogError ("Cannot assign node! Return types do not match! ("+value.ReturnType+" -> "+type+")");
			}
		}
	}



	public Script2DPort(ParamType t, Script2DNode thisNode)
	{
		type = t;
		myNode = thisNode;
	}

}
