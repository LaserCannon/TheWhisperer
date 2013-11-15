using UnityEngine;
using System.Collections;
using System.Collections.Generic;




public class GameController : MonoBehaviour
{
	
	private static GameController _main;
	public static GameController main
	{
		get
		{
			if(_main==null)
			{
				//Load in the GameController prefab
				GameObject go = (GameObject)Resources.Load ("Prefabs/General/GameController");
				
				if(go!=null)
				{
					//Instantiate the prefab
					go = (GameObject)Instantiate(go,Vector3.zero,Quaternion.identity);
					_main = go.GetComponent<GameController>();
				}
				
				if(_main==null)
				{
					//If the GameController isnt found OR the GameObject has a GameController on it
					Debug.LogWarning("No prefab called GameController found at 'Resources/Prefabs/General'! Using Default.");
					go = new GameObject("GameController");
					_main = go.AddComponent<GameController>();
				}
			}
			return _main;
		}
	}
	
	
	public PlayerAgent PlayerPrefab;
	
	private PlayerAgent player = null;
	public PlayerAgent Player
	{
		get { return player; }
	}
	
	private static PlayerProfile profile = null;
	public static PlayerProfile Profile
	{
		get { return profile; }
	}
	
	
	private Vector3 savedPlayerPosition = Vector3.zero;
	
	
	
	void Awake()
	{
		if(profile==null)
		{
			profile = new PlayerProfile();
			
			profile.AddPartyMember(FighterManager.main.Players[0].name);
		}
	}
	
	
	
	
	
	

	
	
	
	
}
