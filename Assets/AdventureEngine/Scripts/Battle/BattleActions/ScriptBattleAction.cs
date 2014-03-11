using UnityEngine;
using System.Collections;



[System.Serializable]
public class ScriptBattleAction : BaseBattleAction
{
	public Command BattleCommand;
	
	public void Execute()
	{
		BattleCommand.Execute();
	}
}
