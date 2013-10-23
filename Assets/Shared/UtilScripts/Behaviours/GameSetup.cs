using UnityEngine;
using System.Collections;

public class GameSetup : MonoBehaviour {
	
	[SerializeField]
	private int frameRate = 60;
	
	//TODO: Make this not a behaviour ?
	void Start () {
#if !UNITY_EDITOR
		//Set up the target frame rate for the ENTIRE game, not just his level
		if(!Application.isEditor)	Application.targetFrameRate = frameRate;
#endif
		
#if UNITY_EDITOR
		frameRate = frameRate + 1;	//dummy, so the compiler stops complaining about not using frameRate!
#endif
	}
}
