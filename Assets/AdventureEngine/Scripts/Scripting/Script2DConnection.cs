using UnityEngine;
using System.Collections;


[System.Serializable]
public class Script2DConnection
{


	public Script2DNode node = null;
	public int port = 0;


	public bool IsNull
	{
		get { return node==null; }
	}


}
