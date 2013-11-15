using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class PlayerProfile
{

	private string area = null;
	private Vector3 location = Vector3.zero;
	
	private List<string> partyMembers = new List<string>();
	
	
	public void AddPartyMember(string member)
	{
		if(!partyMembers.Contains(member))
		{
			partyMembers.Add(member);
		}
	}
	
	public string GetPartyMember(int i)
	{
		if(partyMembers.Count>i && i>=0)
		{
			return partyMembers[i];
		}
		return "";
	}
	
	public void RemovePartyMember(string member)
	{
		if(partyMembers.Contains(member))
		{
			partyMembers.Remove(member);
		}
	}
	
	public void RecordPlayerLocation(PlayerAgent agent)
	{
		area = Application.loadedLevelName;
		location = agent.transform.position;
	}
	
	public void RestorePlayerLocation()
	{
		Debug.Log ("restore");
		LevelLoader.LoadLevel(area,location);
	}
	
}
