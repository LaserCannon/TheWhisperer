using UnityEngine;
using System.Collections;
using System.Collections.Generic;

using System.IO;

#if UNITY_EDITOR
using UnityEditor;
#endif


//SpawnLoacationManager automatically stores all of the spawn point info outside of each scene,
//	so that we can choose the appropriate spawn point in the editor


[InitializeOnLoad]
public class SpawnLocatorManager : SingletonAsset
{
	
	[System.Serializable]
	public class SpawnLocatorInfo
	{
		public string Scene = "";
		public List<string> Ids = new List<string>();
		
		public SpawnLocatorInfo(string scene)
		{
			Scene = scene;
		}
	}
	
	
#if UNITY_EDITOR
	static SpawnLocatorManager()
	{
		EditorApplication.update += Update;
	}
	~SpawnLocatorManager()
	{
		EditorApplication.update -= Update;
	}
#endif
	
	
	private static SpawnLocatorManager _main;
	public static SpawnLocatorManager main
	{ 
		get
		{
			if(_main==null)
				_main = getmain<SpawnLocatorManager>();
			return _main;
		}
	}
	
	
	
	
	[SerializeField]
	private List<SpawnLocatorInfo> locatorSets = new List<SpawnLocatorInfo>();
	
	
#if UNITY_EDITOR
	
	private static double LastTimeUpdated = 0f;
	static void Update()
	{
		if(EditorApplication.timeSinceStartup - LastTimeUpdated > 1f)
		{
			LastTimeUpdated = EditorApplication.timeSinceStartup; 

			UpdateLocatorsForCurrentScene();
		}
	}
	
	static void UpdateLocatorsForCurrentScene()
	{
		string curScene = EditorApplication.currentScene;
		
		//Make sure this scene has been saved before and has a filename
		if(!curScene.Contains(".unity"))
			return;

		//Find the acual NAME of the scene in the filename
		int begInd = curScene.LastIndexOf("/")+1;
		int endInd = curScene.LastIndexOf(".unity");
		curScene = curScene.Substring(begInd,endInd-begInd);
		
		SpawnLocatorInfo info = FindSceneInfo(curScene);
		
		SpawnLocator[] locators = (SpawnLocator[])GameObject.FindObjectsOfType(typeof(SpawnLocator));

		if(info==null)
		{
			//Create a new SpawnLocatorInfo if we dont have one
			if(locators.Length > 0)
			{
				info = new SpawnLocatorInfo(curScene);
				main.locatorSets.Add(info);
			}
			else
			{
				return;
			}
		}
		else
		{
			//Remove the SpawnLocatorInfo if there are no locators in this scene
			if(locators.Length == 0)
			{
				main.locatorSets.Remove(info);
				return;
			}
		}
		
		info.Ids.Clear();
		
		for(int i=0;i<locators.Length;i++)
		{
			info.Ids.Add(locators[i].Name);
		}
		
		EditorUtility.SetDirty(main);
	}

	
	private static SpawnLocatorInfo FindSceneInfo(string scene)
	{
		for(int i=0;i<main.locatorSets.Count;i++) {
			if(main.locatorSets[i].Scene == scene) {
				return main.locatorSets[i];
			}
		}
		return null;
	}
	
#endif
	
	
	
	// -- PUBLIC FUNCTIONS -- //
	
	public static List<string> GetSpawnLocationsForScene(string scene)
	{
		SpawnLocatorInfo info = FindSceneInfo(scene);
		
		if(info!=null)
			return new List<string>(info.Ids);
		
		return null;
	}
	
	public static List<string> GetSceneNames()
	{
		List<string> names = new List<string>();
		
		foreach(SpawnLocatorInfo info in main.locatorSets)
		{
			names.Add(info.Scene);
		}
		
		return names;
	}
	
	
	
}
