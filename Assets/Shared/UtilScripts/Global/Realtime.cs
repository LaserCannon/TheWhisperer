using UnityEngine;
using System.Collections;

public class Realtime : MonoBehaviour {

	private static Realtime _main;
	
	public static Realtime main
	{
		get {
			if(_main==null)
			{
				GameObject go = new GameObject("Realtime");
				_main = go.AddComponent<Realtime>();
			}
			return _main;
		}
	}
	
	
	private static float lastFrameRealtime = 0f;
	
	public static float deltaTime
	{
		get {
			if(_main==null)	Init();
			return Time.realtimeSinceStartup - lastFrameRealtime;
		}
	}
	
	
	public static void Init()
	{
		if(main==null)
			lastFrameRealtime = Time.realtimeSinceStartup - Time.deltaTime;
	}
	
	public static IEnumerator WaitForSeconds(float seconds)
	{
		float st = Time.realtimeSinceStartup;
		
		while(Time.realtimeSinceStartup - st < seconds)
			yield return null;
	}
	
	void LateUpdate()
	{
		lastFrameRealtime = Time.realtimeSinceStartup;
	}
}
