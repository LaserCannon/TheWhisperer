using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;


public abstract class Script2DDrawContextBase {};

public abstract class Script2DNode
{


	private int id = 0;

	private Vector2 position = Vector2.zero;

	protected Script2DTree tree = null;

	protected virtual string OverriddenClassName
	{
		get { return ""; }
	}

	public virtual bool DoesWaitForFinish
	{
		get { return false; }
	}

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

		if(OverriddenClassName!="")
		{
			hash.Add("type",OverriddenClassName);
		}
		else
		{
			hash.Add("type",GetType().ToString());
		}

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

	public virtual bool DrawContents(Script2DDrawContextBase context)
	{
		return true;
	}




}
