using UnityEngine;
#if UNITY_EDITOR
using UnityEditor;
#endif
using System.Collections;
using System.Collections.Generic;
using System.IO;

public class SceneManager_old : MonoBehaviour
{

	
#if UNITY_EDITOR
	// EDITOR-ONLY BUILD FUNCTIONS
	
	public static void BuildFor(BuildTarget platform)
	{
		//TODO: Make this editable
		PlayerSettings.allowedAutorotateToPortrait = false;
		PlayerSettings.allowedAutorotateToPortraitUpsideDown = false;
		PlayerSettings.allowedAutorotateToLandscapeRight = true;
		PlayerSettings.allowedAutorotateToLandscapeLeft = true;
		
		string buildPath = "../"+"Build_" + PlayerSettings.productName + "/"+platform+"/CurrentBuild";
		string absBuildPath = Application.dataPath + "/../" + buildPath;
		
		Debug.Log("Building to: " + absBuildPath);
		Debug.Log(buildPath);
		
		BuildOptions opts;
		
		//Create the directory (otherwise BuildPlayer will complain)
		if(!Directory.Exists(absBuildPath)) {
			Directory.CreateDirectory(buildPath);
			opts = BuildOptions.None;
		}
		else
			opts = BuildOptions.AcceptExternalModificationsToPlayer;
		
		//Build! If our prefab doesnt exist, though, throw an error.
		if(main==null)	Debug.LogError("'Resources/General/SceneManager' does not exist!");
		else 			BuildPipeline.BuildPlayer(main.SerializedLevelPaths.ToArray(),buildPath,platform,opts);
	}
	
	
	/*[MenuItem("SnowBird Builds/Build for iOS")]
	public static void BuildForiOS()
	{
		BuildFor(BuildTarget.iPhone);
	}
	
	[MenuItem("SnowBird Builds/Build for Android")]
	public static void BuildForAndroid()
	{
		BuildFor(BuildTarget.Android);
	}*/
#endif
	
	
	
	// / Level Pack class / //
	[System.Serializable]
	public class LevelPack
	{
		public string PackName;
		
		public List<string> Levels = new List<string>();
	}
	
	
	
	
	// / / MAIN Reference / / //
	private static SceneManager_old _main;
	public static SceneManager_old main
	{
		get
		{
			if(_main==null)
			{
				GameObject goPref = (GameObject)Resources.Load("General/SceneManager");
				if(goPref!=null)	_main = goPref.GetComponent<SceneManager_old>();
			}
			return _main;
		}
	}
	
	
	
	
	//Public Values
	
	public string SceneRoot = "SnowBird/Scenes";
	public string LevelSubfolder = "PRODUCTION";
	
	public string MenuScene = "main_menu";
	
	
	
	
	public List<LevelPack> LevelPacks = new List<LevelPack>();
	
	
	
	
	//Public Properties
	
	public List<string> SerializedLevelPaths
	{
		get
		{
			//Serialized list of levels
			List<string> lvls = new List<string>();
			
			//Add the menu scene first
			lvls.Add("Assets/SnowBird/Scenes/Menu/"+MenuScene+".unity");
			
			//Add all the levels in each pack
			foreach(LevelPack lp in LevelPacks)
			{
				foreach(string lv in lp.Levels)
				{
					lvls.Add("Assets/"+SceneRoot+"/"+LevelSubfolder+"/"+lv+".unity");
				}
			}
			
			return lvls;
		}
	}
	
	public static LevelPack CurrentLevelPack
	{
		get
		{
			foreach(LevelPack lp in main.LevelPacks)
			{
				if(lp.Levels.Contains(Application.loadedLevelName))
				{
					return lp;
				}
				else
				{
					foreach(string s in lp.Levels)
					{
						Debug.Log(s);
					}
				}
			}
			return null;
		}
	}
	
	
	public static string NextLevel
	{
		get
		{
			//First, find the level pack that the current level is in
			LevelPack pack = CurrentLevelPack;
			
			//Once found, return the NEXT level in that pack. otherwise, return the menu scene.
			if(pack!=null)
			{
				int ind = pack.Levels.IndexOf(Application.loadedLevelName);
				if(pack.Levels.Count > ind+1)
					return pack.Levels[ind+1];
			}
			return main.MenuScene;
		}
	}
	
	public static string LastLevel
	{
		get
		{
			//First, find the level pack that the current level is in
			LevelPack pack = CurrentLevelPack;
			
			//Once found, return the LAST level in that pack. otherwise, return the menu scene.
			if(pack!=null)
			{
				int ind = pack.Levels.IndexOf(Application.loadedLevelName);
				if(0 < ind)
					return pack.Levels[ind-1];
			}
			return main.MenuScene;
		}
	}
	
	
	
	
	
	//Public functions
	
	public static LevelPack GetLevelPack(string name)
	{
		foreach(LevelPack lp in main.LevelPacks)
		{
			if(lp.PackName==name)
				return lp;
		}
		return null;
	}
	
	
	
}
