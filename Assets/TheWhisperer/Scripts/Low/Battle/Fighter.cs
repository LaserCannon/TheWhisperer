using UnityEngine;
using System.Collections;
using System.Collections.Generic;









public abstract class Fighter : MonoBehaviour
{
	
	public string DeathAnimString = "die";
	
	
	//private bool blocking = false;
	private bool attacking = false;
	//private bool vulnerable = false;
	
	protected Vulnerability currentVulnerability;
	
	//private bool inRange = false;
	
	
	private Vector3 initPos = Vector3.zero;
	
	
	//TODO: Instead, point to a "FighterStats" class of some sort
	private int hp = 10;
	[SerializeField]
	private int maxHp = 10;
	
	
	public delegate void OnDeathDelegate(Fighter deadFighter);
	public event OnDeathDelegate FighterDied = null;
	
	
	//Properties
	public bool IsAttacking { get { return attacking; } }
	
	public bool IsDead { get { return hp<=0; } }
	
	public Fighter Opponent
	{
		get { 
			if(BattleManager.Current==null)
				return null;
			return BattleManager.Current.GetOpponentFor(this);
		}
	}
	
	//Functions
	
	protected void Awake()
	{
	}
	
	protected void Start()
	{
		initPos = transform.localPosition;
		moveToPos = initPos;
		
		hp = maxHp;
	}
	
	public void Update()
	{
		if(transform.localPosition!=moveToPos)
			transform.localPosition = Vector3.MoveTowards(transform.localPosition,moveToPos,Time.deltaTime * curSpeed);
	}
	
	
	private Vector3 moveToPos = Vector3.zero;
	private float curSpeed = 0f;
	private void Move(Vector3 toPos, float time)
	{	
		moveToPos = toPos;
		curSpeed = (transform.localPosition-toPos).magnitude / time;
	}
	
	
	
	
	
	public void AddHP(int amt)
	{
		hp = Mathf.Clamp (hp + amt,0,maxHp);
		
		DamageText.ThrowTextFromPoint(amt.ToString(),collider.bounds.center);
	}
	
	public void SetHP(int amt)
	{
		hp = Mathf.Clamp (amt,0,maxHp);
	}
	
	
	protected IEnumerator DoAttack(Attack att)
	{
		attacking = true;
		
		float start = Time.time;
		
		for(int i=0;i<att.Timeline.Count;i++)
		{
			while(Time.time-start < att.Timeline[i].Timecode)
			{
				if(IsDead)
				{
					attacking = false;
					yield break;
				}
				
				yield return null;
			}
			
			DoBattleAction(att.Timeline[i]);
		}
		
		animation.CrossFade("idle");
		
		attacking = false;
	}
	
	protected void DoBattleAction(BaseBattleAction action)
	{
		//--Damage--//
		if(action.GetType() == typeof(DamageBattleAction)) {
			DamageBattleAction dmg = (DamageBattleAction)action;
			DoHit (dmg.Damage);
		}
		//--Block--//
		else if(action.GetType() == typeof(BlockBattleAction)) {
			currentVulnerability = Vulnerability.NewVulnerability((BlockBattleAction)action);
			StartCoroutine(ResetVulnerability(action.Duration));
		}
		//--Vulnerability--//
		else if(action.GetType() == typeof(VulnerabilityBattleAction)) {
			currentVulnerability = Vulnerability.NewVulnerability((VulnerabilityBattleAction)action);
			StartCoroutine(ResetVulnerability(action.Duration));
		}
		//--Script--//
		else if(action.GetType() == typeof(ScriptBattleAction)) {
			((ScriptBattleAction)action).Execute();
		}
		//--Animate--//
		else if(action.GetType() == typeof(AnimateBattleAction)) {
			if(animation!=null) {
				animation.CrossFade( ((AnimateBattleAction)action).AnimString, 0.15f );
			}
		}
		//--Move--//
		else if(action.GetType() == typeof(MoveBattleAction)) {
			Move( ((MoveBattleAction)action).TargetLocalPosition, ((MoveBattleAction)action).Duration );
		}
	}
	
	
	
	protected IEnumerator ResetVulnerability(float delay)
	{
		yield return new WaitForSeconds(delay);
		
		currentVulnerability = null;
	}
		
	

	
	protected void DoHit(DamageInfo damage)
	{
		Fighter opp = Opponent;

		if(opp == null)
			return;

		attacking = true;
		
		Collider[] hits = Physics.OverlapSphere(transform.TransformPoint(damage.Position),damage.Radius);
		for(int i=0;i<hits.Length;i++)
		{
			if(hits[i]==opp.collider)
				opp.OnWasHit(damage);
		}
	}
	
	
	//TODO: Separate this into other functions, such as a "CalculateDamage" pipeline
	public void OnWasHit(DamageInfo damage)
	{
	//	Debug.Log ("Fighter "+gameObject.name+" is is hit!");
		
		float totalDamage = damage.BaseDamage;
		
		if(currentVulnerability!=null)
		{
			totalDamage *= (1f + currentVulnerability.DamageOffset);
			
			BreakRequirement req;
			for(int i=0;i<currentVulnerability.BreakReq.Count;i++)
			{
				req = currentVulnerability.BreakReq[i];
				req.HitWith(damage.Type,(int)damage.BaseDamage);
			}
		
			if(currentVulnerability.IsBroken())
			{
				Knockback kb = damage.KnockbackStrength + currentVulnerability.KnockbackOffset;
				
				Break();
				
				totalDamage *= (float)((int)kb) / 2f + 1f;
			}
		}
		
		
			
		AddHP(-(int)totalDamage);
			
		
		
			
		if(hp<=0)
		{
			Die ();
		}
		
	}
	
	protected void Break()
	{
		StopAllCoroutines();	//TODO: Find a better way
	}
	
	protected void Die()
	{
		animation.CrossFade(DeathAnimString,0.15f);
		
		if(FighterDied!=null)
		{
			FighterDied(this);
		}
	}
	
	
}
