using UnityEngine;
using System.Collections;
using System.Collections.Generic;



public class EnemyFighterController : FighterController 
{

	int attackIndex = 0;

	public EnemyFighterController(EnemyFighter fght) : base(fght)
	{
	}

	
	public EnemyFighter EnemyFighterObject
	{
		get { return (EnemyFighter)FighterObject; }
	}
	
	public override void Begin ()
	{
		base.Begin ();
		
		stateMachine.SetState(new FighterStateActioning(FighterObject.GetAttackForIndex(0)));
		DoAttack(FighterObject.GetAttackForIndex(0),false);
	}

	protected override void OnAttackEnded ()
	{
		attackIndex = (attackIndex+1) % FighterObject.AttackCount;
		
		DoAttack(FighterObject.GetAttackForIndex(attackIndex),false);
		stateMachine.SetState(new FighterStateActioning(FighterObject.GetAttackForIndex(0)));
	}

}

