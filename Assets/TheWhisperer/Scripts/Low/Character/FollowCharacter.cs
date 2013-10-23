using UnityEngine;
using System.Collections;

public class FollowCharacter : NonPlayerCharacter
{
	public float FollowDist = 1.5f;
	
	public PathCharacter currentlyFollowing;
	public PathCharacter CurrentlyFollowing
	{
		get { return currentlyFollowing; }
	}

	public void Follow(PathCharacter character)
	{
		currentlyFollowing = character;
	}
	
	public void FixedUpdate()
	{
		if(currentlyFollowing!=null)
		{
			Transform followTransform = currentlyFollowing.transform;
			
			if( (transform.position-followTransform.position).sqrMagnitude > FollowDist*FollowDist*2f)
			{
				SetDestination(followTransform.position + (transform.position-followTransform.position).normalized * FollowDist);
			}
			else
			{
				if( Vector3.Dot( transform.position-followTransform.position, currentlyFollowing.Velocity ) > 0.25f && currentlyFollowing.Velocity.sqrMagnitude > 1f )
					SetDestination( transform.position + currentlyFollowing.Velocity.normalized );
			}
		}
	}
}
