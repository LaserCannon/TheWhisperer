using UnityEngine;
using System.Collections;

public class BattleStateStart : BattleState
{

	public float elapsedTime = 0f;

	public override void Enter()
	{
		coordinator.SetFighterLocalPosition(FighterType.Player, -Vector3.forward * 2f);
		coordinator.SetFighterLocalPosition(FighterType.Enemy, Vector3.zero);

		coordinator.MoveFighterToLocalPosition(FighterType.Player, Vector3.zero, 1f);
	}

	public override void Update(float delta)
	{
		elapsedTime += delta;

		if(elapsedTime > 1.5f)
		{
			stateMachine.SetState(new BattleStateFighting());
		}
		
		coordinator.Update(delta);
	}

	public override void Exit()
	{
	}

}
