using UnityEngine;
using System.Collections;
using System.Collections.Generic;



#if UNITY_EDITOR
using UnityEditor;
#endif


public class Script2DIfNode : Script2DNode
{
	private Script2DPort input = null;

	private Script2DPort next = null;
	private Script2DPort falseNext = null;
	private Script2DPort last = null;




	public Script2DPort NextPort
	{
		get { return next; }
	}

	public Script2DPort FalseNextPort
	{
		get { return falseNext; }
	}
	
	public Script2DPort LastPort
	{
		get { return last; }
	}



	public Script2DIfNode(Script2DTree tree) : base(tree)
	{
		input = new Script2DPort(new Vector2(25,0),ParamType.Bool,this,Script2DPortDirection.VerticalIn);
		
		next = new Script2DPort(new Vector2(100,10),ParamType.Void,this,Script2DPortDirection.HorizontalOut);
		falseNext = new Script2DPort(new Vector2(100,40),ParamType.Void,this,Script2DPortDirection.HorizontalOut);
		last = new Script2DPort(new Vector2(0,25),ParamType.Void,this,Script2DPortDirection.HorizontalIn);
		
		RegisterPort(input);
		RegisterPort(next);
		RegisterPort(falseNext);
		RegisterPort(last);
	}

	protected override void DestroyPorts()
	{
		DeregisterPort(input);
		DeregisterPort(next);
		DeregisterPort(falseNext);
		DeregisterPort(last);
	}


	public override Script2DNode GetMoveNext()
	{
		bool isTrue = (bool)Get();
		
		if(isTrue)
		{
			return NextPort.ConnectedPort.MyNode;
		}
		else
		{
			return FalseNextPort.ConnectedPort.MyNode;
		}
	}


	
	public override IEnumerator Run()
	{
		yield break;
	}

	public override object Get()
	{
		if(input.ConnectedPort!=null)
		{
			return input.ConnectedPort.MyNode.Get();
		}
		return false;
	}
	
	public override Hashtable Serialize ()
	{
		Hashtable hash = base.Serialize();
		
		hash.Add("next",next.ID);
		hash.Add("falseNext",falseNext.ID);
		hash.Add("last",last.ID);
		hash.Add("input",input.ID);

		hash.Add("nextLink",next.ConnectedPortID);
		hash.Add("falseNextLink",falseNext.ConnectedPortID);
		hash.Add("inputLink",input.ConnectedPortID);

		return hash;
	}

	public override void Deserialize(Hashtable data)
	{
		base.Deserialize(data);

		next.AssignID( (int)(double)data["next"] );
		falseNext.AssignID( (int)(double)data["falseNext"] );
		last.AssignID( (int)(double)data["last"] );
		input.AssignID( (int)(double)data["input"] );
	}
	
	public override void DeserializeConnections (Hashtable data)
	{
		base.DeserializeConnections(data);

		next.ConnectedPort = tree.GetPort( (int)(double)data["nextLink"] );
		falseNext.ConnectedPort = tree.GetPort( (int)(double)data["falseNextLink"] );
		input.ConnectedPort = tree.GetPort( (int)(double)data["inputLink"] );
	}


#if UNITY_EDITOR
	
	public override bool DrawContents(Script2DDrawContext context)
	{		
		
		context.BeginNode(this, new Vector2(100,50));
		

		GUI.Label (new Rect(15,15,20,20),"IF",EditorStyles.boldLabel);
		
		
		context.EndNode();
		
		context.DrawPort(input);
		
		context.DrawPort(next);
		context.DrawPort(falseNext);
		context.DrawPort(last);
		
		return true;
	}

#endif

}
