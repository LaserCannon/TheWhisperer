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
	
	
	public delegate void MessageDelegate();
	public static event MessageDelegate LevelLoaded = null;
	
	
	public void Awake()
	{
		_main = this;
	}
	
	
	public static void LoadLevel(string level, string spawnLocation = "")
	{
		main.StartCoroutine(main.LoadLevelInternal(level,spawnLocation));
	}
	
	public static void LoadLevel(string level, Vector3 spawnLocation)
	{
		main.StartCoroutine(main.LoadLevelInternal(level,spawnLocation));
	}
	
	public static void LoadLevel(int level, string spawnLocation = "")
	{
		main.StartCoroutine(main.LoadLevelInternal(level,spawnLocation));
	}
	
	public static void LoadBattleLevel(string level)
	{
		main.StartCoroutine(main.LoadBattleLevelInternal(level));
	}
	
	/*public static void LoadNext()
	{
		LoadLevel(BuildManager.NextLevel);
	}
	
	public static void LoadLast()
	{
		LoadLevel(BuildManager.LastLevel);
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
			
			if(LevelLoaded!=null)
			{
				LevelLoaded();
			}

			if(spawnLocation!="")
				SpawnLocator.SpawnCharacterAtLocator(PlayerAgent.main,spawnLocation);
			
			PlayerAgent.main.Enabled = true;
			
			yield return ColorCard.FadeToPicture(0.5f);
			
			Destroy(gameObject,1.0f);
		}
	}
	
	
	IEnumerator LoadLevelInternal(string level, Vector3 spawnLocation)
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

			SpawnLocator.SpawnCharacterAtPosition(PlayerAgent.main,spawnLocation);
			
			PlayerAgent.main.Enabled = true;
			
			if(LevelLoaded!=null)
			{
				LevelLoaded();
			}
			
			yield return ColorCard.FadeToPicture(0.5f);
			
			Destroy(gameObject,1.0f);
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

			if(spawnLocation!="")
				SpawnLocator.SpawnCharacterAtLocator(PlayerAgent.main,spawnLocation);
			
			PlayerAgent.main.Enabled = true;
			
			if(LevelLoaded!=null)
			{
				LevelLoaded();
			}
			
			yield return ColorCard.FadeToPicture(0.5f);
			
			Destroy(gameObject,1.0f);
		}
	}
	
	IEnumerator LoadBattleLevelInternal(string level)
	{
		if(Time.time-timeLastLoaded>1f)
		{
			timeLastLoaded = Time.time;
			DontDestroyOnLoad(gameObject);
			
			if(PlayerAgent.main!=null)
				PlayerAgent.main.Enabled = false;
			
			yield return ColorCard.FadeToColor(Color.white,0.1f);
			
			yield return new WaitForSeconds(0.25f);
			
			yield return ColorCard.FadeToBlack(0.5f);
			
			Application.LoadLevel(level);
			
			yield return null;
			
			if(LevelLoaded!=null)
			{
				LevelLoaded();
			}
			
			yield return new WaitForSeconds(0.25f);
			
			yield return ColorCard.FadeToPicture(0.5f);
			
			Destroy (gameObject,1.0f);
		}
	}
}
