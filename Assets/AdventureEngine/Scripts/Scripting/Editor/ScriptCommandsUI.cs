using UnityEngine;
using UnityEditor;
using System.Collections;
using System.Collections.Generic;


//GUI Methods for the ScriptEditor can be put here. Use the CommandGUIFunctionAttribute attribute in ScriptCommand functions to alter the way
//	the attributed function looks in the "Script" inspector


public partial class ScriptCommandsUI
{
	public static string SpawnPoint_GUI(Command cmd, int paramIndex, string input = "")
	{
		//The scene name is the first parameter (we are currently assuming this is being called for the LoadSceneAndSpawn function)
		string sceneName = cmd.GetParam(paramIndex-1).String;
		
		List<string> locations = SpawnLocatorManager.GetSpawnLocationsForScene(sceneName);
		
		if(locations!=null && locations.Count>0)
		{
			locations.Insert(0,"-- NOT SELECTED --");
			
			int locationIndex = 0;
			if(locations.Contains(input))
				locationIndex = locations.IndexOf(input);
				
			locationIndex = EditorGUILayout.Popup("Spawn Point",locationIndex,locations.ToArray());
			
			input = locations[locationIndex];
		}
		else if(sceneName!="" && sceneName!=null && !sceneName.Contains("--"))
		{
			GUILayout.Label("No spawn points in scene '" + sceneName + "' found in SpawnPointManager database. Try opening up that scene to add them.");
			input = "";
		}
		
		return input;
	}
	
	public static string LoadScene_GUI(Command cmd, int paramIndex, string input = "")
	{
		List<string> scenes = SpawnLocatorManager.GetSceneNames();
		
		scenes.Insert(0,"-- NOT SELECTED --");
		
		int index = 0;
		if(scenes.Contains(input))
			index = scenes.IndexOf(input);
		
		index = EditorGUILayout.Popup("Scene",index,scenes.ToArray());
		
		input = scenes[index];
		
		return input;
	}
	
	//TODO: Make these UIs more appealing
	public static string LoadDialog_GUI(Command cmd, int paramIndex, string input = "")
	{
		string myIn = input;
		ScriptCommandUIUtilities.AutoCompleteUI(cmd.GetParamName(0),ref myIn,DialogEditorUtilities.GetSimilarPackageNames);
		
		return myIn;
	}
	
	
	public static string PlayDialog_GUI(Command cmd, int paramIndex, string input = "")
	{
		string myIn = input;
		bool isMatch = ScriptCommandUIUtilities.AutoCompleteUI(cmd.GetParamName(paramIndex),ref myIn,DialogEditorUtilities.GetSimilarLineIDs,DialogEditorUtilities.GetSimilarLineIDs_Text);
		//EditorGUIUtility.LookLikeInspector();
						
		EditorGUILayout.BeginHorizontal(/*EditorStyles.objectFieldThumb*/);
		GUILayout.Label ("Package:");
			//Finally, display the translation
			if(isMatch)
				GUILayout.Label(DialogEditorUtilities.GetPackageNameForLineID(myIn));
		EditorGUILayout.EndHorizontal();
			
		EditorGUILayout.BeginHorizontal(/*EditorStyles.objectFieldThumb*/);
		GUILayout.Label ("Translation (EN):");
			//Finally, display the translation
			if(isMatch)
				GUILayout.Label(DialogEditorUtilities.GetStringForKey(myIn));
		EditorGUILayout.EndHorizontal();
		
		return myIn;
	}
	
}


public static class ScriptCommandUIUtilities
{
	public delegate List<string> AutoCompleteDelegate(string input, int maxCount);
	
	//TODO: Make the autocorrect options into a dropdown instead?
	
	public static bool AutoCompleteUI(string paramTitle, ref string input, AutoCompleteDelegate autoCompleteFunction, AutoCompleteDelegate autoCompleteText = null)
	{
		EditorGUILayout.BeginVertical();
		
			EditorGUILayout.BeginHorizontal();
			
				//--Parameter Label--//
				GUILayout.Label(paramTitle + " (String):");
				
				EditorGUILayout.BeginVertical();
				
					EditorGUILayout.BeginHorizontal();
					
						//--String entry UI--//
						string outstring = EditorGUILayout.TextField(input);
						//Find lines that match the currently entered text
						List<string> similar = autoCompleteFunction(outstring,6);
						List<string> similarText = new List<string>();
						if(autoCompleteText!=null)
							similarText = autoCompleteText(outstring,6);
		
						//Is it an exact match?
						bool isMatch = similar.Contains(outstring);
						
						//Draw icon for match/no match
						Texture t = isMatch ? (Texture)AssetDatabase.LoadAssetAtPath("Assets/Gizmos/checkmark.png",typeof(Texture)) : 
											  (Texture)AssetDatabase.LoadAssetAtPath("Assets/Gizmos/cancel.png",typeof(Texture));
						GUILayout.Label(t,GUILayout.Width(24),GUILayout.Height(24));
						
					EditorGUILayout.EndHorizontal();
						
					if(EditorGUIUtility.keyboardControl!=0)
					{
						GUILayout.Label ("Autocomplete:");
			
						EditorGUILayout.BeginVertical(EditorStyles.objectFieldThumb,GUILayout.Width(150));
					
						for(int i=0;i<similar.Count && i<10;i++)
						{
							string smlr = similar[i];
							if(similarText.Count > i)
								smlr += " : " + similarText[i];
				
							if(GUILayout.Button( smlr , GUILayout.Width(200) ))
							{
								outstring = similar[i];
								EditorGUIUtility.hotControl = 0;
								EditorGUIUtility.keyboardControl = 0;
							}
						}
						
						EditorGUILayout.EndVertical();
					
					}
				
				EditorGUILayout.EndVertical();
			
			EditorGUILayout.EndHorizontal();
		
		
		EditorGUILayout.EndVertical();
		
		input = outstring;
		
		return isMatch;
	}
}
