using UnityEngine;
using System.Collections;
using System.Collections.Generic;




public class GameController : MonoBehaviour
{


	private static GameController _main = null;
	public static GameController main
	{
		get { return _main; }
	}
	


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

	public UIRoot uiRoot = null;

	
	void Awake()
	{
		_main = this;


		if(profile==null)
		{
			profile = new PlayerProfile();
			
			profile.AddPartyMember(FighterManager.main.Players[0].name);
		}

		//Spawn a player agent only if there is a navmesh
		if(player==null && NavMesh.CalculateTriangulation().vertices.Length > 0)
		{
			PathCharacter ch = AgentManager.main.Characters[0];
			player = (PlayerAgent)Instantiate(ch);
			player.WarpTo(SpawnLocator.GetSpawnLocation(0));
		}
	}
	
}
	
	
	
	

