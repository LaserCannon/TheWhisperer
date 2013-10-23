using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.IO;

#if UNITY_EDITOR
using UnityEditor;
#endif



[System.Serializable]
public class ScenePackage
{
	public string PackageName = "";
	//TODO: Make this a list of SCENES instead of strings. Scenes are the only objects that are exactly of type "Object" (capital O), so we can use this to our advantage.
	//public List<string> Scenes = new List<string>();
	public List<Object> Scenes = new List<Object>();
}

[System.Serializable]
public class BuildScheme
{
	public string SchemeName = "";
	public string StartingScene = "";
	public List<string> Packages = new List<string>();
	
	public List<string> SerializedLevelPaths
	{
		get
		{
			List<string> paths = new List<string>();
			
			foreach(ScenePackage pack in SceneManager.main.Packages)
			{
				if(Packages.Contains(pack.PackageName))
				{
					foreach(Object scene in pack.Scenes)
					{
						if(scene!=null)
						{
							string pathToAdd = AssetDatabase.GetAssetPath(scene);
							if(!paths.Contains(pathToAdd))
							{
								paths.Add (pathToAdd);
							}
						}
					}
				}
			}
			
			return paths;
		}
	}
}



public class SceneManager : ScriptableObject
{
	private static SceneManager _main; 
	public static SceneManager main
	{ 
		get
		{ 
			if(_main==null)
			{
				Object obj = ManagedAssets.Load("SceneManager",typeof(SceneManager));
				_main = (SceneManager)obj;
				
#if UNITY_EDITOR
				if(_main==null) {
					
					SceneManager manager = ScriptableObject.CreateInstance<SceneManager>();
					ManagedAssets.CreateAsset(manager, "SceneManager.asset");
					_main = manager;
					
					AssetDatabase.Refresh();
				}
#endif
				
			}
			return _main;
		}
	}
	
	
	public List<ScenePackage> Packages = new List<ScenePackage>();
	
	public List<BuildScheme> Schemes = new List<BuildScheme>();
	
	
	public List<string> PackagesAsStrings
	{
		get
		{
			List<string> outlist = new List<string>();
			foreach(ScenePackage p in Packages)
			{
				outlist.Add(p.PackageName);
			}
			return outlist;
		}
	}
	
	public List<string> SchemesAsStrings
	{
		get
		{
			List<string> outlist = new List<string>();
			foreach(BuildScheme b in Schemes)
			{
				outlist.Add(b.SchemeName);
			}
			return outlist;
		}
	}
	
	
}