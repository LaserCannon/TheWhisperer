using UnityEngine;
using System.Collections;

public class DefaultMovementReticle : MovementReticle
{

	public Renderer reticle = null;


	private float _t = 0f;

	protected override void Update()
	{
		base.Update();

		if(_active)
		{
			_t += Time.deltaTime;

			float cur = Mathf.PingPong(_t,1f);

			//Vector3 pos = Vector3.Lerp(Vector3.forward*0.35f,Vector3.forward*0.6f,(Mathf.Cos(_t*Mathf.PI*2f+Mathf.PI/2f) + 1f)/2f);
			Vector3 pos = Vector3.Lerp(Vector3.forward*1.35f,Vector3.forward*1.6f,(Mathf.Cos(_t*Mathf.PI*2f+Mathf.PI/2f) + 1f)/2f);

			reticle.transform.localPosition = pos;

			reticle.transform.Rotate(Vector3.forward,120f*Time.deltaTime,Space.Self);
		}
	}

	public override void Activate()
	{
		if(!_active)
		{
			base.Activate();

			_t = 0f;
			
			//GetComponentInChildren<Projector>().fieldOfView = 15;

			LoopLightIntensity();

	//		iTween.ValueTo(gameObject,new Hashtable() {
	//			{"onupdate","SetLightIntensity"},
	//			{"time",0.15f},
	//			{"from",0f},
	//			{"to",1f},
	//			{"easetype",iTween.EaseType.linear},
	//		});
	//
	//		iTween.ValueTo(gameObject,new Hashtable() {
	//			{"onupdate","SetLightIntensity"},
	//			{"oncomplete","LoopLightIntensity"},
	//			{"time",0.15f},
	//			{"from",0f},
	//			{"to",1f},
	//			{"easetype",iTween.EaseType.linear},
	//		});
	//
			iTween.ColorTo(reticle.gameObject,new Hashtable() {
				{"a",1f},
				{"time",0.15f},
				{"easetype",iTween.EaseType.linear},
			});
		}
	}

	void LoopLightIntensity()
	{
		iTween.ValueTo(gameObject,new Hashtable() {
			{"onupdate","SetLightIntensityAndSize"},
			{"oncomplete","LoopLightIntensity"},
			{"time",1f},
			{"from",1f},
			{"to",0f},
			{"easetype",iTween.EaseType.linear},
		});
	}
	
	public override void Deactivate()
	{
		if(_active)
		{
			base.Deactivate();

			iTween.Stop(gameObject);

			iTween.ValueTo(gameObject,new Hashtable() {
				{"onupdate","SetLightIntensity"},
				{"time",0.15f},
				{"from",1f},
				{"to",0f},
				{"easetype",iTween.EaseType.linear},
			});

			iTween.ColorTo(reticle.gameObject,new Hashtable() {
				{"a",0f},
				{"time",0.15f},
				{"easetype",iTween.EaseType.linear},
			});
		}
	}



	void SetLightIntensity(float intensity)
	{
		Color c = GetComponentInChildren<Projector>().material.color;
		c.a = c.r = c.g = c.b = intensity;
		c.g *= 2f;
		GetComponentInChildren<Projector>().material.color = c;
	}

	void SetLightIntensityAndSize(float intensity)
	{
		SetLightIntensity(intensity/2f);

		GetComponentInChildren<Projector>().fieldOfView = Mathf.Lerp(30,1,intensity*intensity*intensity);
	}


}


