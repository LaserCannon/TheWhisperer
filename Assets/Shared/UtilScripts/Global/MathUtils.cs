using UnityEngine;
using System.Collections;


public struct PosRot
{
	public PosRot(Vector3 pos, Quaternion rot)
	{
		position = pos;
		rotation = rot;
	}
	
	public PosRot(Vector3 pos)
	{
		position = pos;
		rotation = Quaternion.identity;
	}
	
	public Vector3 position;
	public Quaternion rotation;
	
	public static PosRot Identity
	{
		get { return new PosRot(Vector3.zero); }
	}
}

public class MathUtils
{
	
	
	public PosRot WorldTransformForScreenPos(Vector2 pos, float dist)
	{
		if(Camera.main==null)	return PosRot.Identity;
		
		Vector3 position = Camera.main.ScreenToWorldPoint(new Vector3(pos.x,pos.y,dist));
		Quaternion rotation = Camera.main.transform.rotation;
		
		return new PosRot(position,rotation);
	}
	
}
