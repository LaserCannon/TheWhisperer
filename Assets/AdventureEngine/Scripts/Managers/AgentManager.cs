using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class AgentManager : SingletonAsset
{
	
	private static AgentManager _main;
	public static AgentManager main
	{ 
		get
		{
			if(_main==null)
				_main = getmain<AgentManager>();
			return _main;
		}
	}

	public List<PathCharacter> Characters = new List<PathCharacter>();
	
	public PathCharacter GetCharacter(string name)
	{
		PathCharacter character = Characters.Find(c => c.gameObject.name==name);
		return character;
	}

}
