using UnityEngine;
using System.Collections;

#if UNITY_EDITOR

using UnityEditor;

public static class ScriptEditorStyles
{


	private static Texture2D white = null;
	public static Texture2D White
	{
		get
		{
			if(white==null)
			{
				white = new Texture2D(1,1);
				white.SetPixel(0,0,Color.white);
				white.Apply();
			}
			return white;
		}
	}
	
	private static GUIStyle greyedOutStyle;
	public static GUIStyle GreyedOutStyle
	{
		get {
			if(greyedOutStyle==null)
			{
				greyedOutStyle = new GUIStyle(EditorStyles.whiteBoldLabel);
				greyedOutStyle.normal.textColor = Color.gray;
			}
			return greyedOutStyle;
		}
	}
	private static GUIStyle activeStyle;
	public static GUIStyle ActiveStyle
	{
		get {
			if(activeStyle==null)
			{
				activeStyle = new GUIStyle(EditorStyles.whiteBoldLabel);
				activeStyle.normal.textColor = Color.green;
			}
			return activeStyle;
		}
	}



}
#endif
