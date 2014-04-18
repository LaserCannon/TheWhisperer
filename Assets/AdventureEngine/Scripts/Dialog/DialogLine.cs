using UnityEngine;
using System.Collections;
using System.Collections.Generic;



[System.Serializable]
public class LineTranslation
{
	public SystemLanguage Language = SystemLanguage.English;
	public string Text = "";
	public string AudioResourcePath = "";
	
	public string FullAudioResourcePath
	{
		get {
			return "DialogClips/" + Application.systemLanguage + "/" + AudioResourcePath;
		}
	}
	
	public LineTranslation(SystemLanguage lang, string txt, string clipPath)
	{
		Language = lang;
		Text = txt;
		AudioResourcePath = clipPath;
	}
}


[System.Serializable]
public class DialogLine
{
	public string LineID = "";
	
	public string Character = "";
	
	private AudioClip clip = null;
	public AudioClip Clip { get { return clip; } }
	
	
	private bool loaded = false;
	public bool Loaded { get { return loaded; } }
	
	private SystemLanguage loadedLanguage = SystemLanguage.Unknown;
	public SystemLanguage LoadedLanguage { get { return loadedLanguage; } }
	
	[SerializeField]
	private List<LineTranslation> TranslatedText = new List<LineTranslation>();
	
	public string Text
	{
		get {
			return this[Application.systemLanguage].Text;
		}
	}
	
	public string AudioResourcePath
	{
		get {
			return this[Application.systemLanguage].AudioResourcePath;
		}
	}
	
	public string FullAudioResourcePath
	{
		get {
			return this[Application.systemLanguage].FullAudioResourcePath;
		}
	}
	
	//TODO: This may not be the best solution. We dont want this editable at runtime...
	public LineTranslation this[SystemLanguage lang]
	{
		get
		{
			for(int i=0;i<TranslatedText.Count;i++) {
				if(TranslatedText[i].Language == lang)
					return TranslatedText[i];
			} 
			
			LineTranslation newTranslation = new LineTranslation(lang,"","");
			TranslatedText.Add(newTranslation);
			
			return newTranslation;
		}
	}
	
	public LineTranslation this[int index]
	{
		get
		{
			return TranslatedText[index];
		}
	}
	
	public int TranslationCount
	{
		get
		{
			return TranslatedText.Count;
		}
	}
	
	public void RemoveTranslation(int i)
	{
		TranslatedText.RemoveAt(i);
	}
	
	
	
	public DialogLine(string id)
	{
		LineID = id;
	}
	
	//TODO: Write functions to get the most appropriate AVAILABLE language for the given language
	public bool Load(SystemLanguage lang = SystemLanguage.Unknown)
	{
		loadedLanguage = lang==SystemLanguage.Unknown ? Application.systemLanguage : lang;
		
		if(this[lang].AudioResourcePath!="")
		{
			if(!TryLoad(loadedLanguage))
				Debug.LogWarning ("Warning! Dialog Clip at '" + this[loadedLanguage].FullAudioResourcePath + "' with ID '" +LineID + "' was not found in Resources/.");
		}
		
		return loaded;
	}
	
	public bool TryLoad(SystemLanguage lang = SystemLanguage.Unknown)
	{
		loadedLanguage = lang==SystemLanguage.Unknown ? Application.systemLanguage : lang;
		
		clip = (AudioClip)Resources.Load (this[loadedLanguage].FullAudioResourcePath, typeof(AudioClip));
		
		loaded = clip!=null;
		
		return loaded;
	}
	
	public void Unload()
	{
		if(clip!=null)
			Resources.UnloadAsset(clip);
		loaded = false;
	}
	
	public static DialogLine DialogLineWithText(string text)
	{
		DialogLine dl = new DialogLine("_DEFAULT_");
		dl[Application.systemLanguage].Text = text;
		
		return dl;
	}
}
