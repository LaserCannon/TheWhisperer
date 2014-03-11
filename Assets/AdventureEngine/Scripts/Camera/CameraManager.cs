using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CameraManager : MonoBehaviour
{
	
	public static CameraManager _main;
	public static CameraManager main
	{
		get
		{
			if(Application.isPlaying)
			{
				if(_main==null)
				{
					GameObject go = new GameObject();
					_main = go.AddComponent<CameraManager>();
				}
			}
			return _main;
		}
		
	}
	
	public static Camera GameCamera;
	public static Camera _UICamera;
	
	private CameraMotion current;
	public CameraMotion Current
	{
		get { return current; }
	}
	
	
	
	private Dictionary<string,CameraMotion> cameraDB = new Dictionary<string, CameraMotion>();
	
	
	public static Camera UICamera
	{
		get
		{
			if(_UICamera==null)
			{
				//Set up the UI Camera
				GameObject go = new GameObject("UICamera");
				_UICamera = go.AddComponent<Camera>();
				_UICamera.orthographic = true;
				_UICamera.orthographicSize = 10f;
				_UICamera.clearFlags = CameraClearFlags.Depth;
				_UICamera.transform.position = new Vector3(0,-10000,0);
			}
			return _UICamera;
		}
	}
	
	
	void Awake()
	{
		_main = this;
		
		GameCamera = Camera.main;
		
	}
	
	
	
	public void RegisterCamera(string tg, CameraMotion cam)
	{
		if(!cameraDB.ContainsKey(tg))
		{
			cameraDB.Add(tg,cam);
		}
	}
	
	
	
	
	public void SetCurrentCamera(string tg)
	{
		if(cameraDB.ContainsKey(tg))
		{
			SetCurrentCamera(cameraDB[tg]);
		}
	}
	
	
	public void SetCurrentCamera(CameraMotion cam)
	{
		if(cam!=null)
		{
			if(current!=null)
			{
				current.enabled = false;
				current.camera.enabled = false;
			}
			
			current = cam;
			current.enabled = true;
			current.camera.enabled = true;
		}
	}
	
	
	
	
}
