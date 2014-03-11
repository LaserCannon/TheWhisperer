using UnityEngine;
using System.Collections;


public enum TriggerEventType { Enter, Exit, }

public enum TriggeringObjectType {
	AllObjects,
	PlayerOnly
}


public class BaseTrigger : MonoBehaviour
{
	public Triggerable Target;
	
	
	public void TriggerMe(TriggerEventType type)
	{
		Target.OnTriggered(type);
	}
	
	
	void OnDrawGizmos()
	{
		if(Target!=null)
		{
			GizmoUtils.DrawArrow(transform.position,Target.transform.position);
		}
	}
	
	
}


//Generic trigger that triggers on enter/exit
public class GameTrigger : BaseTrigger
{
	public TriggeringObjectType TriggeringType = TriggeringObjectType.PlayerOnly;
	
	
	void Awake()
	{
		if(renderer!=null)
			renderer.enabled = false;
	}
	
	
	void OnTriggerEnter(Collider other)
	{
		if(CanTrigger(other.gameObject))
			Target.OnTriggered(TriggerEventType.Enter);
	}
	
	void OnTriggerExit(Collider other)
	{
		if(CanTrigger(other.gameObject))
			Target.OnTriggered(TriggerEventType.Exit);
	}
	
	
	
	
	//TODO: Expand this functionality to all kinds of layers
	public bool CanTrigger(GameObject obj)
	{
		bool cantrig = false;
		
		switch(TriggeringType)
		{
		case TriggeringObjectType.AllObjects:
			cantrig = true;
			break;
		case TriggeringObjectType.PlayerOnly:
			cantrig = (obj == GameController.main.Player.gameObject);
			break;
		}
		
		return cantrig;
	}
	
	
}
