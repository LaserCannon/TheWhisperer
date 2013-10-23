using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Scriptor : MonoBehaviour
{
	
	private static Scriptor _main;
	public static Scriptor main
	{
		get { 
			if(_main==null)
			{
				GameObject go = new GameObject("Scriptor");
				_main = go.AddComponent<Scriptor>();
			}
			return _main;
		}
	}
	
	
	private List<Script> scriptsInScene = new List<Script>();
	
	
	public static void RegisterScript(Script script)
	{
		_main = main;	//Make sure we have one in the scene
		
		if(script!=null && !main.scriptsInScene.Contains(script))
			main.scriptsInScene.Add (script);
	}
	
	
	
	
	
	
}
