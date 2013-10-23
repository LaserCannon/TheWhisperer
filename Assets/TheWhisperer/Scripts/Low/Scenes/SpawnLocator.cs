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
	
	public static void SpawnCharacterAtLocator(PathCharacter pc, string name)
	{
		//TODO: Cache these instead, make this faster
		SpawnLocator[] locs = (SpawnLocator[])GameObject.FindObjectsOfType(typeof(SpawnLocator));
		
		for(int i=0;i<locs.Length;i++)
		{
			if(locs[i].Name==name) {
				pc.WarpTo(locs[i].transform.position);
				pc.LookInDirection(locs[i].transform.forward);
				return;
			}
		}
		
		Debug.LogWarning("SpawnLocator named '"+name+"' was not found.");
	}
	
	
#if UNITY_EDITOR
	void OnDrawGizmos()
	{
		GizmoUtils.DrawArrow(transform.position, transform.position + transform.forward*2f,0.5f);
	}
#endif
	
}
