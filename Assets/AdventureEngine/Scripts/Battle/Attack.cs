using UnityEngine;
using System.Collections;
using System.Collections.Generic;


public enum AttackEventType {
	None,
	Hit,
	Block,
	Vulnerable,
	InRange,
	
	Animate,
}

public enum DamageType {
	None,
	Blunt,
	Piercing,
	Magic,
}

public enum DamageElement {
	None,
	Fire,
	Water,
	Earth,
	Thunder,
}

public enum Knockback
{
	None,
	VeryLow,
	Low,
	Medium,
	High,
	VeryHigh,
	Impossible,
}




public enum BreakType { AttackCount, Damage, DamageType, Element }



[System.Serializable]
public class DamageInfo
{
	public float BaseDamage;
	public DamageType Type;
	public DamageElement Element;
	public Knockback KnockbackStrength = Knockback.Medium;
	
	public Vector3 Position = Vector3.forward;
	public float Radius = 2f;
}



//TODO: Make a generic "Timeline" class that iterates and can be used for anything
[System.Serializable]
public class Attack : ScriptableObject
{
	[SerializeField]
	public List<BaseBattleAction> Timeline = new List<BaseBattleAction>();
	
	
	
}

