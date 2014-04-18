using UnityEngine;
using System.Collections;
using System.Collections.Generic;



public static class Dialog
{
	//--- Currently loaded lines
	private static Dictionary<string, DialogLine> lines = new Dictionary<string, DialogLine>();
	
	private static Dictionary<string, DialogPackage> packages = new Dictionary<string, DialogPackage>();

	public static int TotalLineCount { get { return lines.Count; } }
	public static int TotalPackageCount { get { return packages.Count; } }
	

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
	

	public static DialogLine GetLine(string key)
	{
		if(lines.ContainsKey(key))
			return lines[key];
		else
			return DialogLine.DialogLineWithText(key);
	}
	
	
	//Utility functions
	
	public static string GetStringForKey(string key)
	{
		if(!lines.ContainsKey(key))
			return "";
		return lines[key].Text;
	}
	
}
