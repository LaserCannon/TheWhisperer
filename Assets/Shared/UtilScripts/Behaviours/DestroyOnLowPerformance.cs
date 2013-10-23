using UnityEngine;
using System.Collections;

public class DestroyOnLowPerformance : MonoBehaviour
{
    // Use this for initialization
#if UNITY_IPHONE
    void Start()
    {
        if (iPhone.generation == iPhoneGeneration.iPad1Gen || iPhone.generation == iPhoneGeneration.iPhone3GS
			|| iPhone.generation == iPhoneGeneration.iPodTouch4Gen || iPhone.generation == iPhoneGeneration.iPodTouch3Gen
			|| iPhone.generation == iPhoneGeneration.iPodTouch2Gen || iPhone.generation == iPhoneGeneration.iPodTouch1Gen
			|| iPhone.generation == iPhoneGeneration.iPhone3G || iPhone.generation == iPhoneGeneration.iPhone4)
            Destroy(gameObject);
    }
#endif
}
