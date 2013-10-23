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
	
	
	public Fighter GetOpponentFor(Fighter fighter)
	{
		if(fighter==FighterA)
			return FighterB;
		if(fighter==FighterB)
			return FighterA;
		return null;
	}
	
	
	public void EndBattle()
	{
	}
	
	//static version
	public static BattleManager BeginBattle(Fighter a, Fighter b, Battlefield battlefield)
	{
		BattleManager bm = ScriptableObject.CreateInstance<BattleManager>();
		//BattleManager bm = new BattleManager();
		current = bm;
		
		bm.FighterA = a;
		bm.FighterB = b;
		bm.Field = battlefield;
		
		return bm;
	}
	
	//non-static version
	public BattleManager BeginBattle()
	{
		current = this;
		
		return current;
	}
	
	
	
	
	
	private void UpdatePlayerState()
	{
	}
	
	
}
