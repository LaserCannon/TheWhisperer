using UnityEngine;
using System.Collections;

public class LevelLoader : MonoBehaviour {
	
	//public string LevelToLoad = "";
	//public string LastLevel = "";
	
	private static float timeLastLoaded = 0f;
	
	private static LevelLoader _main;
	public static LevelLoader main
	{
		get
		{
			if(_main==null)
			{
				GameObject go = new GameObject("LevelLoader");
				_main = go.AddComponent<LevelLoader>();
			}
			return _main;
		}
	}
	
	public void Awake()
	{
		_main = this;
	}
	
	
	public static void LoadLevel(string level, string spawnLocation = "")
	{
		main.StartCoroutine(main.LoadLevelInternal(level,spawnLocation));
	}
	
	public static void LoadLevel(int level, string spawnLocation = "")
	{
		main.StartCoroutine(main.LoadLevelInternal(level,spawnLocation));
	}
	
	/*public static void LoadNext()
	{
		LoadLevel(SceneManager.NextLevel);
	}
	
	public static void LoadLast()
	{
		LoadLevel(SceneManager.LastLevel);
	}*/
	
	public static void Replay()
	{
		main.StartCoroutine(main.LoadLevelInternal(Application.loadedLevelName));
	}
	
	IEnumerator LoadLevelInternal(string level, string spawnLocation = "")
	{
		if(Time.time-timeLastLoaded>1f)
		{
			timeLastLoaded = Time.time;
			DontDestroyOnLoad(gameObject);
			
			if(PlayerAgent.main!=null)
				PlayerAgent.main.Enabled = false;
			
			yield return ColorCard.FadeToBlack(0.5f);
			
			Application.LoadLevel(level);
			
			yield return null;
			
			if(PlayerAgent.main!=null)
			{
				if(spawnLocation!="")
					SpawnLocator.SpawnCharacterAtLocator(PlayerAgent.main,spawnLocation);
				
				PlayerAgent.main.Enabled = true;
			}
			
			yield return ColorCard.FadeToPicture(0.5f);
			
			Destroy(this,1.0f);
		}
	}
	
	IEnumerator LoadLevelInternal(int levelnum, string spawnLocation = "")
	{
		if(Time.time-timeLastLoaded>1f)
		{
			timeLastLoaded = Time.time;
			DontDestroyOnLoad(gameObject);
			
			if(PlayerAgent.main!=null)
				PlayerAgent.main.Enabled = false;
			
			yield return ColorCard.FadeToBlack(0.5f);
			
			Application.LoadLevel(levelnum);
			
			yield return null;
			
			if(PlayerAgent.main!=null)
			{
				if(spawnLocation!="")
					SpawnLocator.SpawnCharacterAtLocator(PlayerAgent.main,spawnLocation);
				
				PlayerAgent.main.Enabled = true;
			}
			
			yield return ColorCard.FadeToPicture(0.5f);
			
			Destroy(this,1.0f);
		}
	}
}
