using UnityEngine;
using UnityEditor;
using System.Collections;
using System.Collections.Generic;
using System.IO;




public class DialogEditor : EditorWindow
{
	public enum ViewType { PackageView, SpreadsheetView }
	
	[MenuItem("Window/Dialog Editor")]
	public static void Init()
	{
		EditorWindow.GetWindow<DialogEditor> ("Dialog Editor");
	}
	
	
	private SystemLanguage currentLanguage = SystemLanguage.English;
	
	private List<SystemLanguage> activeSpreadsheetLanguages = new List<SystemLanguage>();
	
	
	private ViewType viewType = ViewType.PackageView;
	
	
	void OnEnable()
	{
	}
	
	
	
	void OnGUI()
	{
		EditorGUILayout.BeginHorizontal(GUILayout.Height(32));
		
			viewType = (ViewType)EditorGUILayout.EnumPopup(viewType,GUILayout.Width(100));
			
			SystemLanguage newLang = (SystemLanguage)EditorGUILayout.EnumPopup(currentLanguage,GUILayout.Width(100));
			if(newLang!=currentLanguage) {
				EditorGUIUtility.keyboardControl = 0;
			}
			currentLanguage = newLang;
		
			EditorGUILayout.Space();
			
			if(GUILayout.Button ("Refresh", GUILayout.Width(80)))
			{
				DialogEditorUtilities.ReloadPackages();
			}
				
		EditorGUILayout.EndHorizontal();
		
		switch(viewType)
		{
		case ViewType.PackageView:
			DrawPackageView(); break;
		case ViewType.SpreadsheetView:
			DrawSpreadsheetView(); break;
		}
	}
	
	
	
	private DialogPackage curPack = null;
	
	private void DrawPackageView()
	{
		EditorGUILayout.BeginHorizontal();
		
		curPack = DrawDialogPackageSelect(curPack, GUILayout.Width (240));
		
		DrawPackageInfo(curPack);
			
		EditorGUILayout.EndHorizontal();
	}
	
	
	private Vector2 spreadsheetScrollPos;
	private string searchString = "";
	private int searchResults = 0;
	public enum SortType { ID, Character, Package, Text }
	private SortType sortType = SortType.Package;
	private void DrawSpreadsheetView()
	{
		
		EditorGUILayout.BeginHorizontal();
			GUILayout.Label ("Search:",GUILayout.Width(50));
			searchString = EditorGUILayout.TextField(searchString, GUILayout.Width(200));
		EditorGUILayout.EndHorizontal();
		
		if(searchString!="" && searchString!=null)
			GUILayout.Label ("Search Results: "+searchResults.ToString());
		
		EditorGUILayout.Space ();
		
		spreadsheetScrollPos.x = EditorGUILayout.BeginScrollView(new Vector2(spreadsheetScrollPos.x,0),false,false,GUILayout.Height(46)).x;
		EditorGUILayout.BeginHorizontal(GUILayout.Height(24));
		
		GUILayout.Label(" ",GUILayout.Width(4));
		
		if(GUILayout.Toggle(sortType==SortType.ID,"Line ID", EditorStyles.miniButton, GUILayout.Width(122)))
			sortType = SortType.ID;
		
		if(GUILayout.Toggle(sortType==SortType.Package,"Package", EditorStyles.miniButton, GUILayout.Width(122)))
			sortType = SortType.Package;
		
		if(GUILayout.Toggle(sortType==SortType.Character,"Character", EditorStyles.miniButton, GUILayout.Width(102)))
			sortType = SortType.Character;
		
		if(activeSpreadsheetLanguages.Count==0)
			activeSpreadsheetLanguages.Add (Application.systemLanguage);
		
		foreach(SystemLanguage lang in activeSpreadsheetLanguages)
		{
			if(GUILayout.Button("X",GUILayout.Width(26))) {
				activeSpreadsheetLanguages.Remove(lang);
				break;
			}
			GUILayout.Label(lang.ToString(),GUILayout.Width(158));
		}
		
		SystemLanguage newLang = (SystemLanguage)EditorGUILayout.EnumPopup(SystemLanguage.Unknown,GUILayout.Width(80));
		if(newLang!=SystemLanguage.Unknown && !activeSpreadsheetLanguages.Contains(newLang))
		{
			activeSpreadsheetLanguages.Add(newLang);
		}
		
		EditorGUILayout.EndHorizontal();
		EditorGUILayout.EndScrollView();
		
		
		spreadsheetScrollPos = EditorGUILayout.BeginScrollView(spreadsheetScrollPos,false,true);
		
		searchResults = 0;
		
		//TODO: Sort these
		foreach(DialogPackage pack in DialogEditorUtilities.AllPackages.Values)
		{
			foreach(DialogLine line in pack.Lines)
			{
				string search = searchString.ToLower();
				if(searchString==null || searchString=="" ||
					line.LineID.ToLower().Contains(search) || line.Text.ToLower().Contains(search) || pack.Name.ToLower().Contains(search))
				{
					searchResults++;
					DrawSpreadsheetRow(pack.Name,line);
				}
			}
		}
		
		EditorGUILayout.EndScrollView();
	}
	
	
	
	
	// -- PACKAGE VIEW -- //
	
	private Vector2 packSelScrollPos = Vector2.zero;
	private DialogPackage DrawDialogPackageSelect(DialogPackage current, params GUILayoutOption[] options)
	{
		DialogPackage oldcurrent = current;
		
		
		EditorGUILayout.BeginVertical(EditorStyles.objectFieldThumb,options);
		
		
		if(GUILayout.Button("New Package"))
		{
			//TODO: This should be handled as a function in DialogEditorUtilites! (Put this in AddPackage())
			string tempName = "NewPackage";
			int incrementor = 0;
			while(DialogEditorUtilities.AllPackages.ContainsKey(tempName))
			{
				incrementor++;
				tempName = "NewPackage"+incrementor.ToString();
			}
			DialogEditorUtilities.AddPackage(tempName);
		}
		
		
		//Scroll view
		packSelScrollPos = EditorGUILayout.BeginScrollView(packSelScrollPos);
		
		//Draw each package name
		foreach(KeyValuePair<string,DialogPackage> kvp in DialogEditorUtilities.AllPackages)
		{
			DialogPackage dp = kvp.Value;
			
			if(dp==null)	continue;
			
			if(GUILayout.Toggle(current==dp, dp.Name,EditorStyles.miniButton))
			{
				current = dp;
				if(current!=oldcurrent)
				{
					EditorGUIUtility.keyboardControl = 0;
				}
			}
		}
		
		EditorGUILayout.EndScrollView();
		
		EditorGUILayout.EndVertical();
		
		return current;
	}
	
	private Vector2 packInfoScrollPos = Vector2.zero;
	private DialogPackage curPackEditing = null;
	private Texture2D _black;
	public Texture2D black
	{
		get {	
			if(_black==null)
			{
				_black = new Texture2D(1,1);
				_black.SetPixel(0,0,new Color(1,1,1));
				_black.Apply();
			}
			return _black;
		}
	}
	private void DrawPackageInfo(DialogPackage pack, params GUILayoutOption[] options)
	{
		if(curPack==null)	return;
		
		if(curPackEditing==pack && Event.current.type==EventType.keyDown && Event.current.keyCode==KeyCode.Return) {
			curPackEditing = null;
			Event.current.Use();
			return;
		}
		
		
		EditorGUILayout.BeginVertical(options);
		
		
		if(curPackEditing!=pack)
		{
			EditorGUILayout.BeginHorizontal();
			GUILayout.Label(pack!=null ? pack.Name : "",EditorStyles.boldLabel);
			if(GUILayout.Button("Edit",GUILayout.Width(60)))
			{
				curPackEditing = pack;
			}
			EditorGUILayout.EndHorizontal();
		}
		else
		{
			string newName = EditorGUILayout.TextField(pack.name);
			if(newName!=pack.Name)
				DialogEditorUtilities.RenamePackage(pack,newName);
		}
		
		Rect lineRect = GUILayoutUtility.GetRect(400,400,4,4);
		
		GUI.DrawTextureWithTexCoords(lineRect,black,new Rect(0,0,1f,1f));
		
		if(pack!=null)
		{
			EditorGUILayout.BeginHorizontal();
			
			if( GUILayout.Button ("Add Line", GUILayout.Width(100)) )
			{
				//TODO: This should be handled as a function in DialogEditorUtilites!
				string tempName = "New_Line";
				int incrementor = 0;
				while(DialogEditorUtilities.AllLines.ContainsKey(tempName))
				{
					incrementor++;
					tempName = "New_Line_" + incrementor.ToString();
				}
				
				pack.Lines.Add(new DialogLine(tempName));
				
				DialogEditorUtilities.ReloadPackages();
			}
			if( GUILayout.Button ("Export", GUILayout.Width(100)) )
			{
				System.Xml.XmlDocument doc = DialogXML.ExportDialogPackage(pack);
				
				string savePath = "DialogXML";
				
				if(!Directory.Exists(Application.dataPath + "/../" + savePath)) {
					Directory.CreateDirectory(Application.dataPath + "/../" + savePath);
				}
				
				doc.Save(savePath+"/"+pack.Name+".xml");
			}
			
			
		
			EditorGUILayout.EndHorizontal();
			
			packInfoScrollPos = EditorGUILayout.BeginScrollView(packInfoScrollPos,false,true);
			
			for(int i=0;i<pack.Lines.Count;i++)
			{
				DrawLineInfo(pack.Lines[i]);
			}
			
			EditorGUILayout.EndScrollView();
		}
		
		
		
		EditorGUILayout.EndVertical();
		
		if(GUI.changed)
			EditorUtility.SetDirty(pack);
	}
	
	
	DialogLine curLineEditing = null;
	string curLineEditingText = "";
	private void DrawLineInfo(DialogLine line)
	{
		//TODO: Also see if the keyboard control has CHANGED.
		if( curLineEditing==line && (Event.current.type==EventType.keyDown && Event.current.keyCode==KeyCode.Return) )
		{
			//TODO: Consider making this only chack for dupes in THIS PACKAGE, and making Dialog calls specify the package as well ("Package Scope")
			line.LineID = curLineEditingText;
			while(DialogEditorUtilities.AllLines.ContainsKey(line.LineID) && DialogEditorUtilities.AllLines[line.LineID]!=line)
				line.LineID += "_DUPE";
			
			curLineEditing = null;
			curLineEditingText = "";
			Event.current.Use();
			return;
		}
		
		EditorGUILayout.BeginVertical(EditorStyles.objectFieldThumb,GUILayout.MinWidth(500));
		
		//TODO: Allow a list of "Active languages" that are greyed out here if they are not completed
		
		string languagesActive = "";
		//Compile a string of all languages that are active, and cull the languages for this line that aren't filled in
		for(int i=0;i<line.TranslationCount;i++)
		{
			if(line[i].Language==currentLanguage || (line[i].Text!=null && line[i].Text!="") || (line[i].AudioResourcePath!=null && line[i].AudioResourcePath!="") )
			{
				if(i!=0)
					languagesActive += " / ";
				languagesActive += line[i].Language;
			}
			else
			{
				line.RemoveTranslation(i);
				i--;
			}
		}
		
		//--Line ID Field--//
		if(curLineEditing!=line)
		{
			EditorGUILayout.BeginHorizontal();
			GUILayout.Label(line.LineID);
			GUILayout.Label (languagesActive);//, GUILayout.Width(200));
			if(GUILayout.Button("Suggest",GUILayout.Width(60)))
			{
				line.LineID = curPack.Name + "_" + line.Character + "_" + curPack.Lines.IndexOf(line).ToString("D4");
			}
			if(GUILayout.Button("Edit",GUILayout.Width(60)))
			{
				curLineEditing = line;
				curLineEditingText = line.LineID;
			}
			EditorGUILayout.EndHorizontal();
		}
		else
		{
			curLineEditingText = EditorGUILayout.TextField(curLineEditingText);
		}
		
		//--Character Field--//
		line.Character = EditorGUILayout.TextField("Character",line.Character);	//TODO: Make this a dropdown list with all of the character names in it?
		
		//--Text Field--//
		GUILayout.Label("Text:");
		line[currentLanguage].Text = EditorGUILayout.TextArea(line[currentLanguage].Text,GUILayout.Height (50));
		
		//--Audio Clip Field--//
		DrawAudioClipReferenceEntry(line,currentLanguage,"Audio Clip");
		
		EditorGUILayout.EndVertical();
	}
	
	
	public static void DrawAudioClipReferenceEntry(DialogLine line, SystemLanguage language, string label = "", params GUILayoutOption[] options)
	{
		//TODO: Try changing "Contains" to "EndsWith"?
		//TODO: Should this and the next hunk be switched?
		//If the current loaded clip is null or the current resource path does not contain the clip name (pointing to the wrong place), re-load.
		if( line.Clip==null || !line[language].AudioResourcePath.Contains(line.Clip.name) || line.LoadedLanguage!=language )
		{
			line.TryLoad(language);
		}
		
		//Actual field
		AudioClip clip = null;
		if(label!="")
			clip = (AudioClip)EditorGUILayout.ObjectField("Audio Clip",line.Clip,typeof(AudioClip),false,options);
		else
			clip = (AudioClip)EditorGUILayout.ObjectField(line.Clip,typeof(AudioClip),false,options);
		
		//If the clip in the field has changed, Update the clip resource string
		//TODO: Move all of this logic to editor-only functions in DialogLine, so that we don't have to deal with this here
		if(line.Clip!=clip)
		{
			string pathToThisClip = AssetDatabase.GetAssetPath(clip);
			Debug.Log (pathToThisClip);
			if(pathToThisClip.Contains("/Resources/DialogClips/"+language+"/"))
			{
				pathToThisClip = pathToThisClip.Remove(0,pathToThisClip.LastIndexOf(language+"/") + (language+"/").Length);
				pathToThisClip = pathToThisClip.Remove(pathToThisClip.LastIndexOf("."),pathToThisClip.Length-pathToThisClip.LastIndexOf("."));
				line[language].AudioResourcePath = pathToThisClip;
			}
			else
			{
				Debug.LogWarning ("Clip is not under '/Resources/DialogClips/"+language+"/'.");
				line[language].AudioResourcePath = "";
			}
		}
	}
	
	
	// -- SPREADSHEET VIEW -- //
	
	private void DrawSpreadsheetRow(string packageName, DialogLine line)
	{
		EditorGUILayout.BeginHorizontal(EditorStyles.objectFieldThumb,GUILayout.Height(60));
		
			line.LineID = EditorGUILayout.TextField(line.LineID, GUILayout.Width(120));
			if(GUILayout.Button (packageName, GUILayout.Width(120)))
			{
				viewType = ViewType.PackageView;
				curPack = DialogEditorUtilities.AllPackages[packageName];
			}
			line.Character = EditorGUILayout.TextField(line.Character, GUILayout.Width(100));
			
			foreach(SystemLanguage lang in activeSpreadsheetLanguages)
			{
				EditorGUILayout.BeginVertical(EditorStyles.objectFieldThumb,GUILayout.Width(180));
					
					line[lang].Text = EditorGUILayout.TextArea(line[lang].Text, GUILayout.Width(180),GUILayout.Height(40));
					DrawAudioClipReferenceEntry(line,lang,"",GUILayout.Width(140));
				
				EditorGUILayout.EndVertical();
			}
		GUILayout.Label (" ", GUILayout.Width(80));
		
		EditorGUILayout.EndHorizontal();
	}
	
	
	
	
}
