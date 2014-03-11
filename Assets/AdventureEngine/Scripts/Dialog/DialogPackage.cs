using UnityEngine;
using System.Collections;
using System.Collections.Generic;


public class DialogPackage : ScriptableObject
{
	public List<DialogLine> Lines;
	
	private bool loaded = false;
	public bool Loaded { get { return loaded; } }
	
	public string Name
	{
		get { return name; }
	}
	
	public int LineCount { get { return Lines.Count; } }
	
	
	
	
	public IEnumerator LoadAsync()
	{
		for(int i=0;i<Lines.Count;i++)
		{
			Lines[i].Load();
			yield return null;
		}
		loaded = true;
	}
	
	public void Load()
	{
		for(int i=0;i<Lines.Count;i++)
		{
			Lines[i].Load();
		}
		loaded = true;
	}
	
	public IEnumerator UnloadAsync()
	{
		for(int i=0;i<Lines.Count;i++)
		{
			Lines[i].Unload();
			yield return null;
		}
		loaded = false;
	}
	
	public void Unload()
	{
		for(int i=0;i<Lines.Count;i++)
		{
			Lines[i].Unload();
		}
		loaded = false;
	}
}

