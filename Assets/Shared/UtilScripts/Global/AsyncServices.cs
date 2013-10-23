using UnityEngine;
using System.Collections;


//Async services will run coroutines for scripts that dont have objects attatched to them, such as
//	static scripts/functions. Simply call AsyncServices.RunCoroutine([coroutine]).

public class AsyncServices : MonoBehaviour
{
	public delegate void CallbackDelegate();
	
	private static AsyncServices _main;
	private static AsyncServices main
	{
		get {
			if(_main==null) {
				GameObject go = new GameObject("_AsyncServices");
				_main = go.AddComponent<AsyncServices>();
			}
			return _main;
		}
	}
	
	void Awake()
	{
		_main = this;
		DontDestroyOnLoad(gameObject);
	}
	
	void OnLevelWasLoaded(int lvl)
	{
		DontDestroyOnLoad(gameObject);
	}
	
	public static Coroutine RunCoroutine(IEnumerator coroutine, CallbackDelegate callback = null)
	{
		return main.StartCoroutine(main.Internal_RunCoroutine(coroutine,callback));
	}
	
	private IEnumerator Internal_RunCoroutine(IEnumerator coroutine, CallbackDelegate callback)
	{
		//Run the coroutine, then call back the given function at the end
		if(coroutine!=null)
			yield return StartCoroutine(coroutine);
		if(callback!=null)
			callback();
	}
	
	
	
}
