using UnityEngine;
using System.Collections;


[System.Serializable]
public class DamageBattleAction : BaseBattleAction
{
	public DamageInfo Damage = new DamageInfo();
	
	public Vector3 LocalPosition = Vector3.forward;
	public float Radius = 3;
	
	public override void Execute(FighterController fc)
	{
		fc.AttemptDamage(this);
	}
}
