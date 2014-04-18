using UnityEngine;
using System.Collections;
using System.Reflection;
using System;



//TODO: Associate an icon with each command, for display in the editor

//TODO: Attribute for warnings if something isnt concluded (i.e. control is taken from the player but not given back)(i.e. RequireClosingCommand)


[AttributeUsage(AttributeTargets.Method)]
public class SimpleCommandGUIFunctionAttribute : CommandGUIFunctionAttribute
{  
	public int ParamIndex { get { return paramIndices[0]; } }
	public string GUIMethod { get { return guiMethods[0]; } }  
	
	public SimpleCommandGUIFunctionAttribute(int parameterIndex, string guiMethodName)
	{
		paramIndices = new int[1] { parameterIndex };
		guiMethods = new string[1] { guiMethodName };
	}
}

[AttributeUsage(AttributeTargets.Method)]
public class CommandGUISizeAttribute : Attribute
{
	public Vector2 size = Vector2.one;


	public CommandGUISizeAttribute(Vector2 pixelSize)
	{
		size = pixelSize;
	}

	public CommandGUISizeAttribute(float x, float y)
	{
		size = new Vector2(x,y);
	}
}

[AttributeUsage(AttributeTargets.Method)]
public class CommandGUIFunctionAttribute : Attribute
{
	protected int[] paramIndices;
	public int[] ParamIndices { get { return paramIndices; } }
	
	protected string[] guiMethods;
	public string[] GUIMethods { get { return guiMethods; } }  
	
	protected CommandGUIFunctionAttribute()
	{
	}
	
	public CommandGUIFunctionAttribute(int[] parameterIndices, string[] guiMethodNames)
	{
		paramIndices = parameterIndices;
		guiMethods = guiMethodNames;
		
		if(parameterIndices.Length != guiMethodNames.Length)
		{
			Debug.Log ("WARNING!!! CommandGUIFunctionAttribute requires the same number of INDICES and METHOD NAMES!!!");
		}
	}

	
}


[AttributeUsage(AttributeTargets.Method)]
public class CommandCategoryAttribute : Attribute
{
	string category;
	public string Category { get { return category; } }

	public CommandCategoryAttribute(string cat)
	{
		category = cat;
	}
}

[AttributeUsage(AttributeTargets.Method)]
public class ForceWaitAttribute : Attribute
{
	public ForceWaitAttribute() {}
}
[AttributeUsage(AttributeTargets.Method)]
public class ForceNoWaitAttribute : Attribute
{
	public ForceNoWaitAttribute() {}
}

