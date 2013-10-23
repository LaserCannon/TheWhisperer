using UnityEngine;
using UnityEditor;
using System.Collections;


[InitializeOnLoad]
public class PropEditor
{
	
	
	static PropEditor()
	{
		SceneView.onSceneGUIDelegate += onSceneGUI;
	}
	
	~PropEditor()
	{
		SceneView.onSceneGUIDelegate -= onSceneGUI;
	}
	
	
	
	//---MENU ITEMS---//
	
	//-Triggers
	
	[MenuItem("Props/Add Trigger")]
	public static void AddTrigger()
	{
		Instantiate("Defaults/TRIGGER");
	}
	
	[MenuItem("Props/Add Tappable Trigger")]
	public static void AddTappable()
	{
		Instantiate("Defaults/TAPPABLE");
	}
	
	[MenuItem("Props/Add Awake Trigger")]
	public static void AddAwake()
	{
		Instantiate("Defaults/AWAKE");
	}
	
	//-Scripts
	
	[MenuItem("Props/Script")]
	public static void SpawnScript()
	{
		Instantiate("Defaults/SCRIPT");
	}

	[MenuItem("Props/Spawn Point")]
	public static void SpawnSpawnPoint()
	{
		Instantiate("Defaults/SPAWNPOINT");
	}
	
	[MenuItem("Props/Locator")]
	public static void SpawnLocator()
	{
		Instantiate("Defaults/LOCATOR");
	}
	
	
	//---VARIABLES--//
	
	private static bool baseFoldout = false;
	private static bool triggerFoldout = false;
	private static bool scriptFoldout = false;
	private static bool otherFoldout = false;
	
	
	
	//---FUNCTIONS---//
	
	static void onSceneGUI(SceneView view)
	{
		Handles.BeginGUI();
		
		string plus = baseFoldout ? "-" : "+";
		
		if(GUILayout.Button (plus,GUILayout.Width(24)))
		{
			baseFoldout = !baseFoldout;
		}
		
		//TODO: Add commands to this dynamically?
		
		if(baseFoldout)
		{
			EditorGUILayout.BeginVertical(EditorStyles.objectFieldThumb, GUILayout.Width(120));
			
			triggerFoldout = EditorGUILayout.Foldout(triggerFoldout,"Triggers");
			if(triggerFoldout)
			{
				if(GUILayout.Button ("Add Trigger", GUILayout.Width(100)))
				{
					AddTrigger();
				}
				if(GUILayout.Button ("Add Awake", GUILayout.Width(100)))
				{
					AddAwake();
				}
				if(GUILayout.Button ("Add Tappable", GUILayout.Width(100)))
				{
					AddTappable();
				}
			}
			scriptFoldout = EditorGUILayout.Foldout(scriptFoldout,"Script");
			if(scriptFoldout)
			{
				if(GUILayout.Button ("Add Script", GUILayout.Width(100)))
				{
					SpawnScript();
				}
				if(GUILayout.Button ("Add SpawnPoint", GUILayout.Width(100)))
				{
					SpawnSpawnPoint();
				}
			}
			otherFoldout = EditorGUILayout.Foldout(otherFoldout,"Other");
			if(otherFoldout)
			{
				if(GUILayout.Button ("Add Locator", GUILayout.Width(100)))
				{
					SpawnLocator();
				}
			}
			
			EditorGUILayout.EndVertical();
		}
		
		Handles.EndGUI();
	}
	
	
	public static void Instantiate(string resourcePath)
	{
		if(SceneView.currentDrawingSceneView==null)
			return;
		
		//TODO: Don't use Resources
		GameObject prefab = (GameObject)Resources.Load (resourcePath);
		if(prefab!=null)
		{
			Camera sceneCam = SceneView.currentDrawingSceneView.camera;
			GameObject inst = (GameObject)PrefabUtility.InstantiatePrefab(prefab);
			inst.transform.position = sceneCam.transform.position+sceneCam.transform.forward*20f;
			inst.transform.rotation = Quaternion.identity;
			
			Selection.activeGameObject = inst;
		}
	}
}
