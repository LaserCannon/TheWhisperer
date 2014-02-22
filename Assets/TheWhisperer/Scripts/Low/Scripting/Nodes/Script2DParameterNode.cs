using UnityEngine;
using System.Collections;

public class Script2DParameterNode : Script2DNode
{

	private Param paramOutput = null;

	
	public Param ParamOutput
	{
		get { return paramOutput; }
	}



	public Script2DParameterNode(System.Type type, object defaultVal, Script2DTree nodeTree) : base(nodeTree)
	{
		paramOutput = new Param(type,defaultVal);
	}




	public ParamType ReturnType
	{
		get { return paramOutput.Type; }
	}


	public override IEnumerator Run()
	{
		yield break;
	}

	public override object Get()
	{
		return paramOutput.Value;
	}
#if UNITY_EDITOR
	
	public override bool DrawContents(Script2DDrawContext context)
	{	
		return true;
	}
#endif

}
