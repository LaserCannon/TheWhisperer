using UnityEngine;
using UnityEditor;
using System.Collections;
using System.Collections.Generic;



public class AttackEditorWindow : EditorWindow{
	
	
	[MenuItem("Window/Attack Editor")]
	public static void OpenAttackEditorWindow()
	{
		EditorWindow.GetWindow<AttackEditorWindow> ("Attack Editor");
	}
	
	
	void OnEnable()
	{
		autoRepaintOnSceneChange = true;
		wantsMouseMove = true;
	}

	
	
	//Rect r = new Rect(0,0,400,100);
	void OnGUI()
	{
		if(AttackEditor.currentActionEditing!=null)
			GUI.enabled = false;
		
		AttackEditor.DrawNewAttackButton();
		
		EditorGUILayout.Space();
		
		if(Selection.activeObject!=null && Selection.activeObject.GetType() == typeof(Attack))
			AttackEditor.DrawAttackUI((Attack)Selection.activeObject);
		
		GUI.enabled = true;
		
		if(AttackEditor.currentActionEditing!=null)
		{
			float width = 260;
			float height = 200;
			float xpos = AttackEditor.currentActionEditingPos.x;
			if(xpos+width > position.width)
				xpos = Mathf.Max (xpos-width+20,0);
			Rect r = new Rect(xpos-10,AttackEditor.currentActionEditingPos.y+10,width,height);
			BeginWindows();
			GUI.Window(0,r,DrawActionEditWindow,"Edit");
			EndWindows();
		}
			
	}
	
	
	//Since Unity makes labels combined with fields way out of whack, here's a convenience function
	public static void BeginHorizontalWithLabel(string lbl)
	{
		EditorGUILayout.BeginHorizontal();
		GUILayout.Label(lbl,GUILayout.Width(100));
	}
	
	public static void DrawActionEditWindow(int id)
	{
		DrawActionEdit(AttackEditor.currentActionEditing,true);
		
		if(GUILayout.Button ("(X) Close",GUILayout.Width(60)))
		{
			AttackEditor.currentActionEditing = null;
			GUIUtility.keyboardControl = 0;
		}
	}
	
	public static void DrawActionEdit(BaseBattleAction action, bool showTimecode = false)
	{
		EditorGUILayout.BeginVertical(/*.objectFieldThumb*/);
		
		if(showTimecode)
		{
			BeginHorizontalWithLabel("Timecode");
			action.Timecode = Mathf.Max (0f, EditorGUILayout.FloatField(action.Timecode));
			EditorGUILayout.EndHorizontal();
		}
		
		if(action.GetType()==typeof(DamageBattleAction))
		{
			BeginHorizontalWithLabel("Base Damage");
			((DamageBattleAction)action).Damage.BaseDamage = EditorGUILayout.IntField((int)( ((DamageBattleAction)action).Damage.BaseDamage ));
			EditorGUILayout.EndHorizontal();
			
			BeginHorizontalWithLabel("Damage Type");
			((DamageBattleAction)action).Damage.Type = (DamageType)EditorGUILayout.EnumPopup(((DamageBattleAction)action).Damage.Type);
			EditorGUILayout.EndHorizontal();
			
			BeginHorizontalWithLabel("Relative Position");
			((DamageBattleAction)action).Damage.Position = EditorGUILayout.Vector3Field("", ((DamageBattleAction)action).Damage.Position );
			EditorGUILayout.EndHorizontal();
			BeginHorizontalWithLabel("Radius");
			((DamageBattleAction)action).Damage.Radius = EditorGUILayout.FloatField( ((DamageBattleAction)action).Damage.Radius );
			EditorGUILayout.EndHorizontal();
		}
		if(action.GetType()==typeof(VulnerabilityBattleAction) || action.GetType()==typeof(BlockBattleAction))
		{
			BeginHorizontalWithLabel("Duration");
			((VulnerabilityBattleAction)action).Duration = EditorGUILayout.FloatField( ((VulnerabilityBattleAction)action).Duration );
			EditorGUILayout.EndHorizontal();
			
			BeginHorizontalWithLabel("Damage Offset");
			((VulnerabilityBattleAction)action).DamageOffset = EditorGUILayout.FloatField(((VulnerabilityBattleAction)action).DamageOffset);
			EditorGUILayout.EndHorizontal();
			
			BeginHorizontalWithLabel("Knockback Offset");
			((VulnerabilityBattleAction)action).KnockbackOffset = EditorGUILayout.IntField(((VulnerabilityBattleAction)action).KnockbackOffset);
			EditorGUILayout.EndHorizontal();
			
			GUILayout.Label ("Break Conditions:");
			if(((VulnerabilityBattleAction)action).BreakReq==null)	((VulnerabilityBattleAction)action).BreakReq = new List<BreakRequirement>();
			List<BreakRequirement> breaks = ((VulnerabilityBattleAction)action).BreakReq;
			for(int i=0;i<breaks.Count;i++)
			{
				BreakRequirement req = breaks[i];
				BeginHorizontalWithLabel("Req "+i);
				if( GUILayout.Button ("X",GUILayout.Width(24)) ) {
					breaks.RemoveAt(i); i--; continue;
				}
				EditorGUILayout.EndHorizontal();
				
				BeginHorizontalWithLabel("  Type");
				req.Type = (BreakType)EditorGUILayout.EnumPopup(req.Type);
				EditorGUILayout.EndHorizontal();
				
				BeginHorizontalWithLabel("  Amount");
				req.Amount = EditorGUILayout.IntField(req.Amount);
				EditorGUILayout.EndHorizontal();
				
				BeginHorizontalWithLabel("  DamageType");
				req.DmgType = (DamageType)EditorGUILayout.EnumPopup(req.DmgType);
				EditorGUILayout.EndHorizontal();
			}
			
			if(GUILayout.Button("Add Break Condition",GUILayout.Width(140)))
				breaks.Add(new BreakRequirement());
			
		}
		if(action.GetType()==typeof(MoveBattleAction))
		{
			BeginHorizontalWithLabel("Position");
			((MoveBattleAction)action).TargetLocalPosition = EditorGUILayout.Vector3Field("Position", ((MoveBattleAction)action).TargetLocalPosition );
			EditorGUILayout.EndHorizontal();
			
			BeginHorizontalWithLabel("Duration");
			((MoveBattleAction)action).Duration = EditorGUILayout.FloatField(((MoveBattleAction)action).Duration);
			EditorGUILayout.EndHorizontal();
		}
		if(action.GetType()==typeof(ScriptBattleAction))
		{
			if(!ScriptEditor.DrawCommandGUI( ((ScriptBattleAction)action).BattleCommand ))
			{
				((ScriptBattleAction)action).BattleCommand = null;	//Set to null, because 'false' might mean that the user requested it to be deleted (clicked the X)
				Command newCom = ScriptEditor.NewCommandDropDown();
				if(newCom!=null)
				{
					((ScriptBattleAction)action).BattleCommand = newCom;
				}
			}
		}
		if(action.GetType()==typeof(AnimateBattleAction))
		{
			BeginHorizontalWithLabel("Animation");
			((AnimateBattleAction)action).AnimString = EditorGUILayout.TextField( ((AnimateBattleAction)action).AnimString );
			EditorGUILayout.EndHorizontal();
		}
		
		EditorGUILayout.EndVertical();
	}
	
}
