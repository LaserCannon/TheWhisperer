using UnityEngine;
using System.Collections;
using System.Collections.Generic;


public class Script2DTree
{



	private Script2DEntryNode entryNode = null;
	private List<Script2DNode> nodeList = new List<Script2DNode>();
	private List<Script2DPort> portList = new List<Script2DPort>();


	public Script2DNode EntryNode
	{
		get { return entryNode; }
	}

	public List<Script2DNode> NodeList
	{
		get { return nodeList; }
	}
	
	public List<Script2DPort> PortList
	{
		get { return portList; }
	}



	public Script2DTree()
	{
	}

	public void Init()
	{
		entryNode = new Script2DEntryNode(this);
	}


	
	private int GetNewID()
	{
		List<int> used = new List<int>();
		foreach(Script2DNode node in nodeList)
		{
			used.Add(node.ID);
		}
		
		int i=0;
		while(used.Contains(i))
		{
			i++;
		}
		return i;
	}
	
	private int GetNewPortID()
	{
		List<int> used = new List<int>();
		foreach(Script2DPort port in portList)
		{
			used.Add(port.ID);
		}
		
		int i=0;
		while(used.Contains(i))
		{
			i++;
		}
		return i;
	}


	public Script2DPort GetPort(int id)
	{
		foreach(Script2DPort port in portList)
		{
			if(port.ID==id)
			{
				return port;
			}
		}
		return null;
	}
	
	public Script2DNode GetNode(int id)
	{
		foreach(Script2DNode node in nodeList)
		{
			if(node.ID==id)
			{
				return node;
			}
		}
		return null;
	}



	public void AddPort(Script2DPort port)
	{
		portList.Add(port);
		port.AssignID(GetNewPortID());
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


	public int AddNode(Script2DNode node)
	{
		if(!nodeList.Contains(node))
		{
			nodeList.Add(node);
			return GetNewID();
		}
		return node.ID;
	}
	public void RemoveNode(Script2DNode node)
	{
		nodeList.Remove(node);
	}



	public string Serialize()
	{
		Hashtable hash = new Hashtable();

		ArrayList nodes = new ArrayList();
		foreach(Script2DNode node in nodeList)
		{
			nodes.Add(node.Serialize());
		}
		hash.Add("nodes",nodes);

		return NGUIJson.jsonEncode(hash);
	}

	public void Deserialize(string json)
	{
		Hashtable hash = (Hashtable)NGUIJson.jsonDecode(json);

		ArrayList nodesData = (ArrayList)hash["nodes"]; 
		foreach(object node in nodesData)
		{
			Script2DNode newNode = null;
			Hashtable nodeHash = (Hashtable)node;
			if((string)nodeHash["type"]=="Script2DCommandNode") 
			{
				newNode = new Script2DCommandNode(nodeHash,this);
			}
			if((string)nodeHash["type"]=="Script2DIfNode")
			{
				newNode = new Script2DIfNode(this);
			}
			if((string)nodeHash["type"]=="Script2DEntryNode") 
			{
				if(entryNode!=null)
				{
					Debug.LogError ("More than one entry node!");
				}

				newNode = new Script2DEntryNode(this);
				entryNode = (Script2DEntryNode)newNode;
			}
			//TODO: Make a Script2DUnknown class so that we can still store data for nodes with invalid types

			newNode.Deserialize(nodeHash);
		}

		if(entryNode==null)
		{
			entryNode = new Script2DEntryNode(this);
		}

		for(int i=0;i<nodesData.Count;i++)
		{
			nodeList[i].DeserializeConnections((Hashtable)nodesData[i]);
		}
	}



}
