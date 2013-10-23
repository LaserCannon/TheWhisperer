using UnityEngine;
using System.Collections;

public class NonPlayerCharacter : PathCharacter
{
	
	public Script ScriptOnTalk;
	
	
	public void OnInteract()
	{
		if(ScriptOnTalk!=null)
		{
			ScriptOnTalk.OnTriggered(TriggerEventType.Enter);
		}
	}
	
}
