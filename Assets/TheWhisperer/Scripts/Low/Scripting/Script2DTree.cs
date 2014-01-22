using UnityEngine;
using System.Collections;
using System.Collections.Generic;


public class Script2DTree
{

	private List<Script2DNode> nodeList = new List<Script2DNode>();

	public List<Script2DNode> NodeList
	{
		get { return nodeList; }
	}


	public void AddNode(Script2DNode node)
	{
		nodeList.Add(node);
	}
	public void RemoveNode(Script2DNode node)
	{
		nodeList.Remove(node);
	}

//	public List<Script2DConnection> ConnectionList = new List<Script2DConnection>();

}
