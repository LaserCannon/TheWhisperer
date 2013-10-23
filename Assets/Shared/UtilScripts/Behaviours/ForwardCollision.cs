using UnityEngine;
using System.Collections;

public class ForwardCollision : MonoBehaviour {
	
	public GameObject target;
	
	GameObject Target
	{
		get {
			if(target==null)
				return transform.parent.gameObject;
			return target;
		}
	}
	
	
	void OnCollisionEnter(Collision col)
	{
		Target.SendMessage("OnCollisionEnter",col,SendMessageOptions.DontRequireReceiver);
	}
	void OnCollisionExit(Collision col)
	{
		Target.SendMessage("OnCollisionEnter",col,SendMessageOptions.DontRequireReceiver);
	}
}
