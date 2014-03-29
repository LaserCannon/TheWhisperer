using UnityEngine;
using System.Collections;
using System.Collections.Generic;


public enum FighterType
{
	Player,
	Enemy,
}



public class BattleCoordinator
{
	private Battlefield battlefield = null;


	private PlayerFighterController playerFighterController = null;
	private EnemyFighterController enemyFighterController = null;


	public BattleCoordinator(PlayerFighter p, EnemyFighter e)
	{
		battlefield = GameObject.FindObjectOfType<Battlefield>();

		p.transform.parent = battlefield.PlayerMount;
		e.transform.parent = battlefield.EnemyMount;

		p.transform.localPosition = Vector3.zero;
		p.transform.localRotation = Quaternion.identity;
		e.transform.localPosition = Vector3.zero;
		e.transform.localRotation = Quaternion.identity;

		playerFighterController = new PlayerFighterController(p);
		enemyFighterController = new EnemyFighterController(e);
	}

	public void Begin()
	{
		playerFighterController.Begin();
		enemyFighterController.Begin();
	}


	public void Update(float delta)
	{
		playerFighterController.Update(delta);
		enemyFighterController.Update(delta);
	}


	public Fighter GetFighterForType(FighterType type)
	{
		if(type==FighterType.Player)
		{
			return playerFighterController.FighterObject;
		}
		if(type==FighterType.Enemy)
		{
			return enemyFighterController.FighterObject;
		}
		return null;
	}


	public void SetFighterLocalPosition(FighterType type, Vector3 pos)
	{
		GetFighterForType(type).transform.localPosition = pos;
	}


	public void MoveFighterToLocalPosition(FighterType type, Vector3 pos, float duration)
	{
		GetFighterForType(type).MoveTo(pos,duration);
	}



}
