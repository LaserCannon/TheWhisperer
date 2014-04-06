using UnityEngine;
using System.Collections;
using System.Reflection;

public class CommandAttributesEditorExtension
{

	public static bool CallGUIFunctionForCommand(Command cmd, int prmIndex, object input, out object outval)
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

}
