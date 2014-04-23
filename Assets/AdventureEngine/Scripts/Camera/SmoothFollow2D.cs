using UnityEngine;

using System.Collections;



public class SmoothFollow2D : MonoBehaviour {
	
	
	
	
	
	public Transform target ;
	
	float  smoothTime = 0.3f;
	
	private Transform thisTransform ;
	
	private Vector2 velocity;
	
	public float yOffset = 1f;

	public float DistanceToPlayer;

	public float distanceyOffset;

	public float storedFOV;


	
	
	public bool useSmoothing = false;
	
	void Start()
		
	{
		target = GameObject.Find("PC_Keso(Clone)").transform;

		thisTransform = transform;
		
		velocity = new Vector2(0.5f, 0.5f);

		storedFOV =  transform.camera.fieldOfView;
		
	}
	
	
	
	void Update() 
		
	{

		DistanceToPlayer = Vector3.Distance(target.transform.position, transform.position);
		
		Vector2 newPos2D = Vector2.zero;
		
		if (useSmoothing){
			
			newPos2D.x =  Mathf.SmoothDamp( thisTransform.position.x, target.position.x, ref velocity.x, smoothTime);
			
			newPos2D.y= Mathf.SmoothDamp( thisTransform.position.y, target.position.y + yOffset, ref velocity.y, smoothTime) ;
			
		}else{
			
			newPos2D.x = target.position.x;
			
			newPos2D.y = target.position.y + yOffset + (DistanceToPlayer/5);

			
		}
		
		Vector3 newPos = new Vector3(newPos2D.x, newPos2D.y , transform.position.z);

		transform.position = Vector3.Slerp(transform.position, newPos, Time.time);

		transform.LookAt(target.transform.position);
		
		camera.fieldOfView = storedFOV - (DistanceToPlayer);
		
	}
	
}