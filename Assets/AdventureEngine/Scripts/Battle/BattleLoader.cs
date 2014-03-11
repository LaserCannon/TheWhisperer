using UnityEngine;
using System.Collections;

public class BattleLoader
{
	private static string savedPlayer = "";
	private static string savedEnemy = "";
	
	//static version
	public static void LoadBattle(string player, string enemy, BattleScene scene)
	{
		GameController.Profile.RecordPlayerLocation(GameController.main.Player);
		
		savedPlayer = player;
		savedEnemy = enemy;
		
		LevelLoader.LoadBattleLevel(scene.sceneName);
		
		LevelLoader.LevelLoaded += OnBattleLevelLoaded;
	}
	
	public static void ManualSetupBattle(string player, string enemy)
	{
		savedPlayer = player;
		savedEnemy = enemy;
		
		OnBattleLevelLoaded();
	}
	
	private static void  OnBattleLevelLoaded()
	{
		if (BattleManager.Current != null)
			return;
		
		//NEW SCENE//
		LevelLoader.LevelLoaded -= OnBattleLevelLoaded;
		
		BattleManager bm = ScriptableObject.CreateInstance<BattleManager>();
		
		bm.Field = (Battlefield)GameObject.FindObjectOfType(typeof(Battlefield));
		
		bm.FighterA = FighterManager.main.SpawnPlayer(savedPlayer);
		bm.FighterB = FighterManager.main.SpawnEnemy(savedEnemy);
		
		bm.FighterA.transform.parent = bm.Field.PlayerMount;
		bm.FighterB.transform.parent = bm.Field.EnemyMount;

		bm.Begin();
	}

	public static void UnloadBattle()
	{
		LevelLoader.LevelLoaded -= OnBattleLevelLoaded;
		
		((PlayerFighter)BattleManager.Current.FighterA).Disconnect();
		
		BattleManager.Current.End();
		
		GameController.Profile.RestorePlayerLocation();

		ScriptableObject.DestroyObject(BattleManager.Current);
	}

}
