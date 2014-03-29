using UnityEngine;
using System.Collections;

public class FighterStateMachine : StateMachine
{

	private Fighter fighter = null;
	public Fighter FighterObject
	{
		get { return fighter; }
	}


	public FighterStateMachine(Fighter f)
	{
		fighter = f;
	}


}
