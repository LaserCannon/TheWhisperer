using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;

[ExecuteInEditMode]
public class Script2D  : Triggerable
{

	public float Cooldown = 0f;
	public TriggerPlayLimit PlayLimit;
	public string PlayLimitSaveString = "";

	
	
	[SerializeField]
	public string savedJson = "";


	private Script2DTree tree = null;
	

	
	private bool isRunning = false;
	private bool isCooling = false;
	
	private bool disabled = false;


	private Script2DNode currentNode = null;


	public Script2DTree ScriptTree
	{
		get { return tree; }
	}


	void Update()
	{
		if(tree==null)
		{
			tree = new Script2DTree();

			if(savedJson!="")
			{
				tree.Deserialize(savedJson);
			}
			else
			{
				tree.Init();
			}
		}
	}




	public override void OnTriggered(TriggerEventType triggerType)
	{
		StartCoroutine(RunScript());
	}

	private IEnumerator RunScript()
	{
		
		if(isRunning)	yield break;
		if(isCooling)	yield break;
		if(disabled)	yield break;
		
		//TODO: Allow a script to update its coroutines on deltatime, fixeddeltatime, etc.?
		isRunning = true;

		currentNode = tree.EntryNode;
		while(currentNode!=null)
		{
			yield return StartCoroutine( currentNode.Run() );
			currentNode = currentNode.GetMoveNext();
		}
		isRunning = false;
		
		switch(PlayLimit)
		{
		case TriggerPlayLimit.None:
			StartCoroutine(DoCooldown(Cooldown));
			break;
		case TriggerPlayLimit.OnceInScene:
			disabled = true;
			break;
		case TriggerPlayLimit.OnceAlways:
			disabled = true;
			GlobalVariableDatabase.SetBool(PlayLimitSaveString,true);
			break;
		}
	}
	
	
	private IEnumerator DoCooldown(float time)
	{
		isCooling = true;
		
		yield return new WaitForSeconds(time);
		
		isCooling = false;
	}

}
	
	
	
	

