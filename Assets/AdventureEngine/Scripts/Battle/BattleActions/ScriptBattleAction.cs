using UnityEngine;
using System.Collections;



[System.Serializable]
public class ScriptBattleAction : BaseBattleAction
{
	public Command BattleCommand;
	
	public override void Execute(FighterController controller)
	{
		AsyncServices.RunCoroutine( BattleCommand.Execute() );
	}
}
