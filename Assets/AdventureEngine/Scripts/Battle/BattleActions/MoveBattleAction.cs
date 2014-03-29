using UnityEngine;
using System.Collections;


[System.Serializable]
public class MoveBattleAction : BaseBattleAction
{
	
	public Vector3 TargetLocalPosition = Vector3.zero;


	public override void Execute(FighterController fc)
	{
		fc.FighterObject.MoveTo(TargetLocalPosition,Duration);
	}

}
