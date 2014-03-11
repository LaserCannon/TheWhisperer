using UnityEngine;
using System.Collections;

public class TEMP_BattleStarter : MonoBehaviour
{
	public string Player;
	public string Enemy;
	//public Battlefield Field;
	
	void Start()
	{
	//	BattleManager.LoadBattle(Player,Enemy,new BattleScene("temp_battlescene"));
		BattleLoader.ManualSetupBattle(Player,Enemy);
	}
}
