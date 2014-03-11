using UnityEngine;
using System.Collections;
using System.IO;

#if UNITY_EDITOR
using UnityEditor;
#endif


public static class ManagedAssets
{
	
#if UNITY_EDITOR
	private static string AssetsPath
	{
		get { return "Assets/"+PlayerSettings.productName+"/Resources/ManagedAssets"; }
	}
	
	private static string AbsPath
	{
		get { return Application.dataPath + "/" + AssetsPath; }
	}
	
	static ManagedAssets()
	{
		if(!Directory.Exists(AbsPath)) {
			Directory.CreateDirectory(AssetsPath);
		}
	}
	public static void CreateAsset(Object obj, string name)
	{
		if(obj==null)Debug.Log ("problem");
		AssetDatabase.CreateAsset(obj, AssetsPath + "/" + name);
	}
#endif
	
	
	public static Object Load(string name, System.Type type)
	{
		Object obj = Resources.Load("ManagedAssets/"+name, type);
		return obj;
	}
	
}
