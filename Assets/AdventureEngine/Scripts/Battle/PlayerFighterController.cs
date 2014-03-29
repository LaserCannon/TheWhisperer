using UnityEngine;
using System.Collections;
using System.Collections.Generic;




public class PlayerFighterController : FighterController
{

	public PlayerFighterController(PlayerFighter fght) : base(fght)
	{
	}

	public PlayerFighter PlayerFighterObject
	{
		get { return (PlayerFighter)FighterObject; }
	}
	
	public override void Begin ()
	{
		base.Begin ();

		Multitouch.OnTap += OnTap;
		Multitouch.OnSwipeEnd += OnSwipe;
		Multitouch.OnDoubleTap += OnDoubleTap;
	}


	protected override void OnAttackEnded()
	{
		FighterObject.Animate("idle");
	}



	private void FindAndDoAction(GestureType type)
	{
		foreach(PlayerAttack att in ((PlayerFighter)FighterObject).Attacks)
		{
			if(att.UseGesture==type)
			{
				DoAttack(att.AttackInfo,false);
				break;
			}
		}
	}



	public void OnTap(Vector2 pos)
	{
		FindAndDoAction(GestureType.Tap);
	}

	public void OnSwipe(GestureTouchData data)
	{
		FindAndDoAction(GestureType.Swipe);
	}

	public void OnDoubleTap(Vector2 pos)
	{
		FindAndDoAction(GestureType.DoubleTap);
	}

	
}
