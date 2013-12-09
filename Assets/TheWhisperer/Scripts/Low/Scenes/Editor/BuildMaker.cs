using UnityEngine;
using UnityEditor;
using System.Collections;
using System.Collections.Generic;
using System.IO;



class BuildMaker : EditorWindow
{
	
	private BuildTarget buildTarget = BuildTarget.StandaloneWindows;
	private int schemeID = 0;
	
	
	
	[MenuItem("Builds/Build for...")]
    static void Init () {
		EditorWindow.GetWindow<BuildMaker> (true,"Build Maker");
    }
	
	void OnGUI()
	{
		if(BuildManager.main==null)
		{
			Debug.LogError("BuildManager initialization failed!");
			Close();
		}
		
		buildTarget = (BuildTarget)EditorGUILayout.EnumPopup("Build Target",buildTarget);
		
		schemeID = EditorGUILayout.Popup("Scheme",schemeID,BuildManager.main.SchemesAsStrings.ToArray());
		
		if(GUILayout.Button ("Build!"))
		{
			BuildFor(buildTarget,BuildManager.main.Schemes[schemeID]);
		}
	}
		
		
	
	public static void BuildFor(BuildTarget platform, BuildScheme scheme)
	{
		string buildPath = "../"+"Build_" + PlayerSettings.productName + "/"+platform+"/CurrentBuild";
		string absBuildPath = Application.dataPath + "/../" + buildPath;
		
		Debug.Log("Building to: " + absBuildPath);
		Debug.Log(buildPath);
		
		BuildOptions opts = BuildOptions.None;
		
		//Create the directory (otherwise BuildPlayer will complain)
		if(!Directory.Exists(absBuildPath)) {
			Directory.CreateDirectory(buildPath);
			opts = BuildOptions.None;
		}
		else
			opts = BuildOptions.AcceptExternalModificationsToPlayer;
		
		//TODO: cull the list of scenes to make sure all of them exist, and warn/remove them if they dont.
		
		//Build! If our prefab doesnt exist, though, throw an error.
		if(BuildManager.main==null)	Debug.LogError("'Resources/General/BuildManager' does not exist!");
		else 						BuildPipeline.BuildPlayer(scheme.SerializedLevelPaths.ToArray(),buildPath,platform,opts);
	}
	
}


