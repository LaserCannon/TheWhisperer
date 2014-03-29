using UnityEngine;
using System.Collections;

public class BattleStateMachine : StateMachine
{

	private BattleCoordinator coordinator = null;


	public BattleStateMachine(BattleCoordinator coord)
	{
		coordinator = coord;
	}

	protected override void InitState (State state)
	{
		((BattleState)state).Init(coordinator);
	}

}
