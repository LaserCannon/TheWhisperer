using UnityEngine;
using System.Collections;

public class ActionExecutor
{

	private Attack attack = null;
	private FighterController controller = null;

	private float lifetime = 0f;
	private int actionIndex = 0;

	public event MessageDelegate actionFinished = null;


	public ActionExecutor(Attack att, FighterController ctrl)
	{
		attack = att;
		controller = ctrl;
	}


	public void Update(float delta)
	{
		lifetime += delta;
		
		while(actionIndex < attack.Timeline.Count && lifetime >= attack.Timeline[actionIndex].Timecode)
		{
			attack.Timeline[actionIndex].Execute(controller);
			actionIndex++;
			
			if(actionIndex >= attack.Timeline.Count)
			{
				if(actionFinished!=null)
				{
					actionFinished();
				}
			}
		}
	}

	public bool IsFinished
	{
		get { return actionIndex >= attack.Timeline.Count; }
	}
	
	
	private void DoAction(BaseBattleAction action)
	{
		action.Execute(controller);
	}
}
