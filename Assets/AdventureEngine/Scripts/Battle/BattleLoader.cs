using UnityEngine;
using System.Collections;

public class BattleLoader
{
	private static string savedPlayer = "";
	private static string savedEnemy = "";

	private static BattleManager currentBM = null;
	
	// -- Loads battle from FIELD
	public static void LoadBattle(string player, string enemy, BattleScene scene)
	{
		GameController.Profile.RecordPlayerLocation(GameController.main.Player);
		
		savedPlayer = player;
		savedEnemy = enemy;
		
		LevelLoader.LoadBattleLevel(scene.sceneName);
		
		LevelLoader.LevelLoaded += OnBattleLevelLoaded;
	}

	// -- Initiates battle from EMPTY BATTLE SCENE
	public static void ManualSetupBattle(string player, string enemy)
	{
		savedPlayer = player;
		savedEnemy = enemy;
		
		OnBattleLevelLoaded();
	}
	
	private static void  OnBattleLevelLoaded()
	{
		LevelLoader.LevelLoaded -= OnBattleLevelLoaded;

		GameObject go = new GameObject("BattleManager");
		currentBM = go.AddComponent<BattleManager>();

		currentBM.Begin(savedPlayer,savedEnemy);
	}

	public static void UnloadBattle()
	{
		currentBM = null;

		GameController.Profile.RestorePlayerLocation();
	}

}
