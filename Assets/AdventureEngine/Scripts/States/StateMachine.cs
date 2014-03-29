using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class StateMachine
{

	protected Stack<State> stateStack = new Stack<State>();
	
	
	public State TopState
	{
		get { return stateStack.Count==0 ? null : stateStack.Peek(); }
	}
	
	
	
	public void Update(float delta)
	{
		if(TopState !=null)
		{
			TopState.Update(delta);
		}
	}


	protected virtual void InitState(State state)
	{
	}
	
	
	public void PushState(State newState)
	{
		if(TopState!=null)
		{
			TopState.Pause();
		}

		InitState(newState);

		newState.SetMachineReference(this);
		newState.Enter();
		
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
