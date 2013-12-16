using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Animation))]
public class CharacterAnimation : MonoBehaviour
{
	
	public string IdleAnimation = "";
	public string RunAnimation = "";
	
	
	
	public void PlayIdle()
	{
		if(animation[IdleAnimation]!=null)
		{
			animation.CrossFade(IdleAnimation,0.2f);
		}
	}
	
	public void PlayRun()
	{
		if(animation[RunAnimation]!=null)
		{
			animation.CrossFade(RunAnimation,0.2f);
		}
	}
	
	
	
	public void PlayAnimation(string anim)
	{
		animation.Play(anim);
	}
	
}
