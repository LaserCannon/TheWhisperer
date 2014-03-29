using UnityEngine;
using System.Collections;

public class FighterStateActioning : FighterState
{

	private Attack attack;

	private int timelineIndex = 0;

	private float lifetime = 0f;



	public FighterStateActioning(Attack att) : base()
	{
		attack = att;
	}

	public override void Enter ()
	{

	}


}
