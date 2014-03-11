using UnityEngine;
using System.Collections;
using System.Collections.Generic;



public enum GestureType {
	None,
	Tap,
	TapHold,
	DoubleTap,
	DoubleTapHold,
	Swipe,
	Pinch,
	Rub,
	Circle,
	VShape,
}

[System.Serializable]
public class PlayerAttack
{
	public Attack AttackInfo;
	
	public GestureType UseGesture;
	
	
}



public class PlayerFighter : Fighter
{
	
	//TODO: Seperate moves list from physical fighter object? (Diagram this!)
	
	public List<PlayerAttack> Attacks = new List<PlayerAttack>();
	
	
	public Vulnerability BlockVulnerability;
	
	
	public string BlockAnimString = "block";
	
	
	public DefenseMeter BlockMeter;
	
	
	new void Awake ()
	{
		base.Awake();
		
		Multitouch.OnPinchEnd += PinchEnded;
		Multitouch.OnTap += Tapped;
		Multitouch.OnDoubleTap += DoubleTapped;
		Multitouch.OnDoubleTapHold += DoubleTapHeld;
		Multitouch.OnSwipeEnd += Swiped;
		
		Multitouch.OnTouchHoldAttempt += AddToBlockMeter;
		Multitouch.OnTouchHoldStart += Block;
		Multitouch.OnTouchHoldEnd += EndBlock;
		Multitouch.OnTouchHoldAbandonded += DisableBlockMeter;
	}
	
	void OnDestroy ()
	{
		Disconnect();
	}

	public void Disconnect()
	{
		Multitouch.OnPinchEnd -= PinchEnded;
		Multitouch.OnTap -= Tapped;
		Multitouch.OnDoubleTap -= DoubleTapped;
		Multitouch.OnDoubleTapHold -= DoubleTapHeld;
		Multitouch.OnSwipeEnd -= Swiped;
		
		Multitouch.OnTouchHoldAttempt -= AddToBlockMeter;
		Multitouch.OnTouchHoldStart -= Block;
		Multitouch.OnTouchHoldEnd -= EndBlock;
		Multitouch.OnTouchHoldAbandonded -= DisableBlockMeter;
	}
	
	
	public List<Attack> GetAttacksForGesture(GestureType type)
	{
		//Find all attacks for a given gesture
		List<Attack> validAttacks = new List<Attack>();
		for(int i=0;i<Attacks.Count;i++)
		{
			if(Attacks[i].UseGesture == type)
				validAttacks.Add (Attacks[i].AttackInfo);
		}
		
		//We SHOULD only find one attack...
		if(validAttacks.Count>1)	Debug.LogWarning("More than one attack of type 'Tap' were found! Using the first one...",gameObject);
		
		return validAttacks;
	}
	
	
	public void Block(Vector2 pos)
	{
		float distFromPlayer = ( Camera.main.WorldToScreenPoint(collider.bounds.center) - new Vector3(pos.x,pos.y) ).magnitude;
		
		if(distFromPlayer < Screen.width/5f)
		{
		//	Debug.Log("Block!");
			currentVulnerability = BlockVulnerability;
			animation.CrossFade(BlockAnimString,0.1f);
		}
		
	//	BlockMeter.Hide();
	}
	
	public void EndBlock(Vector2 pos)
	{
		blockingDelayProgress = 0f;
		currentVulnerability = null;
		animation.CrossFade("idle",0.15f);
		DisableBlockMeter();
	}
	
	
	private float blockingDelayProgress = 0f;
	public void AddToBlockMeter(Vector2 pos)
	{
		float distFromPlayer = ( Camera.main.WorldToScreenPoint(collider.bounds.center) - new Vector3(pos.x,pos.y) ).magnitude;
		
		if(distFromPlayer < Screen.width/5f)
		{
			blockingDelayProgress += Time.deltaTime;
	//		BlockMeter.Show();
	//		BlockMeter.SetFill(blockingDelayProgress/0.25f);
		}
		else
		{
			DisableBlockMeter();
		}
	}
	
	public void DisableBlockMeter()
	{
		blockingDelayProgress = 0f;
	//	BlockMeter.Hide();
	}
	
	
	public void PinchEnded(float n)
	{
	}
	
	public void Tapped(Vector2 pos)
	{
		List<Attack> attacks = GetAttacksForGesture(GestureType.Tap);
		
		if(attacks.Count>0)
		{
			StartCoroutine (DoAttack (attacks[0]));
		}
	}
	
	public void DoubleTapped(Vector2 pos)
	{
		List<Attack> attacks = GetAttacksForGesture(GestureType.DoubleTap);
		
		if(attacks.Count>0)
			StartCoroutine (DoAttack (attacks[0]));
	}
	
	public void DoubleTapHeld(GestureTouchData data)
	{
	}
	
	public void Swiped(GestureTouchData data)
	{
		List<Attack> attacks = GetAttacksForGesture(GestureType.Swipe);
		
		if(attacks.Count>0)
		{
			StartCoroutine (DoAttack (attacks[0]));
		}
	}
	
	

	
	
}
