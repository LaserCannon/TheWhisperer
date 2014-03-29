using UnityEngine;
using System.Collections;

public class FighterState : State
{


	public virtual bool IsDodging
	{
		get { return false; }
	}

	public virtual bool IsBlocking
	{
		get { return false; }
	}



}
