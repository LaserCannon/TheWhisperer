using UnityEngine;
using System.Collections;
using System.Collections.Generic;



public enum DialogBoxStyle
{
	kNone,
	kSubtitle,
	kMessage,
}

public enum MarkupType { None, Delay, Speed, Size, Color, Style, }
public class Markup
{
	public MarkupType Type;
	public string Value;
	
	public float FloatValue
	{
		get { return float.Parse(Value); }
	}
	public string[] StringsValue
	{
		get
		{
			return new string[1]{""};
		}
	}
	public  Color ColorValue
	{
		get
		{
			return Color.white;
		}
	}
	
	
	public Markup(string markupText)
	{
		Type = MarkupType.None;
		
		string[] segments = markupText.Split(new char[]{'='});
		
		if(segments.Length!=2)	{ Debug.LogError ("DialogBox.cs: Wrong number of '=' in text markup"); return;}
		
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
			Type = MarkupType.Style;
			break;
		default:
			Debug.LogError("DialogBox.cs: Unidentified Markup Type '" + segments[0] + "'.");
			break;
		}
		
		Value = segments[1];
	}
}



public class DialogBox : MonoBehaviour
{
	
	
	private string text = "";
	public string Text
	{
		get { return text; }
		set {
			text = value;
			textMesh.text = text;
		}
	}
	
	
	
	private TextMesh textMesh;
	
	public Renderer background;
	
	
	// CALLBACKS //
	
	void Awake()
	{
		textMesh = GetComponentInChildren<TextMesh>();
		if(textMesh==null)	textMesh = gameObject.AddComponent<TextMesh>();
		
		//Make certain we set the text correctly
		Text = text;
	}
	
	
	
	
	// CLASS FUNCTIONS //
	
	public static DialogBox NewDialogBox(DialogBoxStyle style, string text)
	{
		
		DialogBox box = null;
		MeshRenderer mr = null;
		
		GameObject go = (GameObject) Resources.Load ("Prefabs/DialogBox");
		if(go!=null)
		{
			go = (GameObject) Instantiate(go);
			box = go.GetComponentInChildren<DialogBox>();
			mr = go.GetComponentInChildren<MeshRenderer>();
		}
		
		if(box==null || mr==null)
		{
			//Create a new dialog box from scratch
			go = new GameObject("DialogBox_");
			box = go.AddComponent<DialogBox>();
			go.AddComponent<MeshRenderer>();
			mr = go.AddComponent<MeshRenderer>();
		}
		
		//Start the box at the given color, and fade in
		box.SetTextAlpha(0f);
		box.StartCoroutine(box.FadeTo(1f,2f));
		
		box.StartCoroutine(box.SetText(text,0.25f));
		
		return box;
	}
	
	public static bool EndDialog(DialogBox dialog)
	{
		if(dialog==null)	return false;
		
		dialog.StartCoroutine(dialog.End());
		
		return true;
	}
	
	
	
	
	// INTERNAL FUNCTIONS //
	
	private void SetTextAlpha(float alpha)
	{
		Color c = textMesh.renderer.material.color;
		c.a = alpha;
		textMesh.renderer.material.color = c;
		
		if(background!=null)	background.material.color = c;
	}
	
	
	
	private IEnumerator SetText(string text, float waitTime = 0f)
	{
		yield return new WaitForSeconds(waitTime);
		
		float charInterval = 0.02f;
		float passedTime = 0f;
		
		string curDisplayed = "";
		int index = 0;
		
		while(index < text.Length)
		{
			passedTime+=Time.deltaTime;
			
			while(passedTime>charInterval && index<text.Length)
			{
				if(text[index] == '<')
				{
					index++;
					int endindex = text.IndexOf('>',index);
					
					if(endindex<0)
						Debug.LogError("DialogBox.cs: End-markup character '>' not found for markup at position "+index+".");
					else
					{
						string mutext = text.Substring(index,endindex-index);
						
						Markup markup = new Markup(mutext);
						
						if(markup.Type==MarkupType.Delay)
							yield return new WaitForSeconds(markup.FloatValue);
						else if(markup.Type==MarkupType.Speed)
							charInterval = markup.FloatValue <= 0.01f ? 10f : 1f/markup.FloatValue;
						else if(markup.Type==MarkupType.Size)
							textMesh.characterSize = markup.FloatValue;
						else
							Debug.LogWarning("Markup type '"+markup.Type+"' is unsupported.");
						
						index += mutext.Length+1;
					}
				}
				
				curDisplayed += text[index];
				index++;
				passedTime -= charInterval;
				Text = curDisplayed;
			}
				
			yield return null;
		}
		
		//TODO: Markup!
		// delay:				<delay=1.0>
		// change type speed:	<speed=2.0> (in letters per second)
		// font size:			<size=1.5> (in multiple of default size)
		// font color:			<color=1,0,0>
		// font style:			<style=italic,bold>
		
	}
	
	private IEnumerator FadeTo(float toOpacity, float speed)
	{
		if(speed==0f)	yield break;
		
		float curAlpha = textMesh.renderer.material.color.a;
		
		//Fade box to the target opacity
		while(curAlpha != toOpacity)
		{
			curAlpha = Mathf.MoveTowards(curAlpha, toOpacity, speed*Time.deltaTime);
			SetTextAlpha(curAlpha);
			yield return null;
		}
	}
	
	private IEnumerator End()
	{
		//Fade out, and destroy.
		yield return StartCoroutine(FadeTo (0f,2f));
		Destroy (gameObject);
	}
	
	
	
	
	
	
}
