using UnityEngine;
using UnityEditor;
using System.Collections;

public class FighterManagerWindow : EditorWindow
{
	
	[MenuItem("Window/Fighter Database")]
	public static void Init()
	{
		EditorWindow.GetWindow<FighterManagerWindow>();
	}
		

	void OnGUI()
	{
		GUILayout.Label("Players:");
		for(int i=0;i<FighterManager.main.Players.Count;i++)
		{
			//FighterManager.main.Players[i] = (PlayerFighter)EditorGUILayout.ObjectField(FighterManager.main.Players[i],typeof(PlayerFighter),false);
			GUILayout.Label(i.ToString() + ": " + FighterManager.main.Players[i].name);
		}
		
		PlayerFighter newp = (PlayerFighter)EditorGUILayout.ObjectField("Add:",null,typeof(PlayerFighter),false);
		
		if(newp!=null)
		{
			FighterManager.main.Players.Add(newp);
			EditorUtility.SetDirty(FighterManager.main);
		}
		
		GUILayout.Space(10);
		
		GUILayout.Label("Enemies:");
		for(int i=0;i<FighterManager.main.Enemies.Count;i++)
		{
			//FighterManager.main.Enemies[i] = (EnemyFighter)EditorGUILayout.ObjectField(FighterManager.main.Enemies[i],typeof(EnemyFighter),false);
			GUILayout.Label(i.ToString() + ": " + FighterManager.main.Enemies[i].name);
		}
		
		EnemyFighter newe = (EnemyFighter)EditorGUILayout.ObjectField("Add:",null,typeof(EnemyFighter),false);
		
		if(newe!=null)
		{
			FighterManager.main.Enemies.Add(newe);
			EditorUtility.SetDirty(FighterManager.main);
		}
	}
	
	
	
}
