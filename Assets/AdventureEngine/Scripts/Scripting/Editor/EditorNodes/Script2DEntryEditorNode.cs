using UnityEngine;
using UnityEditor;
using System.Collections;

public class Script2DEntryEditorNode : Script2DEntryNode
{
	public Script2DEntryEditorNode(Script2DTree tree) : base(tree) {}
	
	
	protected override string OverriddenClassName
	{
		get { return "Script2DEntryNode"; }
	}

	public override bool DrawContents(Script2DDrawContextBase contextbase)
	{		
		Script2DDrawContext context = (Script2DDrawContext)contextbase;

		context.BeginNode(this, new Vector2(100,50));
		
		GUI.Label (context.zoomed_rect(15,15,100,20),"BEGIN",EditorStyles.label);
		
		context.EndNode();
		
		context.DrawPort(NextPort);
		
		return true;
	}
}
