using UnityEngine;
using System.Collections;

public interface ITappable
{
	void OnTapped();
	void OnTouched();
}

public class TappableTrigger : GameTrigger, ITappable
{
	public void OnTapped()
	{
		Target.OnTriggered(TriggerEventType.Enter);
	}
	
	public void OnTouched()
	{
	}
}
