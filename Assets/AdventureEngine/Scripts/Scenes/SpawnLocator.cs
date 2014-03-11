using UnityEngine;
using System.Collections;

public class SpawnLocator : MonoBehaviour
{
	
	
	
	public string Name = "";
	
	
	
	
	
	public static Vector3 GetSpawnLocation(string name)
	{
		//TODO: Cache these instead, make this faster
		SpawnLocator[] locs = (SpawnLocator[])GameObject.FindObjectsOfType(typeof(SpawnLocator));
		
		for(int i=0;i<locs.Length;i++)
		{
			if(locs[i].Name==name)
				return locs[i].transform.position;
		}
		
		return Vector3.zero;
	}
	
	public static Vector3 GetSpawnLocation(int index)
	{
		//TODO: Cache these instead, make this faster
		SpawnLocator[] locs = (SpawnLocator[])GameObject.FindObjectsOfType(typeof(SpawnLocator));
		
		if(index>=0 && index<locs.Length)
		{
			return locs[index].transform.position;
		}
		
		return Vector3.zero;
	}
	
	public static void SpawnCharacterAtLocator(PathCharacter pc, string name)
	{

		//TODO: Cache these instead, make this faster
		SpawnLocator[] locs = (SpawnLocator[])GameObject.FindObjectsOfType(typeof(SpawnLocator));
		
		for(int i=0;i<locs.Length;i++)
		{
			if(locs[i].Name==name) {

				if(pc==null)
				{
					//Instantiate(AgentManager.main.GetCharacter("TestPlayer"),locs[i].transform.position,Quaternion.LookRotation(locs[i].transform.forward));
					GameController.main.Player.WarpTo(locs[i].transform.position);
					GameController.main.Player.transform.rotation = Quaternion.LookRotation(locs[i].transform.forward);
				}
				else
				{
					pc.WarpTo(locs[i].transform.position);
					pc.LookInDirection(locs[i].transform.forward);
				}
				return;
			}
		}
		
		Debug.LogWarning("SpawnLocator named '"+name+"' was not found.");
	}
	
	
	public static void SpawnCharacterAtPosition(PathCharacter pc, Vector3 position)
	{
		pc.WarpTo(position);
	}
	
	
#if UNITY_EDITOR
	void OnDrawGizmos()
	{
		GizmoUtils.DrawArrow(transform.position, transform.position + transform.forward*2f,0.5f);
	}
#endif
	
}
