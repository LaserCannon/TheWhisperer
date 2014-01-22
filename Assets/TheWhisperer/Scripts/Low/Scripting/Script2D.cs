using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;

public class Script2D  : Triggerable
{

	private Script2DTree tree = null;


	public Script2DTree ScriptTree
	{
		get { return tree; }
	}


	public Script2D()
	{
		tree = new Script2DTree();
	}


	public override void OnTriggered(TriggerEventType triggerType)
	{
	}

}
	
	
	
	

