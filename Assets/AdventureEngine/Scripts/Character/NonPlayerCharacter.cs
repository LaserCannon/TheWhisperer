using UnityEngine;
using System.Collections;

public class NonPlayerCharacter : PathCharacter
{
	
	public Triggerable TriggerOnTalk;
	
	
	public void OnInteract()
	{
		if(TriggerOnTalk!=null)
		{
			TriggerOnTalk.OnTriggered(TriggerEventType.Enter);
		}
	}
	
}
