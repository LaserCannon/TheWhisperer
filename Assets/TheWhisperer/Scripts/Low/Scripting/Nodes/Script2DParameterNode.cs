using UnityEngine;
using System.Collections;
using System.Collections.Generic;

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

	
	
	public override Hashtable Serialize ()
	{
		return null;
	}
	
	public override void Deserialize (Hashtable data)
	{
		//node id
		//class name
		//nextPort ID
		//inputPort IDs
		//nextPort Connection ID
		//inputPort Connection IDs
		
		//Command Name
		//Parameters
	}


#if UNITY_EDITOR
	
	public override bool DrawContents(Script2DDrawContext context)
	{	
		return true;
	}
#endif

}
