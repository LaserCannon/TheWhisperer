using UnityEngine;
using System.Reflection;
using System.Collections;
using System.Collections.Generic;



public abstract class Fighter : MonoBehaviour
{

	private Animator animator = null; 

	private Vector3 targetPosition = Vector3.zero;
	private float movingSpeed = 0f;

	[SerializeField]
	private int maxHP = 0;
	public int MaxHP
	{
		get { return maxHP; }
	}

	[SerializeField]
	private Vulnerability defaultVulnerability = null;
	public Vulnerability DefaultVulnerability
	{
		get { return defaultVulnerability; }
	}


	public delegate void DamageDelegate(DamageInfo damage);
	public event DamageDelegate hit = null;



	void Awake()
	{
		animator = GetComponent<Animator>();
	}


	void Update()
	{
		if(transform.localPosition != targetPosition)
		{
			transform.localPosition = Vector3.MoveTowards(transform.localPosition,targetPosition,Time.deltaTime*movingSpeed);

			if(transform.localPosition == targetPosition)
			{
				Animate ("idle");
			}
		}
	}

	public abstract Attack GetAttackForIndex(int index);
	public abstract int AttackCount { get; }


	public List<Fighter> GetFightersInRange(Vector3 localPos, float radius)
	{
		Collider[] hitColliders = Physics.OverlapSphere(transform.TransformPoint(localPos), radius);
		List<Fighter> fightersFound = new List<Fighter>();
		
		foreach(Collider col in hitColliders)
		{
			Fighter hitFighter = col.GetComponent<Fighter>();
			if(hitFighter!=null && hitFighter!=this)
			{
				fightersFound.Add(hitFighter);
			}
		}
		return fightersFound;
	}


	public void MoveTo(Vector3 localPosition, float duration)
	{
		Animate ("run",0.1f);
		movingSpeed = (transform.localPosition-localPosition).magnitude / duration;
		targetPosition = localPosition;

		if(transform.localPosition == targetPosition)
		{
			Animate ("idle",0.1f);
		}
	}


	public void Hit(DamageInfo damage)
	{
		if(hit!=null)
		{
			hit(damage);
		}
	}


	public void SetLocalPosition(Vector3 localPosition)
	{
		transform.localPosition = localPosition;
		targetPosition = localPosition;
	}


	public void Animate(string animState, float fadeTime = 0.25f, float playbackSpeed = 1f)
	{
		animator.speed = playbackSpeed;

		animator.Play(animState);
	}

	
	
	
}
