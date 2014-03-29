using UnityEngine;
using System.Collections;
using System.Collections.Generic;



public enum BreakType { Attack, Damage, DamageType, Element }



//TODO: Make a generic "Timeline" class that iterates and can be used for anything
[System.Serializable]
public class Attack : ScriptableObject
{
	[SerializeField]
	public List<BaseBattleAction> Timeline = new List<BaseBattleAction>();
	
	
	
}

