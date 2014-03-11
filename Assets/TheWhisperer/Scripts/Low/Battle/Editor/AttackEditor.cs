using UnityEngine;
using UnityEditor;
using System.Collections;
using System.Collections.Generic;
using System.IO;

[CustomEditor(typeof(Attack))]
public class AttackEditor : Editor	//TODO: Consider calling all of these Editors that are in the Inspector window "Inspectors" rather than "Editors"
{
	
	
	//[MenuItem("Window/Attack Editor")]
	//public static void Init()
	//{
	//	AttackEditor window = EditorWindow.GetWindow<AttackEditor> ("Attack Editor");
	//}
	
	
	public static BaseBattleAction currentActionEditing = null;
	public static Vector2 currentActionEditingPos = Vector2.zero;
	
	private static string AssetsPath
	{
		get { return PlayerSettings.productName+"/Resources/Attacks"; }
	}
	
	private static string AbsPath
	{
		get { return Application.dataPath + "/" + AssetsPath; }
	}

	
	public override void OnInspectorGUI()
	{
		if(GUILayout.Button ("Open Full Editor"))
			EditorWindow.GetWindow<AttackEditorWindow> ("Attack Editor");
		
		DrawNewAttackButton();
		
		if(Selection.activeObject.GetType()==typeof(Attack))
		{
			DrawAttackUI ((Attack)Selection.activeObject);
		}
	}
	
	public static void DrawNewAttackButton()
	{
		if(GUILayout.Button("New Attack"))
		{
			Attack newAttack = ScriptableObject.CreateInstance<Attack>();
			
			if(!Directory.Exists(AbsPath)) {
				Directory.CreateDirectory(AbsPath);
			}
			
			AssetDatabase.CreateAsset(newAttack, "Assets/" + AssetsPath + "/" + "NewAttack" + ".asset");
			
			Selection.activeObject = Resources.Load("Attacks/NewAttack.asset");
		}
	}
	
	
	private static Vector2 actionScrollPos = Vector2.zero;
	private static BaseBattleAction draggingAction = null;
	
	public static void DrawAttackUI(Attack targetAttack)
	{
		string newName = EditorGUILayout.TextField(targetAttack.name);
		if(newName!=targetAttack.name)
			AssetDatabase.RenameAsset("Assets/" + AssetsPath + "/" + targetAttack.name + ".asset",newName);
		
		Rect barRect = GUILayoutUtility.GetRect(100,1000,80,120,EditorStyles.objectFieldThumb);
		
		if(targetAttack.Timeline==null)	targetAttack.Timeline = new List<BaseBattleAction>();
		
		//Sort Timeline
		for(int i=0;i<targetAttack.Timeline.Count-1;i++)
		{
			if(targetAttack.Timeline[i]==null)
			{
				targetAttack.Timeline.RemoveAt(i);
				i--;
				continue;
			}
			
			for(int j=i+1;j<targetAttack.Timeline.Count;j++)
			{
				
				if(targetAttack.Timeline[i].Timecode > targetAttack.Timeline[j].Timecode)
				{
					BaseBattleAction temp = targetAttack.Timeline[i];
					targetAttack.Timeline[i] = targetAttack.Timeline[j];
					targetAttack.Timeline[j] = temp;
				}
			}
		}
		
		if(targetAttack.Timeline.Count>0)
		{
			Rect subRect = new Rect(barRect);
			subRect.x+=10f;
			subRect.width-=20f;
			subRect.y+=10f;
			subRect.height-=40f;
		
			float min = 0f;
			while(targetAttack.Timeline.Count>0 && targetAttack.Timeline[targetAttack.Timeline.Count-1]==null)
				targetAttack.Timeline.RemoveAt(targetAttack.Timeline.Count-1);
			float max = targetAttack.Timeline.Count==0 ? 0f : Mathf.Max(targetAttack.Timeline[targetAttack.Timeline.Count-1].Timecode*1.1f,1f);
			float timedist = max-min;
			float dist = subRect.width;
			
			//TODO: Don't do this every frame!
			Texture image = (Texture)Resources.LoadAssetAtPath("Assets/"+PlayerSettings.productName+"/Scripts/Low/Battle/Editor/attackbar.psd",typeof(Texture));
			Texture attImage = (Texture)Resources.LoadAssetAtPath("Assets/"+PlayerSettings.productName+"/Scripts/Low/Battle/Editor/AttackButton.png",typeof(Texture));
			Texture defImage = (Texture)Resources.LoadAssetAtPath("Assets/"+PlayerSettings.productName+"/Scripts/Low/Battle/Editor/DefendButton.png",typeof(Texture));
			Texture vlnImage = (Texture)Resources.LoadAssetAtPath("Assets/"+PlayerSettings.productName+"/Scripts/Low/Battle/Editor/MagicButton2.png",typeof(Texture));
			Texture anmImage = (Texture)Resources.LoadAssetAtPath("Assets/"+PlayerSettings.productName+"/Scripts/Low/Battle/Editor/RunButton.png",typeof(Texture));
			Texture scpImage = (Texture)Resources.LoadAssetAtPath("Assets/Gizmos/gears.png",typeof(Texture));
			Texture2D durationTex = new Texture2D(1,1);	//THIS IS GETTING LEAKED! again, dont do this every frame
			durationTex.SetPixel(0,0,Color.green);
			durationTex.Apply();
			
			//Draw the bar
			GUI.DrawTextureWithTexCoords(subRect,image,new Rect(8f/256f,0,34f/256f,1f));	//Middle section
			GUI.DrawTextureWithTexCoords(new Rect(subRect.x,subRect.y,5,subRect.height),image,new Rect(0,0,5f/256f,1));
			GUI.DrawTextureWithTexCoords(new Rect(subRect.x+subRect.width-5,subRect.y,5,subRect.height),image,new Rect(0,0,5f/256f,1));
			GUI.Label(new Rect(subRect.xMax-15f,subRect.yMax,30f,20f),max.ToString());
			
		
			for(int i=0;i<targetAttack.Timeline.Count;i++)
			{
				BaseBattleAction action = targetAttack.Timeline[i];
				
				Rect needleRect = new Rect(subRect.x+action.Timecode*dist/timedist,subRect.y,5f,subRect.height-20f);
				Rect imageRect = new Rect(needleRect.center.x-12f,needleRect.yMin-5f,24f,24f);
				
				GUI.DrawTextureWithTexCoords(needleRect,image,new Rect(70f/256f,0.25f,5f/256f,0.75f));
				GUI.Label(new Rect(needleRect.xMax-15f,needleRect.yMax,30f,20f),action.Timecode.ToString());
				GUI.Label(new Rect(needleRect.xMax-10f,needleRect.yMax+12f,20f,20f),i.ToString());
				
				Texture img = null;
				if(action.GetType()==typeof(BlockBattleAction)) {
					img = defImage;
					durationTex.SetPixel(0,0,Color.green);
					durationTex.Apply();
					GUI.DrawTexture(new Rect(needleRect.center.x,needleRect.center.y+2,action.Duration * dist/timedist,5),durationTex);
				}
				if(action.GetType()==typeof(DamageBattleAction)) {
					img = attImage;
				}
				if(action.GetType()==typeof(VulnerabilityBattleAction)) {
					img = vlnImage;
					durationTex.SetPixel(0,0,Color.blue);
					durationTex.Apply();
					GUI.DrawTexture(new Rect(needleRect.center.x,needleRect.center.y-3,action.Duration * dist/timedist,5),durationTex);
				}
				if(action.GetType()==typeof(ScriptBattleAction)) {
					img = scpImage;
				}
				if(action.GetType()==typeof(AnimateBattleAction)) {
					img = anmImage;
				}
				if(action.GetType()==typeof(MoveBattleAction)) {
					img = anmImage;
					durationTex.SetPixel(0,0,Color.magenta);
					durationTex.Apply();
					GUI.DrawTexture(new Rect(needleRect.center.x,needleRect.center.y-8,action.Duration * dist/timedist,5),durationTex);
				}
				
				Rect expandedNeedleRect = needleRect;
				expandedNeedleRect.x -= 5f;
				expandedNeedleRect.width += 10f;
				
				if(Event.current!=null && Event.current.type == EventType.MouseDown && draggingAction==null && expandedNeedleRect.Contains(Event.current.mousePosition))
				{
					draggingAction = action;
				}
				
				if(Event.current!=null && Event.current.type==EventType.MouseDrag && draggingAction==action)
				{
					action.Timecode = Mathf.Max (action.Timecode + Event.current.delta.x * timedist/dist, 0f);
					EditorWindow.GetWindow<AttackEditorWindow>().Repaint();
				}
				
				if(Event.current!=null && Event.current.type==EventType.MouseUp && draggingAction==action)
				{
					draggingAction = null;
				}
				
				if(GUI.Toggle(imageRect,currentActionEditing==action,img,EditorStyles.miniButton)){
					if(currentActionEditing!=action)
					{
						currentActionEditing = action;
						currentActionEditingPos = imageRect.center;
					}
				}
			}
			
			//TODO: Different scroll position for each attack (current method causes problems for Enemy UI)
			actionScrollPos = EditorGUILayout.BeginScrollView(actionScrollPos);
			
			for(int i=0;i<targetAttack.Timeline.Count;i++)
			{
				BaseBattleAction action = targetAttack.Timeline[i];
				
				EditorGUILayout.BeginVertical(EditorStyles.objectFieldThumb);
				
				EditorGUILayout.BeginHorizontal();
				
				Texture img = null;
				if(action.GetType()==typeof(BlockBattleAction)) {
					img = defImage;
				}
				if(action.GetType()==typeof(DamageBattleAction)) {
					img = attImage;
				}
				if(action.GetType()==typeof(VulnerabilityBattleAction)) {
					img = vlnImage;
				}
				if(action.GetType()==typeof(ScriptBattleAction)) {
					img = scpImage;
				}
				if(action.GetType()==typeof(AnimateBattleAction)) {
					img = anmImage;
				}
				if(action.GetType()==typeof(MoveBattleAction)) {
					img = anmImage;
				}
				
				if(GUILayout.Toggle(currentActionEditing==action,img,EditorStyles.miniButton,GUILayout.Width(24),GUILayout.Height(24)))
				{
					currentActionEditing = action;
				}
				
				GUILayout.Label(i.ToString() + ") " + action.GetType().ToString());
				if( GUILayout.Button ("X",GUILayout.Width(24)) )
				{
					ScriptableObject.DestroyImmediate(targetAttack.Timeline[i],true);
					AssetDatabase.ImportAsset(AssetDatabase.GetAssetPath(targetAttack)); 
					targetAttack.Timeline.RemoveAt(i);
					i--;
					continue;
				}
				EditorGUILayout.EndHorizontal();
				
				//--Draw Action fields--//
				AttackEditorWindow.DrawActionEdit(action);
				
				EditorGUILayout.EndVertical();
			}
		
			//EditorGUILayout.EndScrollView();	//Moved to below
			
		}
		
		List<string> actionTypes = new List<string>();
		actionTypes.Add("-- New Action --");
		actionTypes.Add ("DamageAction");
		actionTypes.Add ("BlockAction");
		actionTypes.Add ("VulnerabilityAction");
		actionTypes.Add ("ScriptAction");
		actionTypes.Add ("AnimateAction");
		actionTypes.Add ("MoveAction");
		actionTypes.Add ("EmptyAction");
		
		int indexToAdd = EditorGUILayout.Popup(0,actionTypes.ToArray());
		
		if(targetAttack.Timeline.Count>0)
			EditorGUILayout.EndScrollView();
		
		
		if(indexToAdd!=0)
		{
			BaseBattleAction action = null;
			switch(actionTypes[indexToAdd])
			{
			case "DamageAction":
				action = ScriptableObject.CreateInstance<DamageBattleAction>();
				action.name = "_DamageAction";
				break;
			case "BlockAction":
				action = ScriptableObject.CreateInstance<BlockBattleAction>();
				action.name = "_BlockAction";
				break;
			case "VulnerabilityAction":
				action = ScriptableObject.CreateInstance<VulnerabilityBattleAction>();
				action.name = "_VulnerabilityAction";
				break;
			case "ScriptAction":
				action = ScriptableObject.CreateInstance<ScriptBattleAction>();
				action.name = "_ScriptAction";
				break;
			case "AnimateAction":
				action = ScriptableObject.CreateInstance<AnimateBattleAction>();
				action.name = "_AnimateAction";
				break;
			case "MoveAction":
				action = ScriptableObject.CreateInstance<MoveBattleAction>();
				action.name = "_MoveAction";
				break;
			case "EmptyAction":
				action = ScriptableObject.CreateInstance<BaseBattleAction>();
				action.name = "_EmptyAction";
				break;
			}
			
			if(action!=null)
			{
			    AssetDatabase.AddObjectToAsset(action, targetAttack);
			    AssetDatabase.ImportAsset(AssetDatabase.GetAssetPath(action));
				
				targetAttack.Timeline.Add (action);
			}
		}
		
		
		if(GUI.changed)
		{
			EditorUtility.SetDirty(targetAttack);
		}
	}
	
	
}
