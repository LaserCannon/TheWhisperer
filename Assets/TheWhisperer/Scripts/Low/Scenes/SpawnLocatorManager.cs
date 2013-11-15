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
		EditorApplication.update += updateLocatorsForCurrentScene;
	}
	~SpawnLocatorManager()
	{
		EditorApplication.update -= updateLocatorsForCurrentScene;
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
	private List<SpawnLocatorInfo> locators = new List<SpawnLocatorInfo>();
	
	
#if UNITY_EDITOR
	
	private static double LastTimeUpdated = 0f;
	
	static void updateLocatorsForCurrentScene()
	{
		if(EditorApplication.timeSinceStartup - LastTimeUpdated > 1f)
		{
			LastTimeUpdated = EditorApplication.timeSinceStartup; 
			
			string curScene = EditorApplication.currentScene;
			
			//Make sure this scene has been saved before and has a filename
			if(!curScene.Contains(".unity"))
				return;
			
			//Find the acual NAME of the scene in the filename
			int begInd = curScene.LastIndexOf("/")+1;
			int endInd = curScene.LastIndexOf(".unity");
			curScene = curScene.Substring(begInd,endInd-begInd);
			
			SpawnLocatorInfo info = FindSceneInfo(curScene);
			
			if(info==null) {
				info = new SpawnLocatorInfo(curScene);
				main.locators.Add(info);
			}
			
			info.Ids.Clear();
			
			SpawnLocator[] locators = (SpawnLocator[])GameObject.FindObjectsOfType(typeof(SpawnLocator));
			
			for(int i=0;i<locators.Length;i++)
			{
				info.Ids.Add(locators[i].Name);
			}
			
			EditorUtility.SetDirty(main);
		}
	}
	
	
	
	private static SpawnLocatorInfo FindSceneInfo(string scene)
	{
		for(int i=0;i<main.locators.Count;i++) {
			if(main.locators[i].Scene == scene) {
				return main.locators[i];
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
		
		foreach(SpawnLocatorInfo info in main.locators)
		{
			names.Add(info.Scene);
		}
		
		return names;
	}
	
	
	
}
