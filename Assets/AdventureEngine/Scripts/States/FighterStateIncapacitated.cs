using UnityEngine;
using System.Collections;

public class FighterStateIncapacitated : FighterState
{

	public FighterStateIncapacitated(bool knockedBack) : base()
	{
		if(knockedBack)
		{
			((FighterStateMachine)stateMachine).FighterObject.MoveTo(Vector3.zero,0.5f);
		}
		((FighterStateMachine)stateMachine).FighterObject.Animate("fall",0.1f);
	}

}
