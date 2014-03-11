using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;


public class Script : Triggerable
{
	
	public List<Command> Commands = new List<Command>();
	
	
	public float Cooldown = 0f;
	public TriggerPlayLimit PlayLimit;
	public string PlayLimitSaveString = "";
	
	
	
	private bool isRunning = false;
	private bool isCooling = false;
	
	private bool disabled = false;
	
	private Command currentCommand = null;
	public Command CurrentCommand
	{
		get { return currentCommand; }
	}
	
	
	void Awake()
	{
		Scriptor.RegisterScript(this);
		
		if(PlayLimit==TriggerPlayLimit.OnceAlways)
			disabled = GlobalVariableDatabase.GetBool(PlayLimitSaveString);
	}
	
	
	
#if UNITY_EDITOR
	void OnGUI()
	{
	    GUILayout.Label("All " + Resources.FindObjectsOfTypeAll(typeof(UnityEngine.Object)).Length);
	    GUILayout.Label("DialogPackages " + Resources.FindObjectsOfTypeAll(typeof(DialogPackage)).Length);
	    GUILayout.Label("AudioClips " + Resources.FindObjectsOfTypeAll(typeof(AudioClip)).Length);
	}
	
	
	void OnDrawGizmos()
	{
		//TODO: Display certain information about the script (look for Script UI functions that are attributed), like the level the script is loading, etc.
		Gizmos.DrawIcon(transform.position,"gears.png",true);
	}
#endif
	
	
	void OnDisable()
	{
		StopAllCoroutines();
		isRunning = false;
		isCooling = false;
	}

	void OnDestroy()
	{
		StopAllCoroutines();
	}
	
	
	
	public override void OnTriggered(TriggerEventType type)
	{
		if(type==TriggerEventType.Enter)
			Execute ();
	}
	
	
	public void Execute()
	{
		StartCoroutine(ExecuteAll());
	}
	
	private IEnumerator ExecuteAll()
	{
		if(isRunning)	yield break;
		if(isCooling)	yield break;
		if(disabled)	yield break;
		
		//TODO: Allow a script to update its coroutines on deltatime, fixeddeltatime, etc.?
		isRunning = true;
		for(int i=0;i<Commands.Count;i++)
		{
			yield return StartCoroutine( ExecuteCommand(Commands[i]) );
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
	
	
	private IEnumerator ExecuteCommand(Command command)
	{
		if(command.DoesWaitForFinish)
			yield return StartCoroutine(command.Execute());
		else
			StartCoroutine(command.Execute());
	}
	
	
	//---Static Functions---//
		
	public static System.Type FindScriptSubclassForMethod(string methodname)
	{
		System.Type[] ts = (typeof(ScriptCommands)).GetNestedTypes();
		
		MethodInfo info = null;
		
		for(int i=0;i<ts.Length;i++)
		{
			info = (ts[i]).GetMethod(methodname);
			
			if(info!=null) {
				return ts[i];
			}
		}
		
		return null;
	}
	
	
	
	
	
	

	
	
}
