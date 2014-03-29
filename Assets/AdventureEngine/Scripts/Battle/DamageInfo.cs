using UnityEngine;
using System.Collections;


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



[System.Serializable]
public class DamageInfo
{
	public int BaseDamage;
	public DamageType Type;
	public DamageElement Element;
	public bool DoesKnockback = true;
	
	public Vector3 Position = Vector3.forward;
	public float Radius = 2f;

	public bool Dodgeable = true;
}
