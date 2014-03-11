using UnityEngine;
using System.Collections;

public class DamageText
{
	private static GameObject DmgPrefab;
	
	
	static DamageText()
	{
		DmgPrefab = (GameObject)Resources.Load("Prefabs/DamageText");
	}
	
	public static void ThrowTextFromPoint(string text, Vector3 pos)
	{
		GameObject go = (GameObject)MonoBehaviour.Instantiate(DmgPrefab);
		TextMesh tm = go.GetComponent<TextMesh>();
		tm.text = text;
		go.transform.position = pos;
		
		AsyncServices.RunCoroutine(Throw(go));
	}
	
	private static IEnumerator Throw(GameObject go)
	{
		float t = 0f;
		Vector3 start = go.transform.position;
		while(go!=null && t<2f)
		{
			t += Time.deltaTime;
			
			go.transform.position = start + Vector3.up * Mathf.Sqrt(t*3f)/3f;
			
			yield return null;
		}
		
		MonoBehaviour.Destroy(go);
	}
	
}
