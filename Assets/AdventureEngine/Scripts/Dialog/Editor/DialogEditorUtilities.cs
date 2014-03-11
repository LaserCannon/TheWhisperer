using UnityEngine;
using UnityEditor;
using System.Collections;
using System.Collections.Generic;
using System.IO;

public class DialogEditorUtilities
{
	
	
	static DialogEditorUtilities()
	{
		ReloadPackages();
	}
	
	//TODO: THIS SHOULD NOT BE PUBLIC!!! MAKE ACCESSORS AND ENUMERATORS!
	public static Dictionary<string,DialogPackage> AllPackages = new Dictionary<string,DialogPackage>();
	public static Dictionary<string,DialogLine> AllLines = new Dictionary<string,DialogLine>();
	
	
	
	
	private static string AssetsPath
	{
		get { return PlayerSettings.productName+"/Resources/DialogPackages"; }
	}
	
	private static string AbsDialogPath
	{
		get { return Application.dataPath + "/" + AssetsPath; }
	}
	
	
	
	
	public static string[] GetPackageNames()
	{
		//Make sure the folder exists
		if(!Directory.Exists(AbsDialogPath)) {
			Directory.CreateDirectory(AbsDialogPath);
		}
		
		//Find all the files in our DialogPackage directory
		string[] filenames = Directory.GetFiles(AbsDialogPath);
		
		List<string> filenamesNoMeta = new List<string>();
		for(int i=0;i<filenames.Length;i++)
		{
			if(!filenames[i].Contains(".meta"))
				filenamesNoMeta.Add(filenames[i]);
		}
		
		return filenamesNoMeta.ToArray();
	}
	
	public static List<string> GetSimilarLineIDs(string text, int max = 10)
	{
		List<string> similar = new List<string>();
		if(text=="" || text==null)	return similar;
		
		foreach(DialogPackage dp in AllPackages.Values)
		{
			foreach(DialogLine dl in dp.Lines)
			{
				if(dl.Text.ToLower().StartsWith(text.ToLower()))
					similar.Insert(0,dl.LineID);
				else if(dl.Text.ToLower().Contains(text.ToLower()))
					similar.Insert(similar.Count,dl.LineID);
				
				else if(dl.LineID.ToLower().StartsWith(text.ToLower()))
					similar.Insert(0,dl.LineID);
				else if(dl.LineID.ToLower().Contains(text.ToLower()))
					similar.Insert(similar.Count,dl.LineID);
			}
		}
		return similar;
	}
	
	public static List<string> GetSimilarLineIDs_Text(string text, int max = 10)
	{
		List<string> similarText = new List<string>();
		if(text=="" || text==null)	return similarText;
		
		foreach(DialogPackage dp in AllPackages.Values)
		{
			foreach(DialogLine dl in dp.Lines)
			{
				if(dl.Text.ToLower().StartsWith(text.ToLower()))
					similarText.Insert(0,dl.Text);
				else if(dl.Text.ToLower().Contains(text.ToLower()))
					similarText.Insert(similarText.Count,dl.Text);
				
				else if(dl.LineID.ToLower().StartsWith(text.ToLower()))
					similarText.Insert(0,dl.Text);
				else if(dl.LineID.ToLower().Contains(text.ToLower()))
					similarText.Insert(similarText.Count,dl.Text);
			}
		}
		return similarText;
	}
	
	public static List<string> GetSimilarPackageNames(string text, int max = 10)
	{
		List<string> similar = new List<string>();
		
		if(text=="" || text==null)	return similar;
		
		foreach(DialogPackage dp in AllPackages.Values)
		{
			if(dp.Name.ToLower().StartsWith(text.ToLower()))
				similar.Insert(0,dp.Name);
			else if(dp.Name.ToLower().Contains(text.ToLower()))
				similar.Insert(similar.Count,dp.Name);
		}
		return similar;
	}
	
	public static string GetStringForKey(string lineID)
	{
		//Search for the Dialog line text we provided the key of, since we don't have loaded packages in the editor
		foreach(DialogPackage dp in AllPackages.Values)
		{
			foreach(DialogLine dl in dp.Lines)
			{
				if(dl.LineID==lineID)
				{
					return dl.Text;
				}
			}
		}
		return "";
	}
	
	
	public static string GetPackageNameForLineID(string lineID)
	{
		foreach(DialogPackage dp in AllPackages.Values)
		{
			if(dp.Lines.Exists(line => line.LineID==lineID))
				return dp.Name;
		}
		return "";
	}
	
	
	public static void ReloadPackages()
	{
		//Reset the AllPackages array
		AllPackages = new Dictionary<string,DialogPackage>();
		AllLines = new Dictionary<string,DialogLine>();

		//Find all the files in our DialogPackage directory
		string[] filenames = GetPackageNames();
		
		//Load and add each of these to our AllPackages array
		foreach(string str in filenames)
		{
			//'-7' is to cut off the .asset extension
			string substring = str.Substring(str.LastIndexOf("Resources/")+10, str.Length - (str.LastIndexOf("Resources/")+9) - 7);
			DialogPackage dp = (DialogPackage)Resources.Load(substring,typeof(DialogPackage));
			
			if(dp!=null){
				AllPackages.Add (dp.Name,dp);
				foreach(DialogLine line in dp.Lines)
				{
					//We should never find duplicates unless the DialogEditor messes up filtering them. Just in case, mark them as "Dupe"s
					while(AllLines.ContainsKey(line.LineID))
						line.LineID += "_DUPE";
					
					AllLines.Add(line.LineID,line);
				}
			}
			else
				Debug.LogError("Could not load dialog package from Resources folder: "+substring);
		}
		
	}
	
	
	public static bool AddPackage(string name)
	{
		ReloadPackages();
		
		DialogPackage newPack = ScriptableObject.CreateInstance<DialogPackage>();
		newPack.name = name;
		
		//TODO: Make this all tolower()!
		if(!DialogEditorUtilities.AllPackages.ContainsKey(newPack.Name))
		{
			AssetDatabase.CreateAsset(newPack, "Assets/" + AssetsPath + "/" + newPack.Name + ".asset");
			DialogEditorUtilities.AllPackages.Add (newPack.Name,newPack);
		}
		else
			return false;
				
		AssetDatabase.Refresh();
		
		return true;
	}
	
	public static void RenamePackage(DialogPackage pack, string newName)
	{
		AssetDatabase.RenameAsset("Assets/" + AssetsPath + "/" + pack.Name + ".asset",newName);
	}
	
	
}
