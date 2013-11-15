using UnityEngine;
using System.Collections;

#if UNITY_EDITOR
using UnityEditor;
#endif

public class SingletonAsset : ScriptableObject
{
	protected static T getmain<T>() where T : SingletonAsset
	{
		SingletonAsset retmain = null;
		Object obj = ManagedAssets.Load(typeof(T).ToString(),typeof(T));
		retmain = (SingletonAsset)obj;
			
#if UNITY_EDITOR
		if(retmain==null) {
			SingletonAsset singleton = ScriptableObject.CreateInstance<T>();
			ManagedAssets.CreateAsset(singleton, typeof(T).ToString() + ".asset");
			retmain = singleton;
			
			AssetDatabase.Refresh();
		}
#endif
		return (T)retmain;
	}
}
