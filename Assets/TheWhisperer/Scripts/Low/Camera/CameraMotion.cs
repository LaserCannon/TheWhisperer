using UnityEngine;
using System.Collections;


[RequireComponent(typeof(Camera))]
public class CameraMotion : MonoBehaviour
{

	public string Tag = "Main";
	
	
	
	void Awake()
	{
		CameraManager.main.RegisterCamera(Tag,this);
	}
	
	
}
