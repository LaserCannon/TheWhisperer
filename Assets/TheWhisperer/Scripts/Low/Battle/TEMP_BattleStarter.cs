using UnityEngine;
using System.Collections;

public class TEMP_BattleStarter : MonoBehaviour
{
	public Fighter Player;
	public Fighter Enemy;
	public Battlefield Field;
	
	void Start()
	{
		BattleManager.BeginBattle(Player,Enemy,Field);
	}
}
