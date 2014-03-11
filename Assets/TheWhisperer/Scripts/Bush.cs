using UnityEngine;
using System.Collections;

public class Bush : InteractiveProp
{

	public override void OnTapped()
	{
	}
	
	public override void OnTouched()
	{
		if(enabled)
		{
			Shake();
		}
	}
	
	public void OnSwiped()
	{
		if(rigidbody==null)
			gameObject.AddComponent<Rigidbody>();
		rigidbody.velocity = Vector3.up*5f;
		rigidbody.AddTorque(Vector3.forward*10f,ForceMode.VelocityChange);
		enabled = false;
	}
	
	public void Shake()
	{
		StartCoroutine(Shake_internal());
	}
	
	private IEnumerator Shake_internal()
	{
		Quaternion defaultRot = transform.rotation;
		
		float t = 0f;
		float rot = 0f;
		while(t<1f)
		{
			transform.rotation = defaultRot;
			float targrot = (Mathf.PingPong(t*10f,2f)-1f) * (1f-t);
			rot = Mathf.MoveTowards(rot,targrot,Time.deltaTime*10f);
			transform.Rotate(Vector3.forward,rot*30f*Mathf.Deg2Rad);
			t += Time.deltaTime*1.6f;
			yield return null;
		}
	}
}
