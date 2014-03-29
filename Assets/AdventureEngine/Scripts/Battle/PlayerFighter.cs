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
	
	
	public List<PlayerAttack> Attacks = new List<PlayerAttack>();


	public override Attack GetAttackForIndex (int index)
	{
		return Attacks[index].AttackInfo;
	}

	public override int AttackCount
	{
		get
		{
			return Attacks.Count;
		}
	}

}
