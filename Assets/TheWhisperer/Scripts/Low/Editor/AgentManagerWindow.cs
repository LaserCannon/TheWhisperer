using UnityEngine;
using UnityEditor;
using System.Collections;

public class AgentManagerWindow : EditorWindow
{
	
	[MenuItem("Window/Agent Database")]
	public static void Init()
	{
		EditorWindow.GetWindow<AgentManagerWindow>();
	}
	
	
	void OnGUI()
	{
		GUILayout.Label("Character Agents:");
		for(int i=0;i<AgentManager.main.Characters.Count;i++)
		{
			//FighterManager.main.Players[i] = (PlayerFighter)EditorGUILayout.ObjectField(FighterManager.main.Players[i],typeof(PlayerFighter),false);
			GUILayout.Label(i.ToString() + ": " + AgentManager.main.Characters[i].name);
		}
		
		PathCharacter newp = (PathCharacter)EditorGUILayout.ObjectField("Add:",null,typeof(PathCharacter),false);
		
		if(newp!=null)
		{
			AgentManager.main.Characters.Add(newp);
			EditorUtility.SetDirty(AgentManager.main);
		}
	}
	
	
	
}