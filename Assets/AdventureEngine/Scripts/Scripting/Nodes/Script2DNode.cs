using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;

#if UNITY_EDITOR
using UnityEditor;
#endif


public abstract class Script2DNode
{


	private int id = 0;

	private Vector2 position = Vector2.zero;

	protected Script2DTree tree = null;



	public Vector2 Position
	{
		get { return position; }
		set { position = value; }
	}

	public int ID
	{
		get { return id; }
	}


	public Script2DNode(Script2DTree nodeTree)
	{
		tree = nodeTree;
		id = tree.AddNode(this);
	}
	
	public Script2DNode(Hashtable data, Script2DTree nodeTree)
	{
		tree = nodeTree;
		tree.AddNode(this);
	}
	
	public abstract IEnumerator Run();
	
	public abstract object Get();



	public virtual Hashtable Serialize()
	{
		Hashtable hash = new Hashtable();

		hash.Add("id",id);
		hash.Add("type",GetType().ToString());

		hash.Add("posx",position.x);
		hash.Add("posy",position.y);

		return hash;
	}
	public virtual void Deserialize(Hashtable data)
	{
		id = (int)(double)data["id"];

		position.x = (float)(double)data["posx"];
		position.y = (float)(double)data["posy"];
	}
	public virtual void DeserializeConnections(Hashtable data)
	{

	}



	public void RemoveFromTree()
	{
		tree.RemoveNode(this);
		DestroyPorts();
	}

	protected virtual void DestroyPorts()
	{
	}


	public virtual Script2DNode GetMoveNext()
	{
		return null;
	}

	protected void RegisterPort(Script2DPort port)
	{
		if(!tree.PortList.Contains(port))
		{
			tree.AddPort(port);
		}
	}

	protected void DeregisterPort(Script2DPort port)
	{
		if(tree.PortList.Contains(port))
		{
			tree.RemovePort(port);
		}
	}

#if UNITY_EDITOR
	public abstract bool DrawContents(Script2DDrawContext context);
#endif




}
