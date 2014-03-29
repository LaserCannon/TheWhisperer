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
	
#if UNITY_EDITOR

	public static bool CallGUIFunction(Command cmd, int prmIndex, object input, out object outval)
	{
		MethodInfo info = cmd.Method;
		
		object[] atts = info.GetCustomAttributes(false);
		
		for(int i=0;i<atts.Length;i++)
		{
			if(atts[i] is CommandGUIFunctionAttribute)
			{
				for(int pr=0; pr<((CommandGUIFunctionAttribute)atts[i]).ParamIndices.Length; pr++)
				{
					int pindex = ((CommandGUIFunctionAttribute)atts[i]).ParamIndices[pr];
					
					if(pindex==prmIndex)
					{
						System.Type type = System.Type.GetType("ScriptCommandsUI");

						if(type==null)
							Debug.Log("Type is null");
					
						MethodInfo guiMethod = type.GetMethod( ((CommandGUIFunctionAttribute)atts[i]).GUIMethods[pr]);
						
						if(guiMethod!=null)
						{
							if(guiMethod.GetParameters().Length==3)
							{
								object[] prms = new object[3] { cmd, prmIndex, input };
								outval = guiMethod.Invoke(null,prms);
								return true;
							}
							else
								Debug.LogWarning("Parameters for '" + cmd.MethodName + "' are incorrect!");
						}
					}
				}
			}
		}
		
		outval = null;
		
		return false;
	}
#endif
	
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

