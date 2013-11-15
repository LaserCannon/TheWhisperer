using UnityEngine;
using System.Collections;
using System.Collections.Generic;



public class FighterManager : SingletonAsset
{

	private static FighterManager _main;
	public static FighterManager main
	{ 
		get
		{
			if(_main==null)
				_main = getmain<FighterManager>();
			return _main;
		}
	}
	
	public List<PlayerFighter> Players = new List<PlayerFighter>();
	public List<EnemyFighter> Enemies = new List<EnemyFighter>();
	
	private PlayerFighter GetPlayer(string playerName)
	{
		PlayerFighter fighter = Players.Find(f => f.gameObject.name==playerName);
		return fighter;
	}
	
	private EnemyFighter GetEnemy(string enemyName)
	{
		EnemyFighter fighter = Enemies.Find(f => f.gameObject.name==enemyName);
		return fighter;
	}
	
	public PlayerFighter SpawnPlayer(string playerName)
	{
		PlayerFighter fighter = GetPlayer(playerName);
		return (PlayerFighter)Instantiate(fighter);
	}
	
	public EnemyFighter SpawnEnemy(string enemyName)
	{
		EnemyFighter fighter = GetEnemy(enemyName);
		return (EnemyFighter)Instantiate(fighter);
	}
	
}
