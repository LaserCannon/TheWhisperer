using UnityEngine;
using System.Collections;


public class HitVisualizer : MonoBehaviour
{
	public float Radius = 0f;

	private Color col = Color.green;

	void Update()
	{
		col.a -= Time.deltaTime;
	}

#if UNITY_EDITOR
	void OnDrawGizmos()
	{
		Gizmos.color = col;
		Gizmos.DrawSphere(transform.position, Radius);
		Gizmos.DrawWireSphere(transform.position, Radius);
	}
#endif

	public static void Visualize(Vector3 position, float radius)
	{
		GameObject go = new GameObject("VISUALIZE");
		HitVisualizer hv = go.AddComponent<HitVisualizer>();
		hv.Radius = radius;
		go.transform.position = position;

		Destroy (go,1f);
	}
}
