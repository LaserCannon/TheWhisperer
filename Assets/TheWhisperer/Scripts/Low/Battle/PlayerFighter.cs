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

//TODO: Find another script for this! (The multitouch script should be updated to use this for each gesture instead! That way, its expandable!)
//TODO: Also, diagram out how gesture priority works.
public abstract class Gesture
{
	
	//TODO: Consider having a "GestureInstance" and "GesturePrototype", so that we can keep track of things like touchPartCount per-touch
	
	private int touchStage = 0;
	public int TouchStage { get { return touchStage; } }
	
	private float confidence = 0.5f;
	protected float Confidence {
		get { return confidence; }
		set { confidence = Mathf.Clamp01(value); }
	}
	
	public abstract GestureType Type { get; }
	
	public abstract int OnTouchStart(Vector2 pos);		//returns '1' if a gesture finished.
	public abstract int OnTouchUpdate(Vector2 pos);
	public abstract int OnTouchUp(Vector2 pos);
	
	
	
	protected virtual void AdvanceTouchCount()
	{
		touchStage++;
	}
}




public class PlayerFighter : Fighter
{
	
	//TODO: Seperate moves list from physical fighter object? (Diagram this!)
	
	public List<PlayerAttack> Attacks = new List<PlayerAttack>();
	
	//List of gesture classes TO BE MOVED TO MULTITOUCH
	private List<Gesture> Gestures = new List<Gesture>();
	
	
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
		
		Multitouch.OnTouchStart += BeginGestureCull;
		Multitouch.OnTouch += GestureCull;
		Multitouch.OnTouchEnd += EndGestureCull;
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
		
		BlockMeter.Hide();
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
			BlockMeter.Show();
			BlockMeter.SetFill(blockingDelayProgress/0.25f);
		}
		else
		{
			DisableBlockMeter();
		}
	}
	
	public void DisableBlockMeter()
	{
		blockingDelayProgress = 0f;
		BlockMeter.Hide();
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
	
	
	
	
	public void BeginGestureCull(GestureTouchData data)
	{
		for(int i=0;i<Gestures.Count;i++)
		{
			int code = Gestures[i].OnTouchStart(data.Current);
			if(code==0)continue;
		}
	}
	
	public void GestureCull(GestureTouchData data)
	{
		for(int i=0;i<Gestures.Count;i++)
		{
			int code = Gestures[i].OnTouchUpdate(data.Current);
			if(code==0)continue;
		}
	}
	
	public void EndGestureCull(GestureTouchData data)
	{
		for(int i=0;i<Gestures.Count;i++)
		{
			int code = Gestures[i].OnTouchUp(data.Current);
			if(code==0)continue;
		}
		BlockMeter.Hide();
		blockingDelayProgress = 0;
	}
	
	
	
}
