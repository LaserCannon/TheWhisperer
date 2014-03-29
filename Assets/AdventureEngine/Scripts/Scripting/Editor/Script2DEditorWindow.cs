using UnityEngine;
using UnityEditor;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;

public class Script2DEditorWindow : EditorWindow
{ 

	private Script2DDrawContext context = null;
	
	[MenuItem("Window/Script2D Editor")]
	public static void OpenEditor()
	{
		Script2DEditorWindow window = EditorWindow.GetWindow<Script2DEditorWindow>(false,"Script2D Editor");
		window.minSize = new Vector2(300,200); 
	}
	
	void Update()
	{
		if(Selection.activeGameObject!=null && Selection.activeGameObject.GetComponent<Script2D>()!=null)
		{
			if(context!=null)
			{
				context.SetTargetScript( Selection.activeGameObject.GetComponent<Script2D>());
			}
		}
	}
	
	
	void OnGUI()
	{
		if(context==null)
		{
			context = new Script2DDrawContext();
			context.OnNeedsRepaint += this.Repaint;
		}

		context.Draw();
	}

}






