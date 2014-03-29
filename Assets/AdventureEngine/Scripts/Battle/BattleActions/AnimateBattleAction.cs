using UnityEngine;
using System.Collections;


[System.Serializable]
public class AnimateBattleAction : BaseBattleAction
{
	
	public string AnimString = "";

	public float PlaybackSpeed = 1f;

	public override void Execute(FighterController fc)
	{
		fc.FighterObject.Animate(AnimString,Duration,PlaybackSpeed);
	}
	
}
