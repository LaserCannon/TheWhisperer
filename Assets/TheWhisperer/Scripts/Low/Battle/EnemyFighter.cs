using UnityEngine;
using System.Collections;
using System.Collections.Generic;


[System.Serializable]
public class EnemyAttackPattern
{
	//TODO: This will eventually contain conditional behaviours, rather than just a looping list
	public List<Attack> AttackOrder = new List<Attack>();
}


//TODO: Make an "Enemy Fighter" and an "Enemy Fighter Profile"? Might want to seperate the physical fighter from the attack lists, etc.

public class EnemyFighter : Fighter
{
	public EnemyAttackPattern AttackPattern;
	
	public int speed = 5;
	
	
	void Start()
	{
		StartCoroutine(BattleLoop());
	}
	
	
	public IEnumerator BattleLoop()
	{
		int curAttackProgress = 0;
		
		if(AttackPattern.AttackOrder.Count==0)
		{
			Debug.LogError("Error! Enemy "+gameObject.name+"does not have any attacks in his attack pattern!");
		}
		
		while(!IsDead)
		{
			yield return new WaitForSeconds(5f - (float)speed/5f);
			
			if(!IsDead)
			{
				yield return StartCoroutine(DoAttack(AttackPattern.AttackOrder[curAttackProgress]));
				
				curAttackProgress = (curAttackProgress+1) % AttackPattern.AttackOrder.Count;
			}
		}
		Debug.Log (gameObject.name + " died...");
	}
}

