using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;
using System;



public enum ParamType { Object, Number, Int, String, Bool, Enum }
[System.Serializable]
public class Param
{
	[SerializeField][HideInInspector]
	public ParamType Type;
	
	[SerializeField][HideInInspector]
	private UnityEngine.Object obj = null;
	[SerializeField][HideInInspector]
	private System.Single flt = 0f;
	[SerializeField][HideInInspector]
	private int itg = 0;
	[SerializeField][HideInInspector]
	private string str = "";
	[SerializeField][HideInInspector]
	private bool   bln = false;
	[SerializeField][HideInInspector]
	private string typ = "";
	
	public Param(System.Type t, object initVal)
	{
		typ = t.AssemblyQualifiedName;
		if(initVal!=null && initVal.GetType()!=typeof(System.DBNull))
			Value = initVal;
		else
			SetType(t);
	}
	
	public object Value
	{
		get {
			object val = null;
			switch(Type) {
			case ParamType.Object:	val = obj; break;
			case ParamType.Number:	val = flt; break;
			case ParamType.Int:		val = itg; break;
			case ParamType.String:	val = str; break;
			case ParamType.Bool:	val = bln; break;
			case ParamType.Enum:	val = itg; break;	//Works by using the 'itg' to store the actual data, TODO: find a way to cast dynamically to an enum
			default:				val = null; break;
			}
			return val;
		}
		set {	//TODO: Clean this up a bit.
			if(value!=null && ( (typeof(double))==value.GetType() || typeof(float)==value.GetType() || typeof(System.Single)==value.GetType() ) )
			{	flt = (System.Single)value; Type = ParamType.Number;	}
			else if(value!=null && typeof(int)==value.GetType())
			{
				itg = (int)value;
				if(Type!=ParamType.Enum)	Type = ParamType.Int;	//TODO: Should find out a way to cast enums, so we dont have to do this
			}
			else if(value==null || typeof(UnityEngine.Object).IsAssignableFrom(value.GetType()))
			{	
				Type = ParamType.Object; 
				if(value==null)	obj = null;
				else 	{ obj = (UnityEngine.Object)value; typ = value.GetType().AssemblyQualifiedName; }
			}
			else if(value!=null && typeof(bool) == value.GetType())
			{	bln = (bool)value; Type = ParamType.Bool;	}
			else if(value!=null && (value as string) != null)
			{	str = (string)value; Type = ParamType.String;	}
			else if(value!=null && typeof(System.Enum) == value.GetType().BaseType)
			{	itg = (int)value; Type = ParamType.Enum;	typ = value.GetType().AssemblyQualifiedName;	}
			else if(value!=null)
			{	Debug.LogError ("Cannot Convert '" + value.GetType().ToString() + "' to a Param Value.");	}
		}
	}
	
	
	private void SetType(System.Type t)
	{
		typ = t.AssemblyQualifiedName;
		
		if(( (typeof(double))==t || typeof(float)==t || typeof(System.Single)==t ) )
		{	flt = 0f;	Type = ParamType.Number; }
		else if(typeof(int)==t)
		{	Type = ParamType.Int;	}
		else if(typeof(UnityEngine.Object).IsAssignableFrom(t))
		{	Type = ParamType.Object;	}
		else if(typeof(bool) == t)
		{	Type = ParamType.Bool;	}
		else if(typeof(string).IsAssignableFrom(t))
		{	Type = ParamType.String;	}
		else if(typeof(System.Enum) == t.BaseType)
		{	Type = ParamType.Enum;	}
		else
		{	Debug.LogError ("Cannot Convert '" + t.ToString() + "' to a Param Value.");	}
	}
	
	
	public UnityEngine.Object Object {
		get { return obj; }
	}
	public float Float {
		get { return flt; }
	}
	public int Int {
		get { return itg; }
	}
	public string String {
		get { return str; }
	}
	public bool Bool {
		get { return bln; }
	}
	public System.Type TypeRecord {
		get { if(typ==null)	return typeof(object); else return (System.Type.GetType(typ)); }
	}
	
	/*public static T? IntToEnum<T> (int num) where T : struct, IConvertible
	{
		return (T)System.Enum.Parse(typeof(T), num.ToString(), true);
	}*/
	
	public bool IsObject {
		get { return Type==ParamType.Object; }
	}
	public bool IsFloat {
		get { return Type==ParamType.Number; }
	}
	public bool IsInt {
		get { return Type==ParamType.Int; }
	}
	public bool IsString {
		get { return Type==ParamType.String; }
	}
	public bool IsBool {
		get { return Type==ParamType.Bool; }
	}
	public bool IsEnum {
		get { return Type==ParamType.Enum; }
	}
	
	
	new public string ToString()
	{
		return ((int)Type).ToString() + "," + Value.ToString();
	}
	
	public static Param FromString(string str)
	{
		string[] segments = str.Split(',');
		
		if(segments.Length<2) {
			Debug.LogError ("Could not parse Param string: "+str);
			return null;
		}
		
		int type = -1;
		int.TryParse(segments[0],out type);
		
		if(type==-1 || type>=System.Enum.GetValues(typeof(ParamType)).Length) {
			Debug.LogError ("Could not parse Param string: "+str);
			return null;
		}
		
		Param outParam = null;
		
		switch((ParamType)type)
		{
		case ParamType.Int:
			int outInt;
			int.TryParse(segments[1],out outInt);
			outParam = new Param(typeof(int),outInt);
			break;
		case ParamType.Number:
			float outFloat;
			float.TryParse(segments[1],out outFloat);
			outParam = new Param(typeof(float),outFloat);
			break;
		case ParamType.String:
			outParam = new Param(typeof(string),segments[1]);
			break;
		case ParamType.Bool:
			bool outBool;
			bool.TryParse(segments[1],out outBool);
			outParam = new Param(typeof(bool),outBool);
			break;
		}
		
		return outParam;
	}
}




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
			
			return methodInfo;
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

	
	public IEnumerator Execute()
	{
		if(Method==null)	yield break;
		
		if(!enabled)		yield break;
		
		isRunning = true;
		
		if(onExecuteCommand!=null)
			onExecuteCommand();
		
		//Execute the method!!	Yield if this command returns an IEnumerator.
		if(Method.ReturnType==typeof(IEnumerator))
		{
			yield return AsyncServices.RunCoroutine((IEnumerator)Method.Invoke(null,ParamsAsObjects));
		}
		else
		{
			try
			{
				Method.Invoke(null,ParamsAsObjects);
			}
			catch (Exception e)
			{
				Debug.LogError("Could not call function: " + Method.Name + "(" + ParamsAsObjects.ToString() + ")\nError: " + e.Message);
			}
		}
		
		isRunning = false;
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


