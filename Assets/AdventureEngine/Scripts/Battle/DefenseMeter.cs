using UnityEngine;
using System.Collections;

public class DefenseMeter : MonoBehaviour
{

	public Renderer Background;
	public Renderer Front;
	
	
	
	void Awake()
	{
		Front.transform.parent = Background.transform;
		Front.transform.localScale = Vector3.zero;
	}
	
	
	public void SetFill(float percentFull)
	{
		Front.transform.localScale = new Vector3(percentFull,percentFull,percentFull);
	}
	
	public void Show()
	{
		Background.enabled = true;
		Front.enabled = true;
	}
	
	public void Hide()
	{
		Background.enabled = false;
		Front.enabled = false;
	}
	
}
