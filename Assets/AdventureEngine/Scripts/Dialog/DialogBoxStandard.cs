using UnityEngine;
using System.Collections;

public class DialogBoxStandard : DialogBox
{

	protected UISprite _background = null;

	protected override void OnStart ()
	{
		base.OnStart ();

		_background = GetComponentInChildren<UISprite>();

		delay += 0.5f;

		iTween.ScaleFrom(gameObject, new Hashtable() {
			{"scale",Vector3.zero},
			{"time",0.5f},
			{"easeType",iTween.EaseType.easeOutElastic},
		});
	}

	protected override void OnClose ()
	{
		base.OnClose ();

		iTween.ScaleTo(gameObject, new Hashtable() {
			{"scale",Vector3.zero},
			{"time",0.25f},
			{"easeType",iTween.EaseType.easeInSine},
		});
		iTween.ScaleTo(textLabel.gameObject, new Hashtable() {
			{"scale",Vector3.zero},
			{"time",0.25f},
			{"easeType",iTween.EaseType.easeInSine},
		});
	}



}
