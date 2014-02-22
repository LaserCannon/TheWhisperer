using UnityEngine;
using System.Collections;

public enum Script2DPortDirection
{
	VerticalIn,
	VerticalOut,
	HorizontalIn,
	HorizontalOut,
}

public class Script2DPort
{

	private ParamType type = ParamType.Bool;

	private Vector2 offset = new Vector2(0,0);	//TODO: perhaps everything should have a parent instead? ("Script2DObject" base class?)

	private Script2DNode myNode = null;

	private Script2DPort connectedPort = null;

	private Script2DPortDirection portDirection = Script2DPortDirection.HorizontalIn;


	public ParamType Type
	{
		get { return type; }
	}

	public Vector2 Offset
	{
		get { return offset; }
	}

	public Vector2 Position
	{
		get { return myNode.Position + offset; }
	}

	public Script2DNode MyNode
	{
		get { return myNode; }
	}

	public Script2DPortDirection PortDirection
	{
		get { return portDirection; }
	}


	public Script2DPort ConnectedPort
	{
		get { return connectedPort; }
		set
		{
			if(IsCompatibleWith(value))
			{
				if(DoesStoreLink)
				{
					connectedPort = value;
				}
				else if(value!=null)
				{
					value.connectedPort = this;
				}
			}
			else if(value!=null)
			{
				Debug.LogError ("Cannot assign node! Return types do not match! ("+value.Type+" -> "+type+")");
			}
		}
	}

	public bool IsCompatibleWith(Script2DPort otherPort)
	{
		return otherPort==null || ( otherPort.Type==type && IsOppositeModes(otherPort.PortDirection,portDirection ) && otherPort.MyNode!=myNode );
	}

	public static bool IsOppositeModes(Script2DPortDirection dir1, Script2DPortDirection dir2)
	{
		if(dir1==Script2DPortDirection.VerticalIn)
		{
			return dir2==Script2DPortDirection.VerticalOut;
		}
		else if(dir1==Script2DPortDirection.VerticalOut)
		{
			return dir2==Script2DPortDirection.VerticalIn;
		}
		else if(dir1==Script2DPortDirection.HorizontalIn)
		{
			return dir2==Script2DPortDirection.HorizontalOut;
		}
		else if(dir1==Script2DPortDirection.HorizontalOut)
		{
			return dir2==Script2DPortDirection.HorizontalIn;
		}
		return false;
	}

	public bool IsVertical
	{
		get { return portDirection==Script2DPortDirection.VerticalIn || portDirection==Script2DPortDirection.VerticalOut; }
	}
	
	public bool IsHorizontal
	{
		get { return portDirection==Script2DPortDirection.HorizontalIn || portDirection==Script2DPortDirection.HorizontalOut; }
	}

	public bool DoesStoreLink		//Only VerticalIn (parameters) and HorizontalOut (next node) stores references.
	{
		get { return portDirection==Script2DPortDirection.VerticalIn || portDirection==Script2DPortDirection.HorizontalOut; } 
	}



	public Script2DPort(Vector2 posOffset, ParamType t, Script2DNode thisNode, Script2DPortDirection dir)
	{
		type = t;
		myNode = thisNode;
		portDirection = dir;
		offset = posOffset;
	}

}
