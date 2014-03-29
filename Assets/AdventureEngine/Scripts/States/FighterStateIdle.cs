using UnityEngine;
using System.Collections;

public class FighterStateIdle : FighterState
{

	public override void Enter ()
	{
		((FighterStateMachine)stateMachine).FighterObject.Animate("idle");
	}




}
