using UnityEngine;
using System.Collections;



public enum TriggerPlayLimit { None, OnceInScene, OnceAlways, }



public interface ITriggerable
{
	void OnTriggered(TriggerEventType type);
}


public abstract class Triggerable : MonoBehaviour, ITriggerable
{
	
	public abstract void OnTriggered(TriggerEventType type);
	
}




