using UnityEngine;
using System.Collections;

public enum Script2DPortMode
{
	Out,
	In,
}

public class Script2DPort
{

	private ParamType type = ParamType.Bool;

	private Vector2 offset = new Vector2(0,0);	//TODO: perhaps everything should have a parent instead? ("Script2DObject" base class?)

	private Script2DNode myNode = null;

	private Script2DPort connectedPort = null;

	private Script2DPortMode portMode = Script2DPortMode.Out;


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

	public Script2DPortMode PortMode
	{
		get { return portMode; }
	}


	public Script2DPort ConnectedPort
	{
		get { return connectedPort; }
		set
		{
			if(IsCompatibleWith(value))
			{
				connectedPort = value;
			}
			else if(value!=null)
			{
				Debug.LogError ("Cannot assign node! Return types do not match! ("+value.Type+" -> "+type+")");
			}
		}
	}

	public bool IsCompatibleWith(Script2DPort otherPort)
	{
		return otherPort==null || ( otherPort.Type==type && otherPort.PortMode!=portMode );
	}



	public Script2DPort(Vector2 posOffset, ParamType t, Script2DNode thisNode, Script2DPortMode mode)
	{
		type = t;
		myNode = thisNode;
		portMode = mode;
		offset = posOffset;
	}

}
