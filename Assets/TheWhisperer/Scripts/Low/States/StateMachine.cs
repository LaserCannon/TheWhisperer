using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class StateMachine
{

	protected Stack<State> stateStack = null;
	
	
	public State TopState
	{
		get { return stateStack.Peek(); }
	}
	
	
	
	public void Update(float delta)
	{
		foreach(State state in stateStack)
		{
			state.Update(delta);
		}
	}
	
	
	
	public void PushState(State newState)
	{
		if(TopState!=null)
		{
			TopState.Pause();
		}
		
		newState.Enter();
		newState.SetMachineReference(this);
		
		stateStack.Push(newState);
	}
	
	public void PopState()
	{
		if(TopState==null)
			return;
		
		if(TopState.Paused)
			TopState.Unpause();
		
		TopState.Exit();
		
		stateStack.Pop();
	}
	
		
	public void SetState(State newState)
	{
		while(stateStack.Count>0)
		{
			PopState();
		}
		
		PushState(newState);
		
		
	}
	
}
