using UnityEngine;
using UnityEditor;
using System.Collections;

public class Script2DIfEditorNode : Script2DIfNode
{


	public Script2DIfEditorNode(Script2DTree tree) : base(tree) {}


	protected override string OverriddenClassName
	{
		get { return "Script2DIfNode"; }
	}

	public override bool DrawContents(Script2DDrawContextBase contextbase)
	{		
		Script2DDrawContext context = (Script2DDrawContext)contextbase;
		
		context.BeginNode(this, new Vector2(100,50));
		
		GUI.Label (context.zoomed_rect(15,15,20,20),"IF",EditorStyles.label);
		if(GUI.Button(context.zoomed_rect(70,0,20,20),"X",EditorStyles.miniButton))
		{
			return false;
		}
		
		context.EndNode();
		
		context.DrawPort(InputPort);
		
		context.DrawPort(NextPort);
		context.DrawPort(FalseNextPort);
		context.DrawPort(LastPort);
		
		return true;
	}
}
