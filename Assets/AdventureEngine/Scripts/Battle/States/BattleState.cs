using UnityEngine;
using System.Collections;

public class BattleState : State
{
	protected BattleCoordinator coordinator = null;


	public virtual void Init(BattleCoordinator coord)
	{
		coordinator = coord;
	}


}
