using UnityEngine;
using System.Collections;

#if UNITY_EDITOR
using UnityEditor;
#endif

public class SingletonBehaviour : MonoBehaviour
{
	protected static T getmain<T>() where T : SingletonBehaviour
	{
		SingletonBehaviour retmain = GameObject.FindObjectOfType<T>();

#if UNITY_EDITOR
		if(retmain==null) {
			GameObject go = new GameObject(typeof(T).ToString()); 
			SingletonBehaviour singleton = go.AddComponent<T>();
			retmain = singleton;
		}
#endif
		return (T)retmain;
	}
}
