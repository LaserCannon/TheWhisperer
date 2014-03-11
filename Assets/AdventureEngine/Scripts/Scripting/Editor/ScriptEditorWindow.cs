using UnityEngine;
using UnityEditor;
using System.Collections;

public class ScriptEditorWindow : EditorWindow
{
	
	private Script target = null;
	private Vector2 scrollPos = Vector2.zero;
	
	[MenuItem("Window/Script Editor")]
	public static void OpenEditor()
	{
		ScriptEditorWindow window = EditorWindow.GetWindow<ScriptEditorWindow>(false,"Script Editor");
		window.minSize = new Vector2(300,200);
	}
	
	
	void Update()
	{
		if(Selection.activeGameObject!=null && Selection.activeGameObject.GetComponent<Script>()!=null)
		{
			target = Selection.activeGameObject.GetComponent<Script>();
		}
	}
	
	void OnGUI()
	{
		if(target!=null)
		{
			GUILayout.Label("Script: " + target.name,EditorStyles.boldLabel);
			
			EditorGUILayout.Space();
			
			scrollPos = EditorGUILayout.BeginScrollView(scrollPos,false,true);
			
			ScriptEditor.DrawScriptHeader(target);
			ScriptEditor.DrawScriptor(null,target);
			
			EditorGUILayout.EndScrollView();
		}
		else
		{
			GUILayout.Label("No Script Selected.");
		}
	}
	
	
	void ScriptSelected()
	{
		Repaint();
	}
	
	
	void OnEnable()
	{
		Command.onExecuteCommand += Repaint;
		
		ScriptEditor.onScriptSelected += ScriptSelected;
	}
	
	void OnDisable()
	{
		Command.onExecuteCommand -= Repaint;
		
		ScriptEditor.onScriptSelected -= ScriptSelected;
	}
	
	void OnDestroy()
	{
		Command.onExecuteCommand -= Repaint;
		
		ScriptEditor.onScriptSelected -= ScriptSelected;
	}
	
	
	
}
