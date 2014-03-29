using UnityEngine;
using System.Collections;

public class State
{
	
	protected StateMachine stateMachine = null;
	protected bool paused = false;
	
	public bool Paused
	{
		get { return paused; }
	}
	

	public virtual void Enter()
	{
	}
	
	public virtual void Exit()
	{
	}
	
	public virtual void Pause()
	{
		paused = true;
	}
	
	public virtual void Unpause()
	{
		paused = false;
	}
	
	public virtual void Update(float delta)
	{
	}
	
	
	public void SetMachineReference(StateMachine machine)
	{
		stateMachine = machine;
	}
	
}
