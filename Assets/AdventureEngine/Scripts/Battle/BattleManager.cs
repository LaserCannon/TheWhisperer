using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class BattleManager : ScriptableObject
{

	
	
	public Camera BattleCam;
	
	
	public Fighter FighterA;
	public Fighter FighterB;
	public Battlefield Field;
	
	
	private static BattleManager current;
	public static BattleManager Current { get { return current; } }


	public BattleManager()
	{
		current = this;
	}
	
	
	public Fighter GetOpponentFor(Fighter fighter)
	{
		if(fighter==FighterA)
			return FighterB;
		if(fighter==FighterB)
			return FighterA;
		return null;
	}


	//non-static version
	public BattleManager LoadBattle()
	{
		current = this;
		
		return current;
	}
	
	

	
	public void OnFighterDied(Fighter deadFighter)
	{
		End ();
	}
	
	public void Begin()
	{
		FighterA.transform.position = Field.PlayerMount.transform.position;
		FighterA.transform.rotation = Field.PlayerMount.transform.rotation;
		
		FighterB.transform.position = Field.EnemyMount.transform.position;
		FighterB.transform.rotation = Field.EnemyMount.transform.rotation;
		
		FighterA.FighterDied += OnFighterDied;
		FighterB.FighterDied += OnFighterDied;
	}
	
	public void End()
	{
		FighterA.FighterDied -= OnFighterDied;
		FighterB.FighterDied -= OnFighterDied;

		current = null;
	}
	
	
	
	private void UpdatePlayerState()
	{
	}
	
	
}
