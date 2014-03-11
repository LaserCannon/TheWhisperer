using UnityEngine;
using UnityEditor;
using System.Collections;
using System.Collections.Generic;
using System.IO;


public class GlobalVariableDatabaseEditor : EditorWindow
{
	//TODO: Add CATEGORIES!
	
	private Dictionary<string,Param> defaults = new Dictionary<string,Param>();
	
	
	
	[MenuItem("Window/Global Variables")]
	public static void Init()
	{
		EditorWindow.GetWindow<GlobalVariableDatabaseEditor>("Variables",false);
	}
	
	
	
	private string editingName = "";
	void OnGUI()
	{
		if(defaults.Count==0)
			LoadDataInEditor();
		
		foreach(string key in defaults.Keys)
		{
			GUILayout.BeginHorizontal();
			defaults[key].Value = ScriptEditor.DrawParamGUI(key,defaults[key]);
			if(GUILayout.Button("X",GUILayout.Width(24)))
			{
				defaults.Remove(key);
				SaveDataInEditor();
				return;
			}
			GUILayout.EndHorizontal();
		}
		
		
		editingName = GUILayout.TextField(editingName);
		if(GUILayout.Button ("New Int"))
		{
			if(!defaults.ContainsKey(editingName))
				defaults.Add(editingName,new Param(typeof(int),0));
			editingName = "";
		}
		if(GUILayout.Button ("New Float"))
		{
			if(!defaults.ContainsKey(editingName))
				defaults.Add(editingName,new Param(typeof(float),0f));
			editingName = "";
		}
		if(GUILayout.Button ("New String"))
		{
			if(!defaults.ContainsKey(editingName))
				defaults.Add(editingName,new Param(typeof(string),""));
			editingName = "";
		}
		if(GUILayout.Button ("New Boolean"))
		{
			if(!defaults.ContainsKey(editingName))
				defaults.Add(editingName,new Param(typeof(bool),false));
			editingName = "";
		}
		if(GUILayout.Button ("New Object"))
		{
			if(!defaults.ContainsKey(editingName))
				defaults.Add(editingName,new Param(typeof(Object),null));
			editingName = "";
		}
		
		
		if(GUI.changed)
		{
			SaveDataInEditor();
		}
	}
	
	private void DrawParamEdit(string name, Param param)
	{
	}
	
			
			
	new public string ToString()
	{
		string compiledString = "";
		
		foreach(KeyValuePair<string,Param> kvp in defaults)
		{
			compiledString += kvp.Key + "=" + kvp.Value.ToString() + "\n";
		}
		
		return compiledString;
	}
	
	
	
	public void SaveDataInEditor()
	{
		string compiledString = ToString();
		
		StreamWriter writer = new StreamWriter(Application.dataPath + "/"+PlayerSettings.productName+"/Resources/ManagedAssets/GlobalVariables.txt");
		
		writer.Write(compiledString);
		
		writer.Close(); 
		
		AssetDatabase.Refresh();
	}
	
	public void LoadDataInEditor()
	{
		//Make sure any old data is cleaned up
		defaults.Clear();
		
		
		if(!File.Exists(Application.dataPath + "/"+PlayerSettings.productName+"/Resources/ManagedAssets/GlobalVariables.txt"))
		{
			File.Create("Assets/"+PlayerSettings.productName+"/Resources/ManagedAssets/GlobalVariables.txt");
			AssetDatabase.Refresh();
		}
		
		StreamReader reader = new StreamReader(Application.dataPath + "/" + PlayerSettings.productName+"/Resources/ManagedAssets/GlobalVariables.txt");
		
		string line = reader.ReadLine();
		
		while(line!=null && line!="")
		{
			string[] segments = line.Split('=');
			defaults.Add(segments[0],Param.FromString(segments[1]));
			line = reader.ReadLine();
		}
		
		reader.Close();
	}
	
	
	
}
