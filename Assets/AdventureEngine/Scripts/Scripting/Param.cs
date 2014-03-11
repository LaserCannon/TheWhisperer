using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;
using System;



public enum ParamType { Void, Object, Number, Int, String, Bool, Enum }
[System.Serializable]
public class Param
{
	[SerializeField][HideInInspector]
	public ParamType Type;

	//TODO: In-between class for types?
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
			case ParamType.Void:	val = null; break;
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
			{	Debug.LogError ("Cannot Convert '" + value.GetType().ToString() + "' to a Param Value.");	Type = ParamType.Void;	}
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
		{	Debug.LogError ("Cannot Convert '" + t.ToString() + "' to a Param Value."); Type = ParamType.Void;	}
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
	
	public bool IsVoid {
		get { return Type==ParamType.Void; }
	}
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
	

	public Hashtable ToHashtable()
	{
		Hashtable hash = new Hashtable();

		object val;
		if(Type==ParamType.Object)
		{
			val = SceneObjectReference.main.GetReferenceForObject((UnityEngine.Object)Value);
		}
		else
		{
			val = Value;
		}

		hash.Add("type",(int)Type);
		hash.Add("value",val);

		return hash;
	}

	public void LoadFromHashtable(Hashtable hash)
	{
		try
		{
			ParamType t = (ParamType)(int)(double)hash["type"];

			if(t!=Type)
			{
				Debug.LogError ("Mismatched Type! Was a function signature changed recently? Leaving parameter at default value.");
				return;
			}

			if(Type==ParamType.Object)
			{
				Value = SceneObjectReference.main.GetObjectForReference((int)(double)hash["value"]);
			}
			else if(Type==ParamType.Int)
			{
				Value = (int)(double)hash["value"];
			}
			else if(Type==ParamType.Number)
			{
				Value = (float)(double)hash["value"];
			}
			else if(Type==ParamType.Enum)
			{
				itg = (int)(double)hash["value"];
			}
			else
			{
				Value = hash["value"];
			} 
		}
		catch(Exception e)
		{
			Debug.LogError("Param Data Error: "+Value.GetType()+" to "+Type+" "+e.Message + "\n" + e.StackTrace); 
		}
	}


	//TODO: USe JSON instead of strings!
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




