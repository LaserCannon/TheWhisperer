using UnityEngine;
using System.Collections;
using System.Collections.Generic;


[System.Serializable]
public class EnemyAttackPattern
{
	//TODO: This will eventually contain conditional behaviours, rather than just a looping list
	public List<Attack> AttackOrder = new List<Attack>();
}



public class EnemyFighter : Fighter
{
	
	public EnemyAttackPattern AttackPattern;

	public override Attack GetAttackForIndex (int index)
	{
		return AttackPattern.AttackOrder[index];
	}
	
	public override int AttackCount
	{
		get
		{
			return AttackPattern.AttackOrder.Count;
		}
	}

}
