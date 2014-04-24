using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;
using System;


[System.Serializable]
public class Command
{
	
	public bool enabled = true;
	
	
	[SerializeField][HideInInspector]
	private string methodName = "";
	[SerializeField][HideInInspector]
	private List<Param> Params = new List<Param>();
	
	[SerializeField][HideInInspector]
	private bool doesWaitForFinish = true;
	
	private bool isRunning = false;
	
	[System.NonSerialized]
	private MethodInfo methodInfo = null;
	
	
	public delegate void MessageDelegate();
	public static event MessageDelegate onExecuteCommand;
	
	
	
	public string MethodName { get { return methodName; } }
	public int ParamCount { get { return Params.Count; } }
	
	public bool DoesWaitForFinish	//TODO: May need to add a command attribute that does not allow this, or forces it... TODO: Also a little odd that this is enforced by the Script class
	{
		get { return doesWaitForFinish; }
		set { doesWaitForFinish = IsWaitable ? value : false; }	
	}
	
	public bool IsRunning { get { return isRunning; } }
	
	public bool IsWaitable
	{
		get { return Method!=null && Method.ReturnType==typeof(IEnumerator); }
	}
		
	public string Category
	{
		get
		{
			if(methodInfo==null)
				methodInfo = (typeof(ScriptCommands)).GetMethod(methodName);
			
			string category = "_UNCATEGORIZED";
			
			if(methodInfo!=null)
			{
				CommandCategoryAttribute[] catAtt = (CommandCategoryAttribute[])methodInfo.GetCustomAttributes(typeof(CommandCategoryAttribute),false);
				if(catAtt.Length>=1)
					category = catAtt[0].Category;
			}
			
			return category;
		}
	}
	
	public MethodInfo Method
	{
		get
		{
			if(methodInfo==null)
				methodInfo = (typeof(ScriptCommands)).GetMethod(methodName);

			if(methodInfo==null)
				throw new Exception("Could not find method '"+methodName+"' in class ScriptCommands!");
			
			return methodInfo;
		}
	}

	public ParamType ReturnType
	{
		get
		{
			System.Type t = methodInfo.ReturnType;

			if(( (typeof(double))==t || typeof(float)==t || typeof(System.Single)==t ) )
			{	return ParamType.Number; }
			else if(typeof(int)==t)
			{	return ParamType.Int;	}
			else if(typeof(UnityEngine.Object).IsAssignableFrom(t))
			{	return ParamType.Object;	}
			else if(typeof(bool) == t)
			{	return ParamType.Bool;	}
			else if(typeof(string).IsAssignableFrom(t))
			{	return ParamType.String;	}
			else if(typeof(System.Enum) == t.BaseType)
			{	return ParamType.Enum;	}
			else
			{	return ParamType.Void;	}
		}
	}
	
	
	
	public Command(string methodname)
	{
		methodName = methodname;
		
		methodInfo = Method;	//Use the Method property to set the subclass name and verify the methodname validity
		
		if(methodInfo==null)	return;
		
		Params = new List<Param>();
		ParameterInfo[] paramsInfo = methodInfo.GetParameters();
		for(int i=0;i<paramsInfo.Length;i++)
		{
			Params.Add(new Param(paramsInfo[i].ParameterType, paramsInfo[i].DefaultValue));
		}
	}

	public Command(Hashtable data)
	{
		methodName = (string)data["commandName"];

		methodInfo = Method;

		if(methodInfo==null)	return;


		enabled = (bool)data["enabled"];
		doesWaitForFinish = (bool)data["doesWaitForFinish"];


		Params = new List<Param>();
		ParameterInfo[] paramsInfo = methodInfo.GetParameters();
		
		ArrayList paramList = (ArrayList)data["params"];
		for(int i=0;i<paramsInfo.Length;i++)
		{
			Params.Add(new Param(paramsInfo[i].ParameterType, paramsInfo[i].DefaultValue));

			if(i >= paramList.Count)
			{
				continue;
			}

			Hashtable paramData = (Hashtable)paramList[i]; 
			Params[i].LoadFromHashtable(paramData);
		}
	}
	
	public Hashtable Serialize()
	{
		Hashtable hash = new Hashtable();
		
		hash.Add("commandName",methodName);

		hash.Add("enabled",enabled);
		hash.Add("doesWaitForFinish",doesWaitForFinish);
		
		ArrayList paramList = new ArrayList();
		for(int i=0;i<Params.Count;i++)
		{
			paramList.Add(Params[i].ToHashtable());
		}
		hash.Add("params",paramList);

		return hash;
	}


	
	public IEnumerator Execute()
	{
		object ret = DirectInvoke();

		if(ret!=null && ret.GetType()==typeof(IEnumerator))
		{
			return (IEnumerator)ret;
		}

		return null;
	}

	public object DirectInvoke()
	{
		if(Method==null)	return null;
		
		if(!enabled)		return null;

		isRunning = true;
		
		if(onExecuteCommand!=null)
			onExecuteCommand();
		
		try
		{
			return Method.Invoke(null,ParamsAsObjects);
		}
		catch (Exception e)
		{
			Debug.LogError("Could not call function: " + Method.Name + "(" + ParamsAsObjects.ToString() + ")\n\nCallstack: "+e.StackTrace+"\n\nError: " + e.Message);
		}

		return null;
	}
	
	
	public void Refresh()
	{
		//TODO: Deal with missing methods (allow UPDATING the method name?)
		
		//Verify and/or update method info using the 'Method' property
		methodInfo = Method;
		
		if(methodInfo==null)	return;
		
		ParameterInfo[] actualParamsInfo = methodInfo.GetParameters();
		
			//TODO: Clean this up a bit.
		//Cache the current Param values
		List<object> cachedValues = new List<object>();
		List<System.Type> cachedTypes = new List<System.Type>();
		for(int i=0;i<Params.Count;i++)
		{
			cachedValues.Add (Params[i].Value);
			cachedTypes.Add (Params[i].TypeRecord);
		}
		
		//Re-stock the Params...
		Params = new List<Param>();
		for(int i=0;i<actualParamsInfo.Length;i++)
		{
			Params.Add(new Param(actualParamsInfo[i].ParameterType,actualParamsInfo[i].DefaultValue));
			
			if(cachedValues.Count <= i || cachedValues[i]==null)	continue;
			
				//TODO: Clean this up a bit.
			//If this index of param is still the same type, use the cached value. Also OK if its an int-enum match. Also OK if it's an Object match.
			if(i<cachedValues.Count && (actualParamsInfo[i].ParameterType==cachedValues[i].GetType() || 
										(cachedValues[i].GetType()==typeof(int)) && typeof(System.Enum) == actualParamsInfo[i].ParameterType.BaseType) ||
										(cachedValues[i]==null || (cachedTypes[i]!=typeof(object) && actualParamsInfo[i].ParameterType.IsAssignableFrom(cachedValues[i].GetType()))))
				Params[i].Value = cachedValues[i];
		}
		
		
	}
	
	public IEnumerator WaitForFinish()
	{
		while(isRunning)
			yield return null;
	}
	
	//---Parameter Getters/Setters---//
	
	public Param GetParam(int ind)
	{
		if(ind>=0 && ind<Params.Count)
		{
			return Params[ind];
		}
		return new Param(null,null);
	}
	
	public string GetParamName(int ind)
	{
		ParameterInfo[] info = Method.GetParameters();
		if(ind>=0 && ind<info.Length)
		{
			return info[ind].Name;
		}
		return "";
	}
	
	public void SetParamValue(int ind, object val)
	{
		if(ind>=0 && ind<Params.Count)
		{
			Params[ind].Value = val;
		}
	}
	
	public object[] ParamsAsObjects
	{
		get {
			object[] outs = new object[Params.Count];
			for(int i=0;i<Params.Count;i++)
				outs[i] = Params[i].Value;
			return outs;
		}
	}
	
	
}


