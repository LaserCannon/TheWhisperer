using UnityEngine;
using UnityEditor;
using System.Collections;
using System.Collections.Generic;



class SceneManagerEditor : EditorWindow
{
	
	[MenuItem("Builds/Scene Manager")]
    static void Init () {
		EditorWindow.GetWindow<SceneManagerEditor> ("Scene Manager");
    }
	
	List<bool>	schemeFoldouts = new List<bool>();
	List<bool>	packageFoldouts = new List<bool>();
	
	private Vector2 scrollPos;
	
	
	void OnGUI()
	{ 
		//Update the sizes of the foldout arrays
		while(schemeFoldouts.Count<SceneManager.main.Schemes.Count)		schemeFoldouts.Add(false);
		while(schemeFoldouts.Count>SceneManager.main.Schemes.Count) 	schemeFoldouts.RemoveAt(schemeFoldouts.Count-1);
		while(packageFoldouts.Count<SceneManager.main.Packages.Count) 	packageFoldouts.Add(false);
		while(packageFoldouts.Count>SceneManager.main.Packages.Count) 	packageFoldouts.RemoveAt(packageFoldouts.Count-1);
		
		scrollPos = EditorGUILayout.BeginScrollView(scrollPos,false,false);
		EditorGUILayout.BeginVertical(GUILayout.MaxWidth(400));
		
		GUILayout.Space(5);
		
		//-- Packages
		
		GUILayout.Label("Scene Packages:",EditorStyles.boldLabel);
		
		GUILayout.Space(5);
		
		for(int i=0;i<SceneManager.main.Packages.Count;i++)
		{
			ScenePackage sp = SceneManager.main.Packages[i];
			
			EditorGUILayout.BeginHorizontal();
			packageFoldouts[i] = EditorGUILayout.Toggle("",packageFoldouts[i],EditorStyles.miniButton,GUILayout.Width(24));
			sp.PackageName = EditorGUILayout.TextField(sp.PackageName);
			if(GUILayout.Button ("X",GUILayout.Width(24)) ) {
				SceneManager.main.Packages.RemoveAt(i);
				break;
			}
			
			EditorGUILayout.EndHorizontal();
			
			if(packageFoldouts[i])
			{
				for(int j=0;j<sp.Scenes.Count;j++)
				{
					EditorGUILayout.BeginHorizontal();
					GUILayout.Label ("",GUILayout.Width(24));
					if(GUILayout.Button ("X",GUILayout.Width(24)) ) {
						sp.Scenes.RemoveAt(j);
						break;
					}
					
					if(sp.Scenes[j]!=null)
					{
						GUILayout.Label(sp.Scenes[j].name);
					}
					else
					{
						sp.Scenes.RemoveAt(j);
						j--;
						continue;
					}
					
					/*Object newobj = (Object)EditorGUILayout.ObjectField(sp.Scenes[j],typeof(Object),false);
					if(newobj.GetType() == typeof(Object))
					{
						sp.Scenes[j] = newobj;
					}*/
					
					EditorGUILayout.EndHorizontal();
				}
				
				GUILayout.Space(5);
				
				EditorGUILayout.BeginHorizontal();
				GUILayout.Label ("   Add Scene:",GUILayout.Width(80));
				
				Object newobj = (Object)EditorGUILayout.ObjectField(null,typeof(Object),false);
				if(newobj!=null && newobj.GetType() == typeof(Object))
				{
					if(!sp.Scenes.Contains(newobj))
					{
						sp.Scenes.Add(newobj);
					}
					else
					{
						Debug.LogError("This scene is already included in this package!");
					}
				}
				else if(newobj!=null)
				{
					Debug.LogError("'" + newobj.name + "' is not a Scene file!");
				}
				
				EditorGUILayout.EndHorizontal();
				GUILayout.Space(10);
			}
		}
		
		if(GUILayout.Button ("Add Scene Package"))
		{
			SceneManager.main.Packages.Add(new ScenePackage());
		}
		
		
		EditorGUILayout.Space();
		
		//-- Build Schemes
		
		GUILayout.Label("Build Schemes:",EditorStyles.boldLabel);
		
		GUILayout.Space(5);
		
		for(int i=0;i<SceneManager.main.Schemes.Count;i++)
		{
			BuildScheme bs = SceneManager.main.Schemes[i];
				
			EditorGUILayout.BeginHorizontal();
				
			schemeFoldouts[i] = EditorGUILayout.Toggle("",schemeFoldouts[i],EditorStyles.miniButton,GUILayout.Width(24));
			bs.SchemeName = EditorGUILayout.TextField(bs.SchemeName);
			if(GUILayout.Button ("X",GUILayout.Width(24)) ) {
				SceneManager.main.Schemes.RemoveAt(i);
				break;
			}
			EditorGUILayout.EndHorizontal();
			
			if(schemeFoldouts[i])
			{
				for(int j=0;j<bs.Packages.Count;j++)
				{
					EditorGUILayout.BeginHorizontal();
					GUILayout.Label ("",GUILayout.Width(24));
					if(GUILayout.Button ("X",GUILayout.Width(24)) ) {
						bs.Packages.RemoveAt(j);
						break;
					}
					//bs.Packages[j] = EditorGUILayout.TextField(bs.Packages[j]);
					int index = SceneManager.main.PackagesAsStrings.IndexOf(bs.Packages[j]);
					index = EditorGUILayout.Popup(index,SceneManager.main.PackagesAsStrings.ToArray());
					if(index!=-1 && (!bs.Packages.Contains(SceneManager.main.Packages[index].PackageName) || SceneManager.main.Packages[index].PackageName==bs.Packages[j]))
						bs.Packages[j] = SceneManager.main.Packages[index].PackageName;
					else
						bs.Packages[j] = "";
					EditorGUILayout.EndHorizontal();
				}
				EditorGUILayout.BeginHorizontal();
				GUILayout.Label ("",GUILayout.Width(24));
				if(GUILayout.Button ("Add Scene Package",GUILayout.Width(120)))
				{
					bs.Packages.Add("New Package");
				}
				EditorGUILayout.EndHorizontal();
			}
		}
		
		if(GUILayout.Button ("Add BuildScheme"))
		{
			SceneManager.main.Schemes.Add(new BuildScheme());
		}
		
		
		EditorGUILayout.Space();
		
		//-- Build Button
		
		if(GUILayout.Button ("Build for...",GUILayout.Width(150),GUILayout.Height(40)))
		{
			EditorWindow.GetWindow<BuildMaker> (true,"Build Maker");
		}
		
		if(GUI.changed)
			EditorUtility.SetDirty(SceneManager.main);
		
		EditorGUILayout.EndVertical();
		EditorGUILayout.EndScrollView();
	}
}
