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


public static class Dialog
{
	//--- Currently loaded lines
	private static Dictionary<string, DialogLine> lines = new Dictionary<string, DialogLine>();
	
	private static Dictionary<string, DialogPackage> packages = new Dictionary<string, DialogPackage>();
	
	private static DialogBox curDialogBox;
	
	public static int TotalLineCount { get { return lines.Count; } }
	public static int TotalPackageCount { get { return packages.Count; } }
	
	
	static Dialog()
	{
		Multitouch.OnTap += OnTap;
	}
	
	
	//NOTE: I don't think we need this TODO anymore...
	//TODO: Create dialog queue! that way, scripting can pass a "dialog sequence", and when a dialog is skipped, we simply play the next one
	
	//TODO: Create a tracker for how much dialog data is loaded at any given time
	
	//TODO: Make two levels of "loading": text only, and audio
	
	public static bool LoadPackage(string packagePath, bool async = true)
	{
	//	Debug.Log ("Loading Package... "+packagePath);
		
		//Load the package prefab
		DialogPackage pack = (DialogPackage)Resources.Load(packagePath,typeof(DialogPackage));
		if(pack==null)	{
			Debug.LogWarning ("Package '"+packagePath+"' not found!");return false;}
		
		//Make sure we don't already have this package loaded...
		if(packages.ContainsKey(pack.Name))	{Debug.LogWarning ("Package '"+pack.Name+"' is already loaded."); return true; }
		
		//Add the package to the list of packages
		packages.Add(pack.Name,pack);
		
		//Add all of the lines from the package to our dictionary of all loaded lines
		for(int i=0;i<pack.Lines.Count;i++)
		{
			lines.Add(pack.Lines[i].LineID,pack.Lines[i]);
		}
		
		//Load the actual clips
		if(async)	AsyncServices.RunCoroutine(pack.LoadAsync(),OnPackageLoaded);
		else 		{ pack.Load(); OnPackageLoaded(); }
		
		return true;
	}
	
	public static bool LoadPackageByName(string packageName, bool async = true)
	{
		return LoadPackage("DialogPackages/"+packageName, async);
	}
	
	
	public static bool UnloadPackageByName(string packageName, bool async = true)
	{
		if(!packages.ContainsKey(packageName))	return false;
		
		DialogPackage pack = packages[packageName];
		packages.Remove(packageName);
		
		if(async)	AsyncServices.RunCoroutine(pack.UnloadAsync(),OnPackageUnloaded);
		else 		{ pack.Unload(); OnPackageUnloaded(); }
		
		for(int i=0;i<pack.Lines.Count;i++)
		{
			lines.Remove(pack.Lines[i].LineID);
		}
		
		//Runtime is currently complaining about this
	//	Resources.UnloadAsset(pack);
		
		return true;
	}
	
	public static void OnPackageLoaded()
	{
	}
	
	public static void OnPackageUnloaded()
	{
	}
	
	
	public static void OnTap(Vector2 dummyPos)
	{
		if(curDialogBox!=null)	SkipDialog();
	}
	
	
	public static bool PlayDialog(string dialogLine, bool skippable = true, Texture image = null)
	{
		if(curDialogBox!=null)	SkipDialog();
		
		DialogLine line = null;
		if(lines.ContainsKey(dialogLine))
			line = lines[dialogLine];
		else
			line = DialogLine.DialogLineWithText(dialogLine);
		
		curDialogBox = DialogBox.NewDialogBox(DialogBoxStyle.kSubtitle,line.Text);
		curDialogBox.transform.position = CameraManager.UICamera.ScreenToWorldPoint(new Vector3(Screen.width/2f,Screen.width/8f,5f));
		
		AudioManager.main.PlayVoice(line.Clip);
		
		return true;
	}
	
	public static bool SkipDialog()
	{
		if(curDialogBox !=null)
		{
			DialogBox.EndDialog(curDialogBox);
			return true;
		}
		return false;
	}
	
	public static IEnumerator WaitForDialog()
	{
		while(curDialogBox!=null)
		{
			yield return null;
		}
	}
	
	
	//Utility functions
	
	public static string GetStringForKey(string key)
	{
		if(!lines.ContainsKey(key))
			return "";
		return lines[key].Text;
	}
	
}
