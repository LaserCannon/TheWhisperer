using UnityEngine;
using System.Collections;

#if UNITY_EDITOR
using UnityEditor;
#endif

public class SingletonBehaviour : MonoBehaviour
{
	protected static T getmain<T>(bool hide = true) where T : SingletonBehaviour
	{
		SingletonBehaviour retmain = GameObject.FindObjectOfType<T>();

#if UNITY_EDITOR
		if(retmain==null) {
			GameObject go = new GameObject(typeof(T).ToString()); 
			SingletonBehaviour singleton = go.AddComponent<T>();
			retmain = singleton;

			if(hide)
			{
				singleton.Hide();
			}
			else
			{
				singleton.Reveal();
			}
		}
#endif
		return (T)retmain;
	}

	protected void Reveal()
	{
		gameObject.hideFlags = HideFlags.NotEditable;
	}

	protected void Hide()
	{
		gameObject.hideFlags = HideFlags.HideInHierarchy | HideFlags.NotEditable;
	}
}
