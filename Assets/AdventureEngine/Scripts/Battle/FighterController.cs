using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class FighterController
{

	protected int currentHP = 0;

	protected Vulnerability currentVulnerability = null;
	
	
	protected FighterStateMachine stateMachine = null;

	protected ActionExecutor currentAttackExecuting = null;



	//Callbacks needed:
	//onAttackStarted
	//onAttackEnded
	//onAttackInterrupted


	private Fighter fighter = null;
	public Fighter FighterObject
	{
		get { return fighter; }
	}



	public FighterController(Fighter ftr)
	{
		fighter = ftr;
		currentVulnerability = ftr.DefaultVulnerability;
		currentHP = ftr.MaxHP;
		fighter.hit += TakeDamage;

		stateMachine = new FighterStateMachine(fighter);
	}


	public virtual void Begin()
	{
		stateMachine.SetState(new FighterStateIdle());
	}


	public void Update(float delta)
	{
		stateMachine.Update(delta);
		
		if(currentAttackExecuting!=null)
		{
			currentAttackExecuting.Update(delta);
		}
	}

	private void AttackEnded()
	{
		currentAttackExecuting.actionFinished -= AttackEnded;
		currentAttackExecuting = null;

		OnAttackEnded();
	}

	protected virtual void OnAttackEnded()
	{
	}

	public void DoAttack(Attack attack, bool interrupt)
	{
		if(currentAttackExecuting==null || interrupt)
		{
			currentAttackExecuting = new ActionExecutor(attack, this);
			currentAttackExecuting.actionFinished += AttackEnded;
		}
	}


	public void AttemptDamage(DamageBattleAction damage)
	{
		List<Fighter> fightersToHit = fighter.GetFightersInRange(damage.LocalPosition, damage.Radius);

		HitVisualizer.Visualize(FighterObject.transform.TransformPoint(damage.LocalPosition),damage.Radius);

		foreach(Fighter f in fightersToHit)
		{
			f.Hit (damage.Damage);
		}
	}
	
	public void TakeDamage(DamageInfo damage)
	{
		if(damage.Dodgeable && ((FighterState)stateMachine.TopState).IsDodging)
		{
			//Dodged!

			return;
		}

		if(currentVulnerability.IsBrokenBy(damage.Type,damage.BaseDamage))
		{
			stateMachine.SetState(new FighterStateIncapacitated( damage.DoesKnockback || !currentVulnerability.CanBeKnockedDown ));
		}

		currentHP -= damage.BaseDamage;
	}

}
