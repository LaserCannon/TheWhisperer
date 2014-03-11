using UnityEngine;
using System.Collections;

public static class PlayerInput
{
	static PlayerInput()
	{
		Multitouch.OnTap += OnTap;
		Multitouch.OnTouchStart += OnTouchStart;
		
		Multitouch.OnSwipeEnd += OnSwipe;
	}
	
	public static void Init() {}
	
	private static void OnTap(Vector2 pos)
	{
		Raycast(pos,"OnTapped");
	}
	
	private static void OnTouchStart(GestureTouchData data)
	{
		Raycast(data.Current, "OnTouched");
	}
	
	private static void OnSwipe(GestureTouchData data)
	{
		Vector2 shootPos = (data.Current+data.Start) / 2f;
		
		float shootWidth = (data.Current-data.Start).magnitude / (Screen.height/5f);
		
		if(shootWidth > 2f)
		shootWidth = 2f;
		
		Spherecast(shootPos,shootWidth,"OnSwiped");
	}
	
	
		
	private static void Raycast(Vector2 pos, string message)
	{
		RaycastHit hit = new RaycastHit();
		
		Ray r = Camera.main.ScreenPointToRay(new Vector3(pos.x,pos.y));
		
		if(Physics.Raycast(r,out hit))
		{
			hit.transform.gameObject.SendMessage(message,SendMessageOptions.DontRequireReceiver);
		}
	}
		
	private static void Spherecast(Vector2 pos, float radius, string message)
	{
		Ray r = Camera.main.ScreenPointToRay(new Vector3(pos.x,pos.y));
		
		RaycastHit[] hits = Physics.SphereCastAll(r,radius);
		foreach(RaycastHit hit in hits)
		{
			hit.transform.gameObject.SendMessage(message,SendMessageOptions.DontRequireReceiver);
		}
	}
	
	
}
