using UnityEngine;
using System.Collections;
using System.Collections.Generic;
	



public struct GestureTouchData
{
	//--Member variables--//
	
	private Vector2 start;
	private Vector2 current;
	private Vector2 delta;
	private float startTime;
	
	private int touchID;
	
	
	//--Properties--//
	
	public Vector2 Start 	{ get { return start; } }
	
	public Vector2 Delta 	{ get { return delta; } }
	
	public float StartTime 	{ get { return startTime; } }
	
	public int TouchID		{ get { return touchID; } }
	
	public Vector2 Current
	{
		get { return current; }
		set
		{
			delta = value-current;
			current = value;
		}
	}
	
	public float CurrentDuration
	{
		get { return Time.time-startTime; }
	}
	
	public Vector2 TotalDelta
	{
		get { return current-start; }
	}
	
	
	//--Constructors--//
	
	public GestureTouchData(Vector2 startPos, int id)
	{
		start = startPos;
		current = startPos;
		delta = Vector2.zero;
		
		startTime = Time.time;
		
		touchID = id;
	}
	
	public GestureTouchData(Vector2 st, Vector2 cur, Vector2 d, int id)
	{
		start = st;
		current = cur;
		delta = d;
		
		startTime = Time.time;
		
		touchID = id;
	}
	
	
	//--Override setters--//
	
	public void OverrideStartTime(float time)
	{
		startTime = time;
	}
	public void OverrideDeltaPosition(Vector2 d)
	{
		delta = d;
	}
	public void OverrideStartPosition(Vector2 st)
	{
		start = st;
	}
}


//TODO: The multitouch script should be updated to use this for each gesture instead!
//TODO: Also, diagram out how gesture priority works.
public abstract class Gesture
{
	
	//TODO: Consider having a "GestureInstance" and "GesturePrototype", so that we can keep track of things like touchPartCount per-touch
	
	private int touchStage = 0;
	public int TouchStage { get { return touchStage; } }
	
	private float confidence = 0.5f;
	protected float Confidence {
		get { return confidence; }
		set { confidence = Mathf.Clamp01(value); }
	}
	
	public abstract GestureType Type { get; }
	
	public abstract int OnTouchStart(Vector2 pos);		//returns '1' if a gesture finished.
	public abstract int OnTouchUpdate(Vector2 pos);
	public abstract int OnTouchUp(Vector2 pos);
	
	
	
	protected virtual void AdvanceTouchCount()
	{
		touchStage++;
	}
}



public class Multitouch : MonoBehaviour
{

	public enum TouchState { Unclaimed, Claimed, Locked }
	
	[System.Serializable]	//Serializable for debug purposes
	public class TouchTracker
	{
		public TouchState State = TouchState.Unclaimed;
		public int TouchIndex = 0;
		
		public TouchTracker(int ind)
		{
			TouchIndex = ind;
		}
		
		public Vector2 Position
		{
#if UNITY_EDITOR || UNITY_STANDALONE_WIN || UNITY_STANDALONE_OSX
			get { return Input.mousePosition; }
#else
			get { return TouchIndex<Input.touches.Length ? Input.touches[TouchIndex].position : Vector2.zero; }
#endif
		}
		public Vector2 Delta
		{
#if UNITY_EDITOR || UNITY_STANDALONE_WIN || UNITY_STANDALONE_OSX
			get { return (Vector2)Input.mousePosition - Multitouch.main.LastMousePos; }
#else
			get { return TouchIndex<Input.touches.Length ? Input.touches[TouchIndex].deltaPosition : Vector2.zero; }
#endif
		}
	};
	
	static Multitouch()
	{
		if(_main==null && Application.isPlaying)
		{
			GameObject go = new GameObject("Multitouch_Singleton");
			_main = go.AddComponent<Multitouch>();
			DontDestroyOnLoad(go);
		}
	}
	
	
	
	private static Multitouch _main;
	public static Multitouch main
	{
		get {
			if(_main==null && Application.isPlaying) {
				GameObject go = new GameObject("Multitouch_Singleton");
				_main = go.AddComponent<Multitouch>();
				DontDestroyOnLoad(go);
			}
			return _main;
		}
	}
	
	private List<Gesture> Gestures = new List<Gesture>();
	
	
	private List<TouchTracker> touches = new List<TouchTracker>();
	/*public List<TouchTracker> Touches
	{
		get { return new List<TouchTracker>(touches); }
	}*/
		
#if UNITY_EDITOR || UNITY_STANDALONE_WIN || UNITY_STANDALONE_OSX
	private Vector2 lastMousePos = Vector2.zero;
	public Vector2 LastMousePos
	{
		get { return lastMousePos; }
	}
#endif
	
	
	protected virtual void Awake()
	{
		_main = this;
		
		touches = new List<TouchTracker>();
#if UNITY_EDITOR || UNITY_STANDALONE_WIN || UNITY_STANDALONE_OSX
		if(Input.GetMouseButtonDown(0))
			touches.Add(new TouchTracker(0));
#else
		for(int i=0;i<Input.touches.Length;i++)
		{
			touches.Add(new TouchTracker(i));
		}
#endif
	}
	
	protected virtual void Update()
	{
#if UNITY_EDITOR || UNITY_STANDALONE_WIN || UNITY_STANDALONE_OSX
		Mouse_HandleInput();
#else
		Multitouch_HandleInput();
#endif
	}
	
	
	
	void Mouse_HandleInput()
	{
		//Clear the TouchStates array if we have no touches
		//    (because if this function doesnt run when a touch comes up, its not removed from this array!)
		if(!Input.GetMouseButton(0))
			touches.Clear();
		
        if(Input.GetMouseButtonDown(0))
		{
			//Add the new "touch"
			touches.Add(new TouchTracker(0));
		
			StartCoroutine(TryTouch(0));
			StartCoroutine(TryTouchHold(0));
			StartCoroutine(TrySwipe(0));
			StartCoroutine(TryDrag(0));
		//	for(int j=0;j<touches.Count-1;j++)
		//		StartCoroutine(TryPinch(j,0));
			StartCoroutine(TryTap(0));
			StartCoroutine(TryDoubleTap(0));
		}
		
		if(Input.GetMouseButtonUp(0))
		{
			//NOTE: This could be simplified for mouse input, but I'm deciding to keep it equal to the multitouch segment, so we have less discrepancy.
			//Set ended touch states' indices to 
			for(int k=0;k<touches.Count;k++) {
				if(touches[k].TouchIndex>0)		touches[k].TouchIndex--;
				else if(touches[k].TouchIndex==0)	{ touches[k].TouchIndex=-1; touches[k].State = TouchState.Locked; }
			}
			//Remove all old touch states
			while(touches.Count>0 && touches[touches.Count-1].TouchIndex==-1)
				touches.RemoveAt(touches.Count-1);
		}
		
		float change = Input.GetAxisRaw("Mouse ScrollWheel");
		if(change!=0f)
		{
			if(OnPinch!=null)	OnPinch(change*500f);
		}
	}
	
#if UNITY_EDITOR || UNITY_STANDALONE_WIN || UNITY_STANDALONE_OSX
	void LateUpdate()
	{
		lastMousePos = Input.mousePosition;
	}
#endif

    void Multitouch_HandleInput()
    {
		//Clear the TouchStates array if we have no touches
		//    (because if this function doesnt run when a touch comes up, its not removed from this array!)
		if(Input.touches.Length==0)
			touches.Clear();

        for (int i = Input.touchCount-1; i >= 0; --i)	//Need to count from top, because taking touches of the list needs to happen top-first; otherwise, numbers get out of order
        {
            switch (Input.touches[i].phase)
            {
                case TouchPhase.Began:
				
					//Add the new touch
					touches.Add(new TouchTracker(i));
				
					StartCoroutine(TryTouch(touches.Count-1));
					StartCoroutine(TryTouchHold(touches.Count-1));
					StartCoroutine(TrySwipe(touches.Count-1));
					StartCoroutine(TryDrag(touches.Count-1));
					for(int j=0;j<touches.Count-1;j++)
						StartCoroutine(TryPinch(j,touches.Count-1));
					StartCoroutine(TryTap(touches.Count-1));
					StartCoroutine(TryDoubleTap(touches.Count-1));

                    break;
				
                case TouchPhase.Canceled:
                case TouchPhase.Ended:
					//Set ended touch states' indices to 
					for(int k=0;k<touches.Count;k++) {
						if(touches[k].TouchIndex>i)		touches[k].TouchIndex--;
						else if(touches[k].TouchIndex==i)	{ touches[k].TouchIndex=-1; touches[k].State = TouchState.Locked; }
					}
					//Remove all old touch states
					while(touches.Count>0 && touches[touches.Count-1].TouchIndex==-1)
						touches.RemoveAt(touches.Count-1);
				
                    break;

                case TouchPhase.Moved:
                case TouchPhase.Stationary:
                    break;
                default:
                    break;
            }
        }
			
    }
	
	// INPUT DELEGATES //
	public delegate void positionDelegate(Vector2 pos);
	public delegate void gestureDelegate(GestureTouchData data);
	public delegate void floatDelegate(float f);
	public delegate void cancelGestureDelegate();
	
	
	// INPUT EVENTS //
	
	public static event floatDelegate OnPinch;
	public static event floatDelegate OnPinchStart;
	public static event floatDelegate OnPinchEnd;
	
	public static event gestureDelegate OnTouch;
	public static event gestureDelegate OnTouchStart;
	public static event gestureDelegate OnTouchEnd;
	
	public static event positionDelegate OnTouchHold;
	public static event positionDelegate OnTouchHoldStart;
	public static event positionDelegate OnTouchHoldEnd;
	public static event positionDelegate OnTouchHoldAttempt;
	public static event cancelGestureDelegate OnTouchHoldAbandonded;
	
	public static event positionDelegate OnTap;
	public static event positionDelegate OnDoubleTap;
	
	public static event gestureDelegate OnDoubleTapHold;
	public static event gestureDelegate OnDoubleTapHoldStart;
	public static event gestureDelegate OnDoubleTapHoldEnd;
	
	public static event gestureDelegate OnSwipe;
	public static event gestureDelegate OnSwipeStart;
	public static event gestureDelegate OnSwipeEnd;
	
	public static event gestureDelegate OnDrag;
	public static event gestureDelegate OnDragStart;
	public static event gestureDelegate OnDragEnd;
	
	
	
	
	// INPUT TRACKER FUNCTIONS //
	private IEnumerator TryTouch(int touchIndex)
	{
		GestureTouchData data = new GestureTouchData(touches[touchIndex].Position,touchIndex);
		
		if(OnTouchStart!=null)	OnTouchStart(data);
		
		while(!IsTouchOver(touchIndex))
		{
			data.Current = touches[touchIndex].Position;
			
			//if(!IsTouchUnclaimed(touchIndex))
			//	break;
			
			if(OnTouch!=null)	OnTouch(data);
			
			yield return null;
		}
		
		if(OnTouchEnd!=null)	OnTouchEnd(data);
	}
	
	private IEnumerator TryTap(int touchIndex)
	{
		const float TAP_TIME_THRESHOLD = 0.25f;
		float TAP_DIST_THRESHOLD = Screen.height/50f;
		
		GestureTouchData data = new GestureTouchData(touches[touchIndex].Position,touchIndex);
		
		while(!IsTouchOver(touchIndex))
		{
			data.Current = touches[touchIndex].Position;
			
			//If the touch moved or was held down too long, it's not a tap, so quit the ENTIRE FUNCTION.
			if(data.TotalDelta.sqrMagnitude > TAP_DIST_THRESHOLD*TAP_DIST_THRESHOLD)
				yield break;
			if(data.CurrentDuration > TAP_TIME_THRESHOLD)
				yield break;
			
			yield return null;
		}
		
		// -- OnTap
		if(OnTap!=null) OnTap(data.Current);
	}
	
	private IEnumerator TryTouchHold(int touchIndex)
	{
		const float DEAD_TIME = 0.25f;
		float TAPHOLD_DIST_THRESHOLD = Screen.height/40f;
		
		bool bActivated = false;
		
		GestureTouchData data = new GestureTouchData(touches[touchIndex].Position,touchIndex);
		
		while(!IsTouchOver(touchIndex))
		{
			data.Current = touches[touchIndex].Position;
	
			//If the touch is either locked or consumed before we got going, quit trying to touch-hold
			if(!IsTouchUnclaimed(touchIndex))
			{
				if(OnTouchHoldAbandonded!=null)	OnTouchHoldAbandonded();
				break;
			}
			
			//If the touch has moved too far, it's not longer a tap-hold, so exit the loop
			if(data.TotalDelta.sqrMagnitude > TAPHOLD_DIST_THRESHOLD*TAPHOLD_DIST_THRESHOLD)
			{
				if(OnTouchHoldAbandonded!=null)	OnTouchHoldAbandonded();
				break;
			}
			
			//After the "Dead time", test for drag
			if(data.CurrentDuration >= DEAD_TIME)
			{
				if(!bActivated) {
					bActivated = true;
					// -- OnTouchHoldStart
					if(OnTouchHoldStart!=null)	OnTouchHoldStart(data.Current);
				}
				
				// -- OnTouchHold
				if(OnTouchHold!=null)	OnTouchHold(data.Current);
			}
			else
			{
				if(OnTouchHoldAttempt!=null)	OnTouchHoldAttempt(data.Current);
			}
			
			yield return null;
		}
		
		if(bActivated) {
			// -- OnTouchHoldEnd
			if(OnTouchHoldEnd!=null)	OnTouchHoldEnd(data.Current);
		}
	}
	
	private IEnumerator TryDrag(int touchIndex)
	{
		const float DEAD_TIME = 0.125f;
		float DRAG_DIST_THRESHOLD = Screen.height/40f;
		
		bool bActivated = false;
		
		GestureTouchData data = new GestureTouchData(touches[touchIndex].Position,touchIndex);
		
		while(!IsTouchOver(touchIndex))
		{
			data.Current = touches[touchIndex].Position;
			
			//If the touch is either locked or consumed before we got going, quit trying to touch-hold
			if(!IsTouchUnclaimed(touchIndex))
				break;
			
			//After the "Dead time", test for drag
			if(data.CurrentDuration >= DEAD_TIME)
			{
				if(!bActivated && data.TotalDelta.sqrMagnitude > DRAG_DIST_THRESHOLD*DRAG_DIST_THRESHOLD) {
					bActivated = true;
					// -- OnDragStart
					if(OnDragStart!=null)	OnDragStart(data);
				}
				
				// -- OnDrag
				if(OnDrag!=null)	OnDrag(data);
			}
			
			yield return null;
		}
		
		if(bActivated) {
			// -- OnDragEnd
			if(OnDragEnd!=null)	OnDragEnd(data);
		}
	}
	
	
	private IEnumerator TrySwipe(int touchIndex)
	{
		float SWIPE_DECAY = Screen.height;				//On a screen with height 1080, 1080 px/sec
		float SWIPE_MIN_THRESHOLD = Screen.height/50f;	//On a screen with height 1080, 22 px
		float REQ_SWIPE_DIST = Screen.height/20f;		//On a screen with height 1080, 54 px
		
		GestureTouchData data = new GestureTouchData(touches[touchIndex].Position,touchIndex);
		
		Vector2 vSwipeStartDecayed = data.Current;	//The start of a swipe, which decays TOWARD the current position each frame
		
		bool bActivated = false;
		
		while(!IsTouchOver(touchIndex))
		{
			if(!IsTouchUnclaimed(touchIndex))
			{
				break;
			}
			
			data.Current = touches[touchIndex].Position;
			
			if(!bActivated &&
			   data.TotalDelta.sqrMagnitude > SWIPE_MIN_THRESHOLD*SWIPE_MIN_THRESHOLD &&
			   (data.Current-vSwipeStartDecayed).sqrMagnitude > REQ_SWIPE_DIST*REQ_SWIPE_DIST)
			{
				bActivated = true;
				// -- OnSwipeStart
				if(OnSwipeStart!=null)	OnSwipeStart(data);
			}
			
			if(bActivated) {
				// -- OnSwipe
				if(OnSwipe!=null)	OnSwipe(data);	//TODO: Determine when a swipe starts, stays, and ends (needs balancing)
			}
			
			//Swipe Decay
			vSwipeStartDecayed = Vector2.MoveTowards(vSwipeStartDecayed,data.Current,SWIPE_DECAY*Time.deltaTime);
			
			yield return null;
		}
			
		if(bActivated) {
			// -- OnSwipeEnd
			if(OnSwipeEnd!=null)	OnSwipeEnd(data);
		}
	}
	
	private IEnumerator TryDoubleTap(int touchIndex)
	{
		const float TAP_DOWN_TIME_MAX = 0.25f;
		const float TAP_UP_TIME_MAX = 0.5f;
		
		GestureTouchData data = new GestureTouchData(touches[touchIndex].Position,touchIndex);
		
		//Wait for the touch to be up OR for a timeout
		while(!IsTouchOver(touchIndex)) {
			data.Current = touches[touchIndex].Position;
			
			if(!IsTouchUnclaimed(touchIndex))		yield break;
			
			if(data.CurrentDuration<TAP_DOWN_TIME_MAX)	yield return null;	//wait
			else 									yield break;		//quit entire function
		}
		
		data.OverrideStartTime(Time.time);
		
		//Wait for the touch to be down again OR for a timeout
		while(IsTouchOver(touchIndex)) {
			if(data.CurrentDuration<TAP_UP_TIME_MAX)	yield return null;	//wait
			else 									yield break;		//quit entire function
		}
		
		//Double tap complete!
		bool bActivated = false;
		data.Current = touches[touchIndex].Position;
		data.OverrideStartTime(Time.time);
		data.OverrideStartPosition(data.Current);
		//Claim(touchIndex);
		
		//Wait and see if this seconds tap turns into a hold, or just ends in a double tap
		while(!IsTouchOver(touchIndex))
		{
			data.Current = touches[touchIndex].Position;
			
			if(!bActivated && data.CurrentDuration >= TAP_DOWN_TIME_MAX) {
				bActivated = true;
				// -- OnDoubleTapHoldStart
				if(OnDoubleTapHoldStart!=null)	OnDoubleTapHoldStart(data);
			}
			if(bActivated) {
				// -- OnDoubleTapHold
				if(OnDoubleTapHold!=null)	OnDoubleTapHold(data);
			}
			yield return null;
		}
		
		//End in a double-tap or a double-tap-hold-ending
		if(!bActivated) {		//If the second touch wasnt held down very long, log a double tap
			// -- OnDoubleTap
			if(OnDoubleTap!=null)	OnDoubleTap(data.Start);
		}
		else {
			//Otherwise, it's the end of a double-tap-hold.
			// -- OnDoubleTapHoldEvent
			if(OnDoubleTapHoldEnd!=null)	OnDoubleTapHoldEnd(data);
		}
	}
	
	
	//TODO: Look this over; may not be functioning
	private IEnumerator TryPinch(int index1, int index2)
	{
		if(!IsTouchUnclaimed(index2))	//Only the new touch needs to be unclaimed
			yield break;
		
		float fInitDist = (touches[index1].Position-touches[index2].Position).magnitude;
		bool bDeadZonePassed = false;
		float PinchPixelThreshold = 5f;
		
		//Claim both touches, so that most other mechanics cant use them
		Claim(index1);
		Claim(index2);
		Vector2 t1 = Vector2.zero;
		Vector2 t2 = Vector2.zero;
		//Two touches have been consumed; now wait for the two to pass the distance difference threshold
		while(!IsTouchOver(index1) && !IsTouchOver(index2))
		{
			t1 = touches[index1].Position;
			t2 = touches[index2].Position;
			if(!bDeadZonePassed && Mathf.Abs((t1-t2).magnitude-fInitDist) > PinchPixelThreshold)
			{
				bDeadZonePassed = true;
				if(OnPinchStart!=null)	OnPinchStart((t1-t2).magnitude-fInitDist);
			}
			
			if(bDeadZonePassed)
			{
				if(OnPinch!=null)	OnPinch((t1-t2).magnitude-fInitDist);
				fInitDist = (t1-t2).magnitude;
			}
				
			yield return null;
		}
		
		if(bDeadZonePassed) {
			if(OnPinchStart!=null)	OnPinchEnd((t1-t2).magnitude-fInitDist);
		}
		
		//This was for megadillo... do we still need it?
		if(!IsTouchOver(index2))
			RenewTouch(index2);
		if(!IsTouchOver(index1))
			RenewTouch(index1);
		
	}


	
	
	public void BeginGestureCull(GestureTouchData data)
	{
		for(int i=0;i<Gestures.Count;i++)
		{
			int code = Gestures[i].OnTouchStart(data.Current);
			if(code==0)continue;
		}
	}
	
	public void GestureCull(GestureTouchData data)
	{
		for(int i=0;i<Gestures.Count;i++)
		{
			int code = Gestures[i].OnTouchUpdate(data.Current);
			if(code==0)continue;
		}
	}
	
	public void EndGestureCull(GestureTouchData data)
	{
		for(int i=0;i<Gestures.Count;i++)
		{
			int code = Gestures[i].OnTouchUp(data.Current);
			if(code==0)continue;
		}
	}

	
	
	
	
	// TOUCH CLAIMING FUNCTIONS //
	
	public static void Claim(int index)
	{
		if(index>=0 && index<=main.touches.Count && main.touches[index].State!=TouchState.Locked)
		{
			main.touches[index].State = TouchState.Claimed;
		}
	}
	public static void Unclaim(int index)
	{
		if(index>=0 && index<=main.touches.Count && main.touches[index].State!=TouchState.Locked)
		{
			main.touches[index].State = TouchState.Unclaimed;
		}
	}
	
	public static bool IsTouchOver(int index)
	{
		return IsTouchLocked(index);
	}
	
	public static bool IsTouchUnclaimed(int index)
	{
		return index>=0 && index<main.touches.Count && main.touches[index].State==TouchState.Unclaimed;
	}
	
	public static bool IsTouchLocked(int index)
	{
		return index<0 || index>=main.touches.Count || main.touches[index].State==TouchState.Locked;
	}
	
	
	public static void RenewTouch(int index)
	{
		//Reinstate touch as if it was just started (almost)
		main.touches[index].State = TouchState.Unclaimed;
		
		//NOTE: Be careful with these, they could lead to INFINITE LOOPS if this function is called in them!
		main.StartCoroutine(main.TryTouchHold(index));
		main.StartCoroutine(main.TrySwipe(index));
	}
	
}
