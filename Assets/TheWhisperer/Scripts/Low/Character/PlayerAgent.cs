using UnityEngine;
using System.Collections;

public class PlayerAgent : PathCharacter
{
	public static PlayerAgent main;
	
	
	private bool isEnabled = true;
	
	public bool Enabled
	{
		get { return isEnabled; }
		set {
			//If we are disabling the player's movement, be sure to appropriately come to a stop
			if(value==false)
				Halt ();
			isEnabled = value;
		}
	}
	
	
	
	void Awake()
	{
		main = this;
	}
	
	
	
	protected void OnEnable()
	{
		Multitouch.OnTouchHold += MoveTowardScreenPosition;
		Multitouch.OnDrag += MoveTowardScreenPosition;
		Multitouch.OnTouchEnd += Halt;
		Multitouch.OnDragEnd += Halt;
		Multitouch.OnDoubleTap += MoveTowardScreenPosition;
		Multitouch.OnDoubleTap += CheckForInteraction;
	}
	
	protected void OnDisable()
	{
		Multitouch.OnTouchHold -= MoveTowardScreenPosition;
		Multitouch.OnDrag -= MoveTowardScreenPosition;
		Multitouch.OnTouchEnd -= Halt;
		Multitouch.OnDragEnd -= Halt;
		Multitouch.OnDoubleTap -= MoveTowardScreenPosition;
		Multitouch.OnDoubleTap -= CheckForInteraction;
	}
	
	
	
	
	// -- Callbacks
	
	void CheckForInteraction(Vector2 screenpos)
	{
		Ray r = Camera.main.ScreenPointToRay(screenpos);
		RaycastHit hit = new RaycastHit();
		
		//TODO: Consider layers
		if(Physics.Raycast(r,out hit))
		{
			if(hit.collider.gameObject!=gameObject)
				Interact(hit.collider.gameObject);
		}
	}
	
	public void Interact(GameObject obj)
	{
		if(Enabled)
		{
			StartCoroutine(_Interact(obj));
		}
	}
	
	private IEnumerator _Interact(GameObject obj)
	{
		if(Enabled)
		{
			Vector3 pos = obj.transform.position;
			
			SetDestination(pos);
			
			yield return WaitForDestinationOrChanged();

			if(!Enabled)
				yield break;
			
			if(agentRef.destination==pos && obj!=null)	//TODO: This is crude; we should keep an ID of this movement rather than comparing positions
				obj.SendMessage("OnInteract",SendMessageOptions.DontRequireReceiver);
		}
	}
	
	void MoveTowardScreenPosition(GestureTouchData data)	//Callback from Multitouch event
	{
		MoveTowardScreenPosition(data.Current);
	}
	
	void MoveTowardScreenPosition(Vector2 screenpos)	//Callback from Multitouch event
	{
		if(Enabled)
		{
			//TODO: Consider layers
			//Cast a ray from the screen...
			Vector3 pos = transform.position;
			Ray r = Camera.main.ScreenPointToRay(screenpos);
			
			//RaycastHit hit = new RaycastHit();	
			//if(Physics.Raycast(r,out hit,touchMovementLayerMask))
			//{
			//	if(hit.collider.gameObject!=gameObject)
			//		pos = hit.point;
				
			//	Debug.Log (hit.collider.name);
			//}
			//else
			//{
				//If we don't hit anything, find a point roughly the same distance away from the camera that the player is
				Plane p = new Plane(Vector3.up,transform.position);
				float dist;
				
				if(!p.Raycast(r,out dist))
					dist = (Camera.main.transform.position-transform.position).magnitude;
				
				pos = r.GetPoint(dist);
			//}
			
			//...and set a destination for the point that we hit.
			if(pos!=transform.position)
			{
				SetDestination(pos);
				
				//Change rotation to face movement TODO: Put this elsewhere
				Vector3 vel = this.Velocity;
				vel.y = 0f;
				//transform.LookAt(transform.position+vel);
			}
		}
	}
	
	void Halt(GestureTouchData data)
	{
		if(Enabled)
		{
			Halt ();
		}
	}
	
	
	
}





