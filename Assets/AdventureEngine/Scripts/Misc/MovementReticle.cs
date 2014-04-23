using UnityEngine;
using System.Collections;

public class MovementReticle : MonoBehaviour
{


	private Vector3 _targetPos = Vector3.zero;
	private Quaternion _targetRot = Quaternion.identity;


	protected bool _active = false;

	public GameObject fingerObject = null;

	protected virtual void Update()
	{
//		if(Input.GetMouseButtonDown(0))
//		{
//			EnableAndPlace(Input.mousePosition);
//		}
//
//		if(Input.GetMouseButton(0))
//		{
//			PlaceByScreenPos(Input.mousePosition);
//		}
//
//		if(Input.GetMouseButtonUp(0))
//		{
//			Deactivate ();
//		}

		if(_active)
		{
			UpdatePosition();
		}
	}

	public virtual void EnableAndPlace(Vector2 screenPos)
	{
		PlaceByScreenPos(screenPos);
		transform.position = _targetPos;

		Activate();
	}

	public virtual void Activate()
	{
		_active = true;
	}

	public virtual void Deactivate()
	{
		_active = false;
	}

	public void PlaceByScreenPos(Vector2 screenPos)
	{
		Ray ray = Camera.main.ScreenPointToRay(screenPos);
		RaycastHit hit = new RaycastHit();

		if(Physics.Raycast(ray,out hit))
		{
			_targetPos = hit.point;
		}
		else
		{
			Plane plane = new Plane(Vector3.up,_targetPos);
			float dist = 0f;
			if(plane.Raycast(ray,out dist))
			{
				_targetPos = ray.GetPoint(dist);
			}
		}
	}

	private void UpdatePosition()
	{

		Vector3 actualPos = transform.position;
		NavMeshHit nmhit = new NavMeshHit();
		if(NavMesh.SamplePosition(_targetPos,out nmhit,Mathf.Infinity,1))
		{
			actualPos = nmhit.position;
		}

		transform.position = Vector3.Lerp (transform.position, actualPos, Time.deltaTime * 10f);

		if(fingerObject!=null)
		{
			fingerObject.transform.position = Vector3.Lerp(fingerObject.transform.position, _targetPos, Time.deltaTime * 40f);
		}

		Vector3 dif = _targetPos-actualPos;
		dif.y = 3f;

		_targetRot = Quaternion.Slerp(Quaternion.LookRotation(Vector3.up,-Vector3.forward),Quaternion.LookRotation(dif,-Vector3.forward),0.5f);

		transform.rotation = Quaternion.Slerp(transform.rotation,_targetRot,Time.deltaTime*20f);
	}
}
