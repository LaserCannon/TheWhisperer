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
	
	public List<Object> Scenes = new List<Object>();
}

[System.Serializable]
public class BuildScheme
{
	public string SchemeName = "";
	public string StartingScene = "";
	public List<string> Packages = new List<string>();

#if UNITY_EDITOR
	public List<string> SerializedLevelPaths
	{
		get  
		{
			List<string> paths = new List<string>();
			
			foreach(ScenePackage pack in BuildManager.main.Packages)
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
#endif
}



public class BuildManager : SingletonAsset
{
	private static BuildManager _main;
	public static BuildManager main
	{ 
		get
		{
			if(_main==null)
				_main = getmain<BuildManager>();
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