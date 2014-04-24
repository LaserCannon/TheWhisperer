using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;


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


	void Awake()
	{
		Init();
	}


	public void Init()
	{
		tree = new Script2DTree();

		if(tree!=null)
		{
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
		RunScript();
	}

	private List<Script2DThread> threads = new List<Script2DThread>();

	private void RunScript()
	{
		if(isRunning)	return;
		if(isCooling)	return;
		if(disabled)	return;
		
		//TODO: Allow a script to update its coroutines on deltatime, fixeddeltatime, etc.? implies custom handling of coroutines
		isRunning = true;

		RunNewThread(tree.EntryNode);
	}

	private void OnThreadComplete(Script2DThread thread)
	{
		threads.Remove(thread);
		
		RunNewThread(thread.Node.GetMoveNext());
		
		if(threads.Count == 0)
		{
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
	}

	private void RunNewThread(Script2DNode node)
	{
		if(node!=null)
		{
			Script2DThread thread = new Script2DThread(this,node);
			thread.onThreadComplete += OnThreadComplete;
			threads.Add(thread);
			thread.Run();
		}
	}


	/*private IEnumerator RunScript()
	{
		//TODO: Create a "thread" system so we can have more than one "next step"
		
		if(isRunning)	yield break;
		if(isCooling)	yield break;
		if(disabled)	yield break;
		
		//TODO: Allow a script to update its coroutines on deltatime, fixeddeltatime, etc.? implies custom handling of coroutines
		isRunning = true;

		currentNode = tree.EntryNode;

		while(currentNode!=null)
		{
			Coroutine cor = StartCoroutine( currentNode.Run() );

			if(currentNode.DoesWaitForFinish)
			{
				yield return cor;
			}

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
	}*/
	
	
	private IEnumerator DoCooldown(float time)
	{
		isCooling = true;
		
		yield return new WaitForSeconds(time);
		
		isCooling = false;
	}

}
	
	
	
	

