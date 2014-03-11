using UnityEngine;
using System.Collections;

public abstract class InteractiveProp : Prop, ITappable
{
	public abstract void OnTapped();
	public abstract void OnTouched();
}
