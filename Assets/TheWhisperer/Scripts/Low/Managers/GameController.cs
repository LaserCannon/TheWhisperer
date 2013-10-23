using UnityEngine;
using System.Collections;
using System.Collections.Generic;




public class GameController : MonoBehaviour
{
	
	private static GameController _main;
	public static GameController main
	{
		get
		{
			if(_main==null)
			{
				//Load in the GameController prefab
				GameObject go = (GameObject)Resources.Load ("Prefabs/General/GameController");
				
				if(go!=null)
				{
					//Instantiate the prefab
					go = (GameObject)Instantiate(go,Vector3.zero,Quaternion.identity);
					_main = go.GetComponent<GameController>();
				}
				
				if(_main==null)
				{
					//If the GameController isnt found OR the GameObject has a GameController on it
					Debug.LogWarning("No prefab called GameController found at 'Resources/Prefabs/General'! Using Default.");
					go = new GameObject("GameController");
					_main = go.AddComponent<GameController>();
				}
			}
			return _main;
		}
	}
	
	
	private GameStateMachine gameStateMachine = new GameStateMachine();
	
	
	public PlayerAgent PlayerPrefab;
	
	private PlayerAgent player = null;
	public PlayerAgent Player
	{
		get { return player; }
	}
	
	
	//TODO: Move to a battle management system
	public string BattleScene = "";
	
	
	
	public delegate void CallbackDelegate();
	
	private event CallbackDelegate onEnterBattle;
	private event CallbackDelegate onExitBattle;
	private event CallbackDelegate onEnterField;
	private event CallbackDelegate onExitField;
	
	
	private Vector3 savedPlayerPosition = Vector3.zero;
	
	
	
	public void RegisterForOnStateChange(CallbackDelegate dlg, System.Type stateType, TriggerEventType enterOrExit)
	{
		if(dlg==null)	return;
		
		if(stateType == typeof(GameStateBattle))
		{
			if(enterOrExit==TriggerEventType.Enter)	onEnterBattle += dlg;
			else 									onExitBattle += dlg;
		}
		else if(stateType == typeof(GameStateExplore))
		{
			if(enterOrExit==TriggerEventType.Enter)	onEnterField += dlg;
			else 									onExitField += dlg;
		}
	}
	
	public void UnregisterForOnStateChange(CallbackDelegate dlg, System.Type stateType, TriggerEventType enterOrExit)
	{
		if(dlg==null)	return;
		
		if(stateType == typeof(GameStateBattle))
		{
			if(enterOrExit==TriggerEventType.Enter)	onEnterBattle -= dlg;
			else 									onExitBattle -= dlg;
		}
		else if(stateType == typeof(GameStateExplore))
		{
			if(enterOrExit==TriggerEventType.Enter)	onEnterField -= dlg;
			else 									onExitField -= dlg;
		}
	}
	
	
	
	
	
	
	public IEnumerator EnterBattleScene()
	{
		gameStateMachine.PushState(new GameStateBattle());
		
		savedPlayerPosition = Player.transform.position;
		
		yield break;
	}
	
	
	public IEnumerator ReturnFromBattleScene()
	{
		gameStateMachine.PopState();
		
		Player.transform.position = savedPlayerPosition;
		
		
		
		yield break;
	}
	
	
	
	
}
