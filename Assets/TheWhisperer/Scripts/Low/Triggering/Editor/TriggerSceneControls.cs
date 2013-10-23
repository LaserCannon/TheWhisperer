using UnityEngine;
using UnityEditor;
using System.Collections;

[InitializeOnLoad]
public class TriggerSceneControls
{
	static TriggerSceneControls()
	{
		SceneView.onSceneGUIDelegate += onSceneGUI;
		EditorApplication.update += update;
	}
	
	~TriggerSceneControls()
	{
		SceneView.onSceneGUIDelegate -= onSceneGUI;
		EditorApplication.update -= update;
	}
	
	private static BaseTrigger currentTrigger;
	private static Vector3 curHandlePos;
	

	
	static void onSceneGUI(SceneView view)
	{
		
		if(currentTrigger!=null && Event.current.type==EventType.MouseUp)
		{
			Ray r = HandleUtility.GUIPointToWorldRay(Event.current.mousePosition);
			RaycastHit[] hits = Physics.RaycastAll(r);
			foreach(RaycastHit hit in hits)
			{
				if(hit.collider.gameObject.GetComponent<Triggerable>())
				{
					currentTrigger.Target = hit.collider.gameObject.GetComponent<Triggerable>();
					EditorUtility.SetDirty(currentTrigger);
				}
			}
		}
					
					
		if(Selection.activeGameObject!=null)
		{
			if((currentTrigger!=null && currentTrigger.gameObject!=Selection.activeGameObject) || Event.current.type==EventType.MouseUp || curHandlePos==Vector3.zero)
				curHandlePos = Vector3.right * 5f + Vector3.up*5f;
			
			currentTrigger = Selection.activeGameObject.GetComponent<BaseTrigger>();
		}
		else
			currentTrigger = null;
		
		
		if(currentTrigger!=null)
		{
			Camera cam = SceneView.currentDrawingSceneView.camera;
			if(cam!=null)
			{
				Handles.color = new Color(0.5f,1f,0.5f,0.4f);
				curHandlePos = Handles.Slider2D(curHandlePos + currentTrigger.transform.position,Vector3.down,cam.transform.up,cam.transform.right,1f,Handles.DotCap,Vector3.zero) - currentTrigger.transform.position;
				
				Vector3 toHandle = curHandlePos;
				
				Handles.DrawBezier(currentTrigger.transform.position,curHandlePos + currentTrigger.transform.position,
					currentTrigger.transform.position + new Vector3(toHandle.x,0f,0f),
					curHandlePos+currentTrigger.transform.position - new Vector3(toHandle.x/6f,toHandle.y/3f,0f),Color.grey,null,3f);
			}
		}
	}
	
	static void update()
	{
	}
	
}
