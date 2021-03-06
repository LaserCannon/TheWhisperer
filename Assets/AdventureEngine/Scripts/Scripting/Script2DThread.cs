﻿using UnityEngine;
using System.Collections;

public class Script2DThread
{

	public delegate void ThreadDelegate(Script2DThread thread);
	public event ThreadDelegate onThreadComplete = null;

	private Script2D scriptRef = null;
	private Script2DNode node = null;

	public Script2DNode Node
	{
		get { return node; }
	}


	public Script2DThread(Script2D script, Script2DNode n)
	{
		node = n;
		scriptRef = script;
	}

	public void Run()
	{
		scriptRef.StartCoroutine(_Run());
	}

	private IEnumerator _Run()
	{
		IEnumerator enu = node.Run();
		Coroutine cor = null;

		if(enu!=null)
		{
			cor = scriptRef.StartCoroutine( enu );
		}
		
		if(node.DoesWaitForFinish && cor!=null)
		{
			yield return cor;
		}

		if(onThreadComplete!=null)
		{
			onThreadComplete(this);
		}
	}

}
