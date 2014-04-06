using UnityEngine;
using System.Collections;

public class Script2DEditorTree : Script2DTree
{
	
	public override void Init()
	{
		entryNode = new Script2DEntryEditorNode(this);
	}
	
	protected override Script2DNode CreateNodeFromData(Hashtable nodeHash)
	{
		Script2DNode newNode = null;
		if((string)nodeHash["type"]=="Script2DCommandNode") 
		{
			newNode = new Script2DCommandEditorNode(nodeHash,this);
		}
		if((string)nodeHash["type"]=="Script2DIfNode")
		{
			newNode = new Script2DIfEditorNode(this);
		}
		if((string)nodeHash["type"]=="Script2DEntryNode") 
		{
			if(entryNode!=null)
			{
				Debug.LogError ("More than one entry node!");
			}
			
			newNode = new Script2DEntryEditorNode(this);
			entryNode = (Script2DEntryNode)newNode;
		}
		
		return newNode;
		//TODO: Make a Script2DUnknown class so that we can still store data for nodes with invalid types
	}

}
