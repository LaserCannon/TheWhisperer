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
	
	private static string savedPlayer = "";
	private static string savedEnemy = "";
	
	//static version
	public static void LoadBattle(string player, string enemy, BattleScene scene)
	{
		GameController.Profile.RecordPlayerLocation(PlayerAgent.main);
		
		savedPlayer = player;
		savedEnemy = enemy;
		
		LevelLoader.LoadBattleLevel(scene.sceneName);
		
		LevelLoader.LevelLoaded += OnBattleLevelLoaded;
	}
		
	private static void  OnBattleLevelLoaded()
	{
		if (current!= null)
			return;

		//NEW SCENE//
		LevelLoader.LevelLoaded -= OnBattleLevelLoaded;
		
		BattleManager bm = ScriptableObject.CreateInstance<BattleManager>();
		current = bm;
		
		bm.Field = (Battlefield)GameObject.FindObjectOfType(typeof(Battlefield));
		
		bm.FighterA = FighterManager.main.SpawnPlayer(savedPlayer);
		bm.FighterB = FighterManager.main.SpawnEnemy(savedEnemy);
		
		bm.Prepare();
		
		bm.Begin();
	}
	
	//non-static version
	public BattleManager LoadBattle()
	{
		current = this;
		
		return current;
	}
	
	
	
	public void Prepare()
	{
		FighterA.transform.position = Field.PlayerMount.transform.position;
		FighterA.transform.rotation = Field.PlayerMount.transform.rotation;
		
		FighterB.transform.position = Field.EnemyMount.transform.position;
		FighterB.transform.rotation = Field.EnemyMount.transform.rotation;
		
		FighterA.FighterDied += OnFighterDied;
		FighterB.FighterDied += OnFighterDied;
	}
	
	
	public void OnFighterDied(Fighter deadFighter)
	{
		End ();
	}
	
	public void Begin()
	{

	}
	
	public void End()
	{
		
		LevelLoader.LevelLoaded -= OnBattleLevelLoaded;

		GameController.Profile.RestorePlayerLocation();

		((PlayerFighter)FighterA).Disconnect();

		FighterA.FighterDied -= OnFighterDied;
		FighterB.FighterDied -= OnFighterDied;

		current = null;
		ScriptableObject.DestroyObject(this);
	}
	
	
	
	private void UpdatePlayerState()
	{
	}
	
	
}
