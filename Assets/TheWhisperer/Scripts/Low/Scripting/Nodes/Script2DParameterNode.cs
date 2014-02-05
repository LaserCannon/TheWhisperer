using UnityEngine;
using System.Collections;

public class Script2DParameterNode : Script2DNode
{

	private Param paramOutput = null;

	
	public Param ParamOutput
	{
		get { return paramOutput; }
	}



	public Script2DParameterNode(System.Type type, object defaultVal) : base()
	{
		paramOutput = new Param(type,defaultVal);
	}




	public override ParamType ReturnType
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


}
