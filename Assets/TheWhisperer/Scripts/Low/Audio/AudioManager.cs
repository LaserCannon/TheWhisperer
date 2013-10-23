using UnityEngine;
using System.Collections;
using System.Collections.Generic;



public enum AudioType { None, SFX, Music, Voice }

/*public enum AudioParameterType { None, Maximum, Multiply, }


public class AudioParameter
{
	
	private AudioParameterType type = AudioParameterType.None;
	private string id = "";
	private float value = 1f;
	private float timeLimit = 60f;
	
	public AudioParameterType Type { get { return type; } }
	public string ID { get { return id; } }
	public float Value { get { return value; } }
	public float TimeLimit { get { return timeLimit; } }
	
	public static AudioParameter Max(float val, string id, float timeLimit = 60f)
	{
		AudioParameter prm = new AudioParameter();
		
		prm.type = AudioParameterType.Maximum;
		prm.value = Mathf.Clamp01(val);
		prm.id = id;
		prm.timeLimit = timeLimit;
		
		return prm;
	}
	
	public static AudioParameter Multiply(float val, string id, float timeLimit = 60f)
	{
		AudioParameter prm = new AudioParameter();
		
		prm.type = AudioParameterType.Multiply;
		prm.value = Mathf.Clamp01(val);
		prm.id = id;
		prm.timeLimit = timeLimit;
		
		return prm;
	}
	
}*/


[System.Serializable]
public class AudioManagerSource
{
	private AudioSource Source;
	
	
	private float user_volume = 1f;
	private float fade_volume = 1f;
	private float cachedMasterVolume = 1f;
	
	private bool claimed = false;
	
	
	private int fade_id = 0;
	
	
	public float MasterVolume
	{
		get { return AudioManager.main.VolumeSFX; }
	}
	
	public float UserVolume
	{
		get { return user_volume; }
		set { user_volume = value; UpdateVolume(); }
	}
	
	public string ClipName
	{
		get {
			if(Source.clip!=null)
				return Source.clip.name;
			return "";
		}
	}
	
	public bool Claimed
	{
		get { return claimed; }
	}
	
	
	public AudioManagerSource(GameObject go)
	{
		Source = go.AddComponent<AudioSource>();
	}
	
	
	public void Play(AudioClip clip)
	{
		if(Source.clip!=clip)
		{
			if(Source.isPlaying)
				Source.Stop();
			if(clip!=null)
			{
				Source.clip = clip;
				Source.Play();
				claimed = true;
			}
		}
			
		UpdateVolume();
	}
	
	public void PlayOnce(AudioClip clip)
	{
		UpdateVolume();
		
		if(clip!=null)
		{
			Source.PlayOneShot(clip);
		}
	}
	
	public void Stop()
	{
		if(Source.isPlaying)
			Source.Stop();
		Source.clip = null;
		claimed = false;
	}
	
	public void UpdateVolume()
	{
		Source.volume = fade_volume * user_volume * cachedMasterVolume;
		
		if(Source.clip!=null)
		{
			if(Source.volume==0f && Source.isPlaying)
				Source.Stop();
			else if(Source.volume!=0f && !Source.isPlaying && Source.loop)
				Source.Play();
		}
	}
	
	
	public Coroutine FadeOut(float speed = 2.0f)
	{
		return FadeTo(0f, speed);
	}
	
	public Coroutine FadeIn(float speed = 2.0f)
	{
		return FadeTo(1f, speed);
	}
	
	
	public Coroutine FadeTo (float target, float speed)
	{
		return AudioManager.main.StartCoroutine(FadeTo_internal(target,speed));
	}
	private IEnumerator FadeTo_internal(float target, float speed/*, params AudioParameter[] parameters*/)
	{
		int internal_id = ++fade_id;
		
		while(internal_id==fade_id && fade_volume!=target)
		{
			fade_volume = Mathf.MoveTowards(fade_volume,target,Time.deltaTime*speed);
			
			UpdateVolume();
			
			yield return null;
		}
	}
	
}




public class AudioManager : MonoBehaviour
{
	
	private static AudioManager _main;
	public static AudioManager main
	{
		get
		{
			if(_main==null) {
				GameObject go = new GameObject("_AudioManager");
				_main = go.AddComponent<AudioManager>();
			}
			return _main;
		}
	}
	
	
	
	private Dictionary<string,Dictionary<string,AudioClip>> sfxDB = new Dictionary<string, Dictionary<string, AudioClip>>();
	
	private Dictionary<string,Dictionary<string,AudioClip>> musicDB = new Dictionary<string, Dictionary<string, AudioClip>>();
	
	
	private AudioManagerSource sfxOnceSource;
	private List<AudioManagerSource> sfxLoopSource = new List<AudioManagerSource>();
	private AudioManagerSource musicSource;
	private AudioManagerSource voiceSource;
	
	private bool isInit = false;
	
	
	
	//TODO: Take these into account with "MasterVolume" (which isnt yet updated)
	public float VolumeSFX = 1f;
	public float VolumeMusic = 1f;
	public float VolumeSpeech = 1f;
	
	
	
	
	private static int NUM_CHANNELS = 5;
	
	
	void Awake()
	{
		InitSources();
	}
	
	
	
	// -- Initialization
	
	public void InitSources()
	{
		if(!isInit)
		{
			//TODO: These sources should be on objects other than this one
			sfxOnceSource = new AudioManagerSource(gameObject);
			
			for(int i=0;i<NUM_CHANNELS;i++)
			{
				sfxLoopSource.Add(new AudioManagerSource(gameObject));
			}
			
			musicSource = new AudioManagerSource(gameObject);
			
			voiceSource = new AudioManagerSource(gameObject);
			
			isInit = true;
		}
	}
	
	
	
	
	// -- Utility
	
	private AudioManagerSource GetSFXSourcePlayingSound(string sound)
	{
		foreach(AudioManagerSource source in sfxLoopSource)
		{
			if(source.Claimed)
			{
				if(source.ClipName==name)
				{
					return source;
				}
			}
		}
		return null;
	}
	
	private void LoadSounds (string folderName, string soundType, Dictionary<string,Dictionary<string,AudioClip>> database)
	{
		if(!database.ContainsKey(folderName))
		{
			AudioClip[] clips = (AudioClip[])Resources.LoadAll (soundType+"/"+folderName,typeof(AudioClip));
			
			if(clips!=null && clips.Length>0)
			{
				database.Add(folderName,new Dictionary<string,AudioClip>());
				
				foreach(AudioClip clip in clips)
				{
					database[folderName].Add(clip.name,clip);
				}
			}
			else
			{
				Debug.LogWarning("Sound folder '"+soundType+"/"+folderName+"' was not found or is empty.");
			}
		}
		else
		{
			Debug.LogWarning("Sound folder '"+soundType+"/"+folderName+"' is already loaded.");
		}
	}
	
	
	private void UnloadSounds (string folderName, Dictionary<string,Dictionary<string,AudioClip>> database)
	{
		if(database.ContainsKey(folderName))
		{
			foreach(AudioClip clip in database[folderName].Values)
			{
				Resources.UnloadAsset(clip);
			}
			
			database[folderName].Clear();
			
			database.Remove(folderName);
		}
		else
		{
			Debug.LogWarning("Sound folder '"+folderName+"' is not loaded.");
		}
	}
	
	
	
	// -- Loading/Unloading
	
	public void LoadSFX (string folderName)
	{
		LoadSounds (folderName, "SFX", sfxDB);
	}
	
	public void LoadMusic (string folderName)
	{
		LoadSounds (folderName, "Music", musicDB);
	}
	
	
	public void UnloadSFX (string folderName)
	{
		UnloadSounds (folderName,sfxDB);
	}
	
	public void UnloadMusic (string folderName)
	{
		UnloadSounds (folderName,musicDB);
	}
	
	
	
	// -- Other
	
	public void UpdateAllVolumes()
	{
		sfxOnceSource.UpdateVolume();
		foreach(AudioManagerSource source in sfxLoopSource)
			source.UpdateVolume();
		musicSource.UpdateVolume();
	}
	
	
	
	
	
	
	// -- SFX -- //
	
	// - One-Shot
	
	public AudioClip GetSFX(string folder, string name)
	{
		if(sfxDB.ContainsKey(folder))
		{
			if(sfxDB[folder].ContainsKey(name))
			{
				return sfxDB[folder][name];
			}
		}
		return null;
	}
	
	public void PlaySFXOnce(AudioClip clip)
	{
		if(clip!=null)
		{
			sfxOnceSource.PlayOnce(clip);
		}
	}
	
	public void PlaySFXOnce(string folder, string name)
	{
		AudioClip clip = GetSFX (folder,name);
		PlaySFXOnce(clip);
	}
	
	
	
	// - Looping
	
	public void PlaySFXLooping(string folder, string name)
	{
		AudioClip clip = GetSFX(folder,name);
		PlaySFXLooping(clip);
	}
	
	public void PlaySFXLooping(AudioClip clip)
	{
		if(clip==null)
		{
			return;
		}
		
		//Now find a channel to play the looping sound
		foreach(AudioManagerSource source in sfxLoopSource)
		{
			if(!source.Claimed)
			{
				source.Play (clip);
				return;
			}
		}
		
		AudioManagerSource newsrc = new AudioManagerSource(gameObject);
		sfxLoopSource.Add(newsrc);
		newsrc.Play(clip);
	}
	
	public void StopSFX(string name)
	{
		AudioManagerSource source = GetSFXSourcePlayingSound(name);
		
		if(source!=null)
		{
			source.Stop();
		}
	}
	
	
	public void FadeSFX(string name, float to, float speed = 2f)
	{
		AudioManagerSource source = GetSFXSourcePlayingSound(name);
		if(source!=null)
		{
			source.FadeTo(to,speed);
		}
	}
	
	
	
	// -- MUSIC -- //
		
	public AudioClip GetMusic(string folder, string name)
	{
		//TODO: Optimize (take out the dictionary checks?)
		if(musicDB.ContainsKey(folder))
		{
			if(musicDB[folder].ContainsKey(name))
			{
				return musicDB[folder][name];
			}
		}
		return null;
	}
	
	public void PlayMusic(string folder, string name)
	{
		AudioClip clip = GetMusic(folder,name);
		
		if(clip!=null)
		{
			musicSource.Play(clip);
		}
	}
	
	public void FadeMusic(float to, float speed = 2f)
	{
		musicSource.FadeTo(to,speed);
	}
	
	
	
	
	// -- VOICE --//
	
	//TODO: Should there be more than one voice channel?
	public void PlayVoice(AudioClip clip)
	{
		voiceSource.Play(clip);
	}
	
	public void CutOffVoice(float speed = 4f)
	{
		voiceSource.FadeOut(speed);
	}
}
