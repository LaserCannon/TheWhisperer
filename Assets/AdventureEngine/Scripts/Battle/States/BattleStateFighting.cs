using UnityEngine;
using System.Collections;

public class BattleStateFighting : BattleState
{

	public override void Enter()
	{
		coordinator.Begin();
	}

	public override void Update(float delta)
	{
		coordinator.Update(delta);
	}

	public override void Exit()
	{
	}

}
