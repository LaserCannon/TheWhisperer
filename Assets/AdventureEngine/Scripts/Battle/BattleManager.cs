using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class BattleManager : MonoBehaviour
{
	 
	private BattleStateMachine stateMachine = null;

	private BattleCoordinator coordinator = null;




	public void Begin(string playerID, string enemyID)
	{
		PlayerFighter player = FighterManager.main.SpawnPlayer(playerID);
		EnemyFighter enemy = FighterManager.main.SpawnEnemy(enemyID);

		coordinator = new BattleCoordinator(player,enemy);
		
		stateMachine = new BattleStateMachine(coordinator);

		stateMachine.SetState(new BattleStateStart());
	}



	void Update()
	{
		stateMachine.Update(Time.deltaTime);
	}

}
