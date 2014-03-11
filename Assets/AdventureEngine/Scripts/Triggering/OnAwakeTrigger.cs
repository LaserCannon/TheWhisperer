using UnityEngine;
using System.Collections;

public enum OnAwakeTriggerType { Awake, Start, Enable }

public class OnAwakeTrigger : BaseTrigger
{
	public OnAwakeTriggerType TriggerType = OnAwakeTriggerType.Awake;
	public bool EnableOnExit = false;
	
	void Awake()
	{
		if(TriggerType==OnAwakeTriggerType.Awake)
			TriggerMe(TriggerEventType.Enter);
	}
	void Start()
	{
		if(TriggerType==OnAwakeTriggerType.Start)
			TriggerMe(TriggerEventType.Enter);
	}
	void OnEnable()
	{
		if(TriggerType==OnAwakeTriggerType.Enable)
			TriggerMe(TriggerEventType.Enter);
	}
	void OnDisable()
	{
		if(!EnableOnExit)	return;
		
		if(TriggerType==OnAwakeTriggerType.Enable)
			TriggerMe(TriggerEventType.Exit);
	}
	void OnDestroy()
	{
		if(!EnableOnExit)	return;
		
		if(TriggerType==OnAwakeTriggerType.Awake || TriggerType==OnAwakeTriggerType.Start)
			TriggerMe(TriggerEventType.Exit);
	}
}
