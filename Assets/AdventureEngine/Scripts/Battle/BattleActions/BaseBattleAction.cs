using UnityEngine;
using System.Collections;



[System.Serializable]
public class BaseBattleAction : ScriptableObject
{
	public float Timecode = 0f; 
	
	public float Duration = 1f;


	public virtual void Execute(FighterController fc) {}
}