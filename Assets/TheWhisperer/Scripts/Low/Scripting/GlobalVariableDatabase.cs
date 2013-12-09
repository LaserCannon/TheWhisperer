using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.IO;

#if UNITY_EDITOR
using UnityEditor;
#endif


//TODO: Make an "ISaveable" interface that allows this to be saved to a text file. Also, possibly an "IEditorSaveable"

public class GlobalVariableDatabase
{
	private Dictionary<string,Param> database = new Dictionary<string,Param>();
	
	private static GlobalVariableDatabase main;
	
	
	//TODO: Later on, put in an option to warn when a new database item is created, in case we accidentally change the name of a serialized variable after launch!
	
	
	static GlobalVariableDatabase()
	{
		if(main==null)
		{
			main = new GlobalVariableDatabase();
		}
		
		//Load in default variables and values
		TextAsset text = (TextAsset)Resources.Load("ManagedAssets/GlobalVariables");
		
		if(text!=null)
		{
			string str = text.text;
			
			string[] lines = str.Split('\n');
			
			foreach(string line in lines)
			{
				string[] segments = line.Split('=');
				if(segments.Length>=2)
					main.database.Add(segments[0],Param.FromString(segments[1]));
			}
		}
	}
	
	
	
	public static T GetValue<T>(string key)
	{
		if(!main.database.ContainsKey(key))
		{
			Debug.LogWarning ("Global variable '"+key+"' not found!");
			return default(T);
		}
		
		Param obj = main.database[key];
		
		if(obj.Value.GetType()!=typeof(T))
		{
			Debug.LogWarning ("Global variable '"+key+"' is not of the given type!");
			return default(T);
		}
		
		return (T)(obj.Value);
	}
	
	public static int GetInt(string key)
	{
		return GetValue<int>(key);
	}
	
	public static float GetFloat(string key)
	{
		return GetValue<float>(key);
	}
	
	public static string GetString(string key)
	{
		return GetValue<string>(key);
	}
	
	public static bool GetBool(string key)
	{
		return GetValue<bool>(key);
	}
	
	
	
	public static void SetValue<T>(string key, T value)
	{
		//Make sure we are adding a valid type
		if(typeof(T)!=typeof(int) && typeof(T)!=typeof(float) && typeof(T)!=typeof(string) && typeof(T)!=typeof(bool))
		{
			Debug.Log ("'" + typeof(T).ToString() + "' is not a valid type for SetValue()!");
		}
		
		if(!main.database.ContainsKey(key))
		{
			Debug.LogWarning ("Adding Global Variable '"+key+"', whcih is not in the defualt variable setup. " +
				"Add this to the Global Variable Editor to improve organization and performance!");
			
			main.database.Add(key,new Param(typeof(T),value));
		}
		
		Param obj = main.database[key];
		
		if(obj.Value.GetType()!=typeof(T))
		{
			Debug.LogError ("Global variable '"+key+"' is not of the given type!");
		}
		
		obj.Value = value;
	}
	
	public static void SetInt(string key, int value)
	{
		SetValue<int>(key,value);
	}
	
	public static void SetFloat(string key, float value)
	{
		SetValue<float>(key,value);
	}
	
	public static void SetString(string key, string value)
	{
		SetValue<string>(key,value);
	}
	
	public static void SetBool(string key, bool value)
	{
		SetValue<bool>(key,value);
	}
	
	
	
	new public static string ToString()
	{
		string compiledString = "";
		
		foreach(KeyValuePair<string,Param> kvp in main.database)
		{
			compiledString += kvp.Key + "=" + kvp.Value.ToString() + "\n";
		}
		
		return compiledString;
	}
	
	
	public static void SaveData(string saveName)
	{
		string compiledString = ToString();
		
		StreamWriter writer = new StreamWriter(Application.persistentDataPath+"/"+saveName+".save");
		
		writer.Write(compiledString);
		
		writer.Close();
	}
	
	public static void LoadData(string saveName)
	{
		//Make sure any old data is cleaned up
		main.database.Clear();
		
		StreamReader reader = new StreamReader(Application.persistentDataPath+"/"+saveName+".save");
		
		string line = reader.ReadLine();
		
		while(line!=null && line!="")
		{
			string[] segments = line.Split('=');
			main.database.Add(segments[0],Param.FromString(segments[1]));
			line = reader.ReadLine();
		}
		
		reader.Close();
	}
	
	
}
