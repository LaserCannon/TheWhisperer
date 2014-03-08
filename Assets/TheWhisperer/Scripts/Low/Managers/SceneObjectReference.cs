using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class SceneObjectReference : SingletonBehaviour
{
	[System.Serializable]
	private class ObjectReference
	{
		public int id = 0;
		public Object obj = null;

		public ObjectReference(int _id, Object _obj)
		{
			id = _id;
			obj = _obj;
		}
	}

	public static SceneObjectReference main
	{
		get { return getmain<SceneObjectReference>(); }
	}

	[SerializeField]
	private List<ObjectReference> refs = new List<ObjectReference>();



	public int GetNewID()
	{
		List<int> used = new List<int>();
		foreach(ObjectReference rf in refs)
		{
			used.Add(rf.id);
		}
		
		int i=0;
		while(used.Contains(i))
		{
			i++;
		}
		return i;
	}

	public Object GetObjectForReference(int id)
	{
		foreach(ObjectReference rf in refs)
		{
			if(rf.id==id)
			{
				return rf.obj;
			}
		}
		return null;
	}

	public int GetReferenceForObject(Object obj)
	{
		if(obj==null)
			return -1;

		foreach(ObjectReference rf in refs)
		{
			if(rf.obj==obj)
			{
				return rf.id;
			}
		}

		int newID = GetNewID();
		refs.Add(new ObjectReference(newID,obj));

#if UNITY_EDITOR
		UnityEditor.EditorUtility.SetDirty(this);
#endif

		return newID;
	}

}
