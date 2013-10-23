using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Prop : MonoBehaviour
{
	private static List<Prop> SceneProps = new List<Prop>();
	
	
	
	public List<Prop> FindPropsOfType(System.Type type)
	{
		List<Prop> props = new List<Prop>();
		
		if( !typeof(Prop).IsAssignableFrom(type) )
			return props;
		
		for(int i=0;i<SceneProps.Count;i++)
		{
			if(SceneProps[i]!=null)
			{
				if(type.IsAssignableFrom(SceneProps[i].GetType()))
					props.Add(SceneProps[i]);
			}
		}
		
		return props;
	}
	
	
	
	protected virtual void Awake()
	{
		PlayerInput.Init();
		SceneProps.Add(this);
	}
	
	protected virtual void OnDestroy()
	{
		SceneProps.Remove(this);
	}
	
	
	
}
