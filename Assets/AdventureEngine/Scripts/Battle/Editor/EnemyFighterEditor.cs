using UnityEditor;
using UnityEngine;
using System.Collections;
using System.Collections.Generic;



[CustomEditor(typeof(EnemyFighter))]
public class EnemyFighterEditor : Editor
{

	
	public override void OnInspectorGUI()
	{
		EnemyFighter Target = (EnemyFighter)target;
		
		Target.DeathAnimString = EditorGUILayout.TextField("Death Anim",Target.DeathAnimString);
		
		EditAttackPattern(Target.AttackPattern);
		
		//DrawDefaultInspector();
		
	}
	
	
	
	void EditAttackPattern(EnemyAttackPattern attPattern)
	{
		Texture arrowImage = (Texture)Resources.LoadAssetAtPath("Assets/AdventureEngine/Scripts/Battle/Editor/arrow_down.psd",typeof(Texture));
		
		for(int i=0;i<attPattern.AttackOrder.Count;i++)
		{
			GUILayout.Label (attPattern.AttackOrder[i].name);
			EditorGUILayout.BeginHorizontal();
			GUILayout.Label (" ",GUILayout.Width(20));
			Rect r = GUILayoutUtility.GetRect(20,20,GUILayout.Width(20));
			EditorGUILayout.EndHorizontal();
			
			if(i!=attPattern.AttackOrder.Count-1)
				GUI.DrawTexture(r,arrowImage);
		}
		
		Attack newAttack = (Attack)EditorGUILayout.ObjectField(null,typeof(Attack),false);
		
		
		if(newAttack!=null)
			attPattern.AttackOrder.Add (newAttack);
		
		
		//for(int i=0;i<attPattern.AttackOrder.Count;i++)
		//	AttackEditor.DrawAttackUI(attPattern.AttackOrder[i]);
		
		
	}
	
	
}
