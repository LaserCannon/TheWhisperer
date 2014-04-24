using UnityEngine;
using System.Collections;
using System.Collections.Generic;



public enum DialogBoxStyle
{
	kNone,
	kSubtitle,
	kMessage,
}


public class DialogBox : MonoBehaviour
{

	[SerializeField]
	protected float defaultInterval = 0.05f;


	private string currentText = "";
	private string targetText = "";

	protected UIPanel panel = null;
	protected UILabel textLabel = null;


	private int textIndex = 0;

	protected float currentInterval = 0f;
	protected float iterator = 0f;
	protected float delay = 0f;

	private bool rushing = false;


	public event MessageDelegate onFinished = null;
	public event MessageDelegate onClosed = null;


	public virtual bool CanShareScreen
	{
		get { return false; }
	}

	public bool IsFinished
	{
		get { return textIndex>=targetText.Length; }
	}
	
	// CALLBACKS //
	
	void Awake()
	{
		textLabel = GetComponentInChildren<UILabel>();
		panel = GetComponentInChildren<UIPanel>();

		currentInterval = defaultInterval;
	}

	void Start()
	{
		OnStart();
	}

	void Update()
	{
		UpdateIterator(Time.deltaTime);

		UpdateText();
	}



	protected virtual void OnStart()
	{
		Multitouch.OnTap += OnTap;
	}

	protected virtual void OnFinished()
	{
	}
	
	protected virtual void OnClose()
	{
		Multitouch.OnTap -= OnTap;
	}

	protected virtual void OnTap(Vector2 position)
	{
		if(IsFinished)
		{
			Close ();
		}
		else
		{
			Rush();
		}
	}
	


	public void SetText(string text)
	{
		currentText = "";
		textLabel.text = "";
		targetText = "";
		textIndex = 0;
		iterator = 0f;
		rushing = false;
		
		textLabel.Wrap(text,out targetText);
	}

	public void Rush()
	{
		currentInterval = 0f;
		rushing = true;
	}

	public void Close()
	{
		if(onClosed!=null)
		{
			onClosed();
		}

		Destroy (gameObject, 1f);

		OnClose();
	}

	

	protected void UpdateIterator(float delta)
	{
		if(delay > 0f && !rushing)
		{
			delay -= delta;
			
			if(delay <= 0f)
			{
				iterator -= delay;
				delay = 0f;
			}
		}
		else
		{
			iterator += delta;
		}
	}

	protected void UpdateText()
	{
		if(textIndex<targetText.Length)
		{
			while(iterator >= currentInterval && textIndex<targetText.Length && delay <= 0f)
			{
				if(TryParseMarkup() || TrySkipNGUIMarkup())
				{
					continue;
				}

				char newChar = targetText[textIndex];

				currentText += newChar;

				textIndex++;

				if(newChar!=' ' && newChar!='\n')
				{
					iterator -= currentInterval;
				}
			}

			textLabel.text = currentText;

			AddNewlineSpace();
			
			if(textIndex>=targetText.Length)
			{
				OnFinished ();

				if(onFinished!=null)
				{
					onFinished();
				}
			}
		}
	}

	protected static int CountNewlines(string str)
	{
		int index = str.IndexOf('\n',0);
		int count = 0;
		while(index!=-1)
		{
			count++;
			index = str.IndexOf('\n',index+1);
		}

		return count;
	}

	protected void AddNewlineSpace()
	{
		for(int i=0;i<CountNewlines(targetText)-CountNewlines(currentText);i++)
		{
			textLabel.text += '\n';
		}
	}

	protected bool TrySkipNGUIMarkup()
	{
		if(targetText[textIndex] == '[')
		{
			textIndex++;

			while(textIndex<targetText.Length && targetText[textIndex]!=']')
			{
				textIndex++;
			}

			textIndex++;

			return true;
		}

		return false;
	}

	protected bool TryParseMarkup()
	{
		if(targetText[textIndex] == '<')
		{
			int startindex = textIndex + 1;
			int endindex = targetText.IndexOf('>',textIndex);
			
			if(endindex<0)
			{
				Debug.LogError("DialogBox.cs: End-markup character '>' not found for markup at position "+textIndex+".");
			}
			else
			{
				string mutext = targetText.Substring(startindex,endindex-startindex);
				
				Markup markup = new Markup(mutext);
				
				if(markup.Type==MarkupType.Delay)
				{
					delay = markup.FloatValue;
				}
				else if(markup.Type==MarkupType.Speed)
				{
					if(markup.IsEnd)
					{
						currentInterval = defaultInterval;
					}
					else
					{
						currentInterval = markup.FloatValue <= 0.1f ? 10f : 1f/markup.FloatValue;
					}
				}
				else if(markup.Type==MarkupType.Size)
				{
					//currentText += "[size=" + (int)markup.FloatValue + "]";
					textLabel.fontSize = (int)markup.FloatValue;
				}
				else if(markup.Type==MarkupType.Color)
				{
					if(markup.IsEnd)
					{
						currentText += "[-]";
					}
					else
					{
						currentText += "[" + markup.Value + "]";
					}
				}
				else if(markup.Type==MarkupType.Style)
				{
					if(markup.IsEnd)
					{
						currentText += "[/" + markup.Value + "]";
					}
					else
					{
						currentText += "[" + markup.Value + "]";
					}
				}
				else
				{
					Debug.LogWarning("Markup type '"+markup.Type+"' is currently unsupported.");
				}
				
				textIndex += mutext.Length + 2;
			}
			return true;
		}

		return false;
	}

	
}
