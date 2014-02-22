using UnityEngine;
using System.Collections;
using System.Collections.Generic;


public class Script2DTree
{

	private Script2DNode head = null;
	private List<Script2DNode> nodeList = new List<Script2DNode>();
	private List<Script2DPort> portList = new List<Script2DPort>();


	public Script2DNode Head
	{
		get { return head; }
	}

	public List<Script2DNode> NodeList
	{
		get { return nodeList; }
	}
	
	public List<Script2DPort> PortList
	{
		get { return portList; }
	}

	public void AddPort(Script2DPort port)
	{
		portList.Add(port);
	}
	
	public void RemovePort(Script2DPort port)
	{
		portList.Remove(port);

		foreach(Script2DPort p in portList)
		{
			if(p.ConnectedPort==port)
			{
				p.ConnectedPort = null;
			}
		}
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
