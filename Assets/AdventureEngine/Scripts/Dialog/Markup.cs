using UnityEngine;
using System.Collections;
using System.Collections.Generic;



public enum MarkupType { None, Delay, Speed, Size, Color, Style, }


public class Markup
{
	public MarkupType Type;
	public string Value;

	public bool IsEnd = false;
	
	public float FloatValue
	{
		get { return float.Parse(Value); }
	}

	public Markup(string markupText)
	{
		Type = MarkupType.None;
		
		string[] segments = markupText.Split(new char[]{'='});
		
		if(segments.Length<1)	{ Debug.LogError ("DialogBox.cs: Invalid markup!" + markupText); return;}

		if(segments[0][0] == '/')
		{
			IsEnd = true;
		}
		
		switch(segments[0])
		{
		case "delay":
			Type = MarkupType.Delay;
			break;
		case "speed":
			Type = MarkupType.Speed;
			break;
		case "size":
			Type = MarkupType.Size;
			break;
		case "color":
			Type = MarkupType.Color;
			break;
		case "style":
		case "i":
		case "b":
		case "u":
			Type = MarkupType.Style;
			break;
		default:
			Debug.LogError("DialogBox.cs: Unidentified Markup Type '" + segments[0] + "'.");
			break;
		}

		if(segments.Length > 1)
		{
			Value = segments[1];
		}
		else
		{
			if(IsEnd)
			{
				Value = segments[0];
			}
			else
			{
				Debug.LogError ("DialogBox.cs: Invalid markup! "+markupText); 
			}
		}
	}
}
