using UnityEngine;
using System.Collections;

public class SideCinemaCamera : CameraMotion
{
	private static SideCinemaCamera _main;
	public static SideCinemaCamera main
	{
		get { return _main; }
	}
	
	
	public Vector2 InnerSquareRatioVector = Vector2.one;
	
	public float MinCameraPos = -5f;
	public float MaxCameraPos = 5f;
	
	
	private Vector3 cameraTargetPosition = Vector3.zero;
	
	private Vector3 focusPos = Vector3.zero;
	private bool focused = false;
	
	private float origFoV = 15f;
	private float targetFoV = 15f;
	
	void Awake()
	{
		_main = this;
	}
	
	void Start()
	{
		cameraTargetPosition = transform.position;
		origFoV = targetFoV = camera.fieldOfView;
	}
	
	void LateUpdate ()
	{
		//TODO: Organize this! Comment it! Beef it up! Implement smooth movement/velocities! More features!!!
		
		if(GameController.main.Player == null)	return;	//For now, only follow the player
		
		Vector3 targ3dPos = focused ? focusPos : GameController.main.Player.transform.position;
		
		Vector3 targ2dPos = camera.WorldToScreenPoint(targ3dPos);
		
		float xoffset = 0f;
		if(targ2dPos.x < Screen.width * ((1-InnerSquareRatioVector.x)/2f))
		{
			Vector3 edge2dPos = targ2dPos;
			edge2dPos.x = Screen.width * ((1-InnerSquareRatioVector.x)/2f);
			Vector3 edge3dPos = camera.ScreenToWorldPoint(edge2dPos);
			
			xoffset = targ3dPos.x - edge3dPos.x;
		}
		if(targ2dPos.x > Screen.width * (InnerSquareRatioVector.x + (1-InnerSquareRatioVector.x)/2f))
		{
			Vector3 edge2dPos = targ2dPos;
			edge2dPos.x = Screen.width * (InnerSquareRatioVector.x + (1-InnerSquareRatioVector.x)/2f);
			Vector3 edge3dPos = camera.ScreenToWorldPoint(edge2dPos);
			
			xoffset = targ3dPos.x - edge3dPos.x;
		}
		
		Vector3 targPos = targ3dPos;
		targPos.x = transform.position.x;
		targPos.x += xoffset;
		
		float dist = targ3dPos.z - transform.position.z;
		float heightAbove = dist * Mathf.Tan(transform.eulerAngles.x*Mathf.Deg2Rad)+1.5f;
		
		if(!focused)
			cameraTargetPosition.x = Mathf.Clamp (targPos.x,MinCameraPos,MaxCameraPos);
		else
			cameraTargetPosition.x = targPos.x;
		cameraTargetPosition.y = targPos.y + heightAbove;
		
		transform.position = Vector3.Lerp (transform.position, cameraTargetPosition, Time.deltaTime * 10f);
		
		camera.fieldOfView = Mathf.Lerp (camera.fieldOfView, targetFoV, Time.deltaTime * 5f);
	}
	
	
	
	public void FocusOn(Vector3 position, float FoV)
	{
		focused = true;
		focusPos = position;
		targetFoV = FoV;
	}
	
	public void UnFocus()
	{
		focused = false;
		targetFoV = origFoV;
	}
	
	
#if UNITY_EDITOR
	void OnDrawGizmos()
	{
		Debug.DrawLine (new Vector3(MinCameraPos,transform.position.y+5f,transform.position.z), new Vector3(MinCameraPos,transform.position.y-5f,transform.position.z));
		Debug.DrawLine (new Vector3(MaxCameraPos,transform.position.y+5f,transform.position.z), new Vector3(MaxCameraPos,transform.position.y-5f,transform.position.z));
	}
#endif
	
	
}
