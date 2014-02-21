using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;

#if UNITY_EDITOR
using UnityEditor;
#endif


public abstract class Script2DNode
{

	//private int id = 0;


	private Vector2 position = Vector2.zero;

	private Script2DTree tree = null;


	protected List<Script2DPort> inputs = new List<Script2DPort>();

	public abstract ParamType ReturnType
	{
		get;
	}

	public Vector2 Position
	{
		get { return position; }
		set { position = value; }
	}
	
	public int InputCount
	{
		get { return inputs.Count; }
	}




	public Script2DNode(Script2DTree nodeTree)
	{
		tree = nodeTree;
		tree.AddNode(this);
	}

	~Script2DNode()
	{
		RemoveFromTree();
	}

	protected void RemoveFromTree()
	{
		tree.RemoveNode(this);
	}


	public virtual Script2DNode GetMoveNext()
	{
		return null;
	}
	
	
	public Script2DPort GetInput(int index)
	{
		if(index>=0 && index<inputs.Count)
		{
			return inputs[index];
		}
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
	
	public void ConnectInputTo(int inputIndex, Script2DPort port)
	{
		if(inputIndex>=0 && inputIndex<inputs.Count)
		{
			inputs[inputIndex].ConnectedPort = port;
		}
	}


	public abstract IEnumerator Run();

	public abstract object Get();

#if UNITY_EDITOR
	public abstract bool DrawContents(Script2DDrawContext context);
#endif



}
