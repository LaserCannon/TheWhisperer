using UnityEngine;
using System.Collections;


public enum PathCharacterNavigationState {
	Stopped,
	Moving,
}

[RequireComponent(typeof(NavMeshAgent))]
public class PathCharacter : MonoBehaviour
{
	
	// -- Private / Protected
	
	private PathCharacterNavigationState navState = PathCharacterNavigationState.Stopped;

	protected NavMeshAgent agentRef;
	protected CharacterAnimation animRef;
	
	
	private bool destinationWasSet = false;
	protected bool DestinationWasSet { get { return destinationWasSet; } }
	
	
	//Properties
	
	public Vector3 Velocity
	{
		get { return agentRef.velocity; }
	}
	
	public PathCharacterNavigationState NavState
	{
		get { return navState; }
	}
	
	// -- Callbacks

	protected virtual void Start()
	{
		agentRef = GetComponent<NavMeshAgent>();
		
		animRef = GetComponent<CharacterAnimation>();
		
		navState = PathCharacterNavigationState.Stopped;
		
		if(!destinationWasSet)
			SetDestination(transform.position);
	}
	
	
	
	public void SetDestination(Vector3 pos)
	{
		destinationWasSet = true;
		
		StopCoroutine("LookInDirection_internal");
		
		agentRef.destination = pos;
		
		navState = PathCharacterNavigationState.Moving;
		
		if(animRef!=null)
			animRef.PlayRun();
		
		//Wait for destination, so that we can set the state at the end.
		StartCoroutine(WaitForDestinationOrChanged());
	}
	
	
	public void WarpTo(Vector3 position)
	{
		transform.position = position;
		SetDestination(position);
		Halt ();
	}
	
	public IEnumerator WaitForDestinationOrChanged()
	{
		Vector3 curDest = agentRef.destination;
		
		while(agentRef.destination==curDest && (agentRef.hasPath || agentRef.pathPending))
		{
			if( (curDest-transform.position).sqrMagnitude < 1f )
			{
				if(animRef!=null)
					animRef.PlayIdle();
			}
			
			yield return null;
		}
		
		if(agentRef.destination==curDest)
			navState = PathCharacterNavigationState.Stopped;
		
		
	}
	
	public IEnumerator WaitForDestination()
	{
		while(agentRef.hasPath || agentRef.pathPending)
		{
			yield return null;
		}
	}
	
	public void LookInDirection(Vector3 dir)
	{
		StopCoroutine("LookInDirection_Internal");
		StartCoroutine("LookInDirection_Internal",dir);
	}
	
	private IEnumerator LookInDirection_Internal(Vector3 dir)
	{
		dir.y=0f;
		dir.Normalize();
		
		while((transform.forward - dir).sqrMagnitude > 0.001f)
		{
			transform.forward = Vector3.Slerp(transform.forward,dir,Time.deltaTime*5f);
			yield return null;
		}
	}
	
	public void Halt()
	{
		//Set a destination for slightly forward (TODO: Cast a ray on the NavMesh, so we dont end up picking a spot across a gap, or something)
		Vector3 pos = transform.position + (transform.forward/10f)*GetComponent<NavMeshAgent>().velocity.magnitude;
		
		if(pos!=transform.position)
			SetDestination(pos);
		
		navState = PathCharacterNavigationState.Stopped;
		
		if(animRef!=null)
			animRef.PlayIdle();
	}
}
