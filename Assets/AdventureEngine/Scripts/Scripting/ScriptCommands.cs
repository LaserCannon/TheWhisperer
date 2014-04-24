using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;


public static class ScriptCommandUtilities
{
	public static Dictionary<string,List<string>> GetMethodNamesByCategory()
	{
		MethodInfo[] info = (typeof(ScriptCommands)).GetMethods(BindingFlags.Public | BindingFlags.Static);
		
		Dictionary<string,List<string>> methodCategories = new Dictionary<string, List<string>>();
		
		foreach(MethodInfo method in info)
		{
			string category = "UNCATEGORIZED";
			CommandCategoryAttribute[] catAtt = (CommandCategoryAttribute[])method.GetCustomAttributes(typeof(CommandCategoryAttribute),false);
			if(catAtt.Length>=1)
				category = catAtt[0].Category;
			
			if(category==null)
				category = "UNCATEGORIZED";
			
			if(!methodCategories.ContainsKey(category))
				methodCategories.Add (category,new List<string>());
			
			methodCategories[category].Add(method.Name);
		}
		
		return methodCategories;
	}
}


public partial class ScriptCommands
{
		
	
	// ----- SCRIPT FUNCTIONS ----- //
	
	//TODO: Consider making each command a class instead? Though perhaps we can do all the same things with metadata.
	//EXAMPLES: Shows up differently in the script editor, etc.

	[CommandCategory("Global")]
	public static PlayerAgent GetPlayerCharacter()
	{
		return GameController.main.Player;
	}

	[CommandCategory("Global")]
	public static void EnableCharacterControl(bool on)
	{
		GameController.main.Player.Enabled = on;
	}
	
	[CommandCategory("Global")]
	public static IEnumerator MoveCharacterTo(PathCharacter character, Transform locator)
	{
		character.SetDestination(locator.position);
		
		return character.WaitForDestination();
	}
	
	[CommandCategory("Global")]
	public static void WarpCharacterTo(PathCharacter character, Transform locator)
	{
		character.WarpTo(locator.position);
	}
	
	[CommandCategory("Global")]
	public static void RotateCharacterTowards(PathCharacter character, Transform locator)
	{
		character.LookInDirection(locator.position-character.transform.position);
	}
	
	
	
	
	[SimpleCommandGUIFunctionAttribute(0, "LoadScene_GUI")]
	[CommandCategory("Global")]
	public static void LoadScene(string sceneName)
	{
		LevelLoader.LoadLevel(sceneName);
	}
	
	[CommandGUIFunctionAttribute(new int[2] {0,1}, new string[2] {"LoadScene_GUI","SpawnPoint_GUI"})]
	[CommandCategory("Global")]
	public static void LoadSceneAndSpawn(string sceneName, string spawnLocation)
	{
		LevelLoader.LoadLevel(sceneName, spawnLocation);
	}
	
	
	
	[CommandCategory("Dialog")]
	[SimpleCommandGUIFunctionAttribute(0, "LoadDialog_GUI")]
	public static void LoadDialogPack(string dialog_package)
	{
		Dialog.LoadPackageByName(dialog_package);
	}
	
	[CommandCategory("Dialog")]
	[SimpleCommandGUIFunctionAttribute(0, "LoadDialog_GUI")]
	public static void UnloadDialogPack(string dialog_package)
	{
		Dialog.UnloadPackageByName(dialog_package);
	}
	
	[CommandCategory("Dialog")]
	[CommandGUISizeAttribute(400,250)]
	[SimpleCommandGUIFunctionAttribute(0, "PlayDialog_GUI")]
	public static IEnumerator PlayDialog(string dialog_id)
	{
		DialogLine line = Dialog.GetLine(dialog_id);

		AudioManager.main.PlayVoice(line.Clip);
		DialogBoxManager.main.OpenDialogBox(DialogBoxManager.main.standardDialogPrefab,line.Text);
		
		yield return AsyncServices.RunCoroutine(DialogBoxManager.main.WaitForStaticDialog());
	}
	
	[CommandCategory("Dialog")]
	public static void SkipDialog()
	{
		DialogBoxManager.main.CloseCurrentStaticDialogBox();
		AudioManager.main.CutOffVoice();
	}
	
	
	[CommandCategory("Global")]
	public static void SendMessage(GameObject go, string message)
	{
		go.SendMessage(message,SendMessageOptions.DontRequireReceiver);
	}
	
	
	
	[CommandCategory("Global")]
	[ForceWait]
	public static IEnumerator Wait(float time = 1f)
	{
		yield return new WaitForSeconds(time);
	}
	
	[CommandCategory("Global")]
	[ForceWait]
	public static IEnumerator WaitForAnimation(Animation animObj)
	{
		while(animObj.isPlaying)
		{
			yield return null;
		}
	}
	
	[CommandCategory("Global")]
	[ForceWait]
	public static IEnumerator WaitForSpecificAnimation(Animation animObj, string anim)
	{
		while(animObj.IsPlaying(anim))
		{
			yield return null;
		}
	}
	
	[CommandCategory("Camera")]
	public static IEnumerator Fade(float time = 0.5f, bool fadeOut = true)
	{
		if(fadeOut)		yield return ColorCard.FadeToBlack(time);
		else 			yield return ColorCard.FadeToPicture(time);
	}
	
	[CommandCategory("Camera")]
	public static void Zoom(Transform locator = null, float FoV = 15f)
	{
		SideCinemaCamera.main.FocusOn(locator.position,FoV);
	}
	
	[CommandCategory("Global")]
	public static void UnZoom()
	{
		SideCinemaCamera.main.UnFocus();
	}
	
	[CommandCategory("Global")]
	public static void Pause()
	{
		Time.timeScale = 0f;
	}
	
	[CommandCategory("Global")]
	public static IEnumerator Animate(Animation obj, string animString, WrapMode wrap = WrapMode.Default)
	{
		if(obj[animString]!=null)
			obj.CrossFade(animString);
		else
			Debug.LogError ("Animation '"+animString+"' was not found on '"+obj.name+"'.",obj.gameObject);
		
		yield break;
	}
	
	
	[CommandCategory("Global")]
	public static void SetGlobalInt(string key, int value)
	{
		GlobalVariableDatabase.SetInt(key,value);
	}
	
	[CommandCategory("Global")]
	public static void SetGlobalFloat(string key, float value)
	{
		GlobalVariableDatabase.SetFloat(key,value);
	}
	
	[CommandCategory("Global")]
	public static void SetGlobalString(string key, string value)
	{
		GlobalVariableDatabase.SetString(key,value);
	}
	
	[CommandCategory("Global")]
	public static void SetGlobalBool(string key, bool value)
	{
		GlobalVariableDatabase.SetBool(key,value);
	}

	
	[CommandCategory("Global")]
	public static int GetGlobalInt(string key, int def)
	{
		return GlobalVariableDatabase.GetInt(key);
	}
	
	[CommandCategory("Global")]
	public static float GetGlobalFloat(string key, float def)
	{
		return GlobalVariableDatabase.GetFloat(key);
	}
	
	[CommandCategory("Global")]
	public static string GetGlobalString(string key, string def)
	{
		return GlobalVariableDatabase.GetString(key);
	}
	
	[CommandCategory("Global")]
	public static bool GetGlobalBool(string key, bool def)
	{
		return GlobalVariableDatabase.GetBool(key);
	}
	


	
	[CommandCategory("Object-Based")]
	public static void SetVisible(GameObject obj, bool visible)
	{
		Renderer[] rends = obj.GetComponentsInChildren<Renderer>();
		
		for(int i=0;i<rends.Length;i++)
		{
			rends[i].enabled = visible;
		}
	}
	
	[CommandCategory("Object-Based")]
	public static void Enable(GameObject obj, bool enable)
	{
		obj.SetActive(enable);
	}
	
	[CommandCategory("Object-Based")]
	public static void EnableComponent(MonoBehaviour obj, bool enable)
	{
		obj.enabled = enable;
	}
	
	[CommandCategory("Object-Based")]
	public static IEnumerator FadeObject(GameObject obj, float time = 0.5f, bool fadeOut = true)
	{
		//TODO: Create a static class specifically for fading objects, and call that from here (use fade tracking for each object, etc.)
		Renderer[] rends = obj.GetComponentsInChildren<Renderer>();
		
		if(rends.Length==0)	{ yield return new WaitForSeconds(time); yield break; }
		
		Color curCol = rends[0].material.color;
		float curAlpha = curCol.a;
		float targetAlpha = fadeOut ? 0f : 1f;
		
		float speed = Mathf.Abs(curAlpha-targetAlpha)/time;
		
		while(curAlpha != targetAlpha)
		{
			curAlpha = Mathf.MoveTowards(curAlpha, targetAlpha, speed * Time.deltaTime);
			curCol.a = curAlpha;
			
			for(int i=0;i<rends.Length;i++)
				rends[i].material.color = curCol;
			
			yield return null;
		}
	}
	
	
	[CommandCategory("Object-Based")]
	public static void NPCRotateTowardsPlayer(NonPlayerCharacter character)
	{
		Vector3 towardsPlayer = character.transform.position - GameController.main.Player.transform.position;
		character.LookInDirection(towardsPlayer);
	}
	
	
	[CommandCategory("Global")]
	public static void CallScript(Script script)
	{
		script.Execute();
	}
	
	
	
	[CommandCategory("Battle")]
	public static void SpawnEnemyBeginBattle(string enemyID)
	{
		if(GameController.main != null)
		{
			BattleLoader.LoadBattle(GameController.Profile.GetPartyMember(0),enemyID,new BattleScene("test_battlescene"));
		}
	}
	
	
	[CommandCategory("Battle")]
	public static void PauseBattleFlow(bool pause)
	{
	}
	
	
	
	
	[CommandCategory("Audio Loading")]
	public static void LoadSFX(string folder)
	{
		AudioManager.main.LoadSFX(folder);
	}
	
	[CommandCategory("Audio Loading")]
	public static void UnloadSFX(string folder)
	{
		AudioManager.main.UnloadSFX(folder);
	}
	
	[CommandCategory("Audio Loading")]
	public static void LoadMusic(string folder)
	{
		AudioManager.main.LoadMusic(folder);
	}
	
	[CommandCategory("Audio Loading")]
	public static void UnloadMusic(string folder)
	{
		AudioManager.main.UnloadMusic(folder);
	}
	
	
	[CommandCategory("Audio")]
	public static void PlaySFXOnce(string folder, string name)
	{
		AudioManager.main.PlaySFXOnce(folder,name);
	}
	
	[CommandCategory("Audio")]
	public static void PlaySFXLooping(string folder, string name)
	{
		AudioManager.main.PlaySFXLooping(folder,name);
	}
	
	[CommandCategory("Audio")]
	public static void PlayMusic(string folder, string name)
	{
		AudioManager.main.PlayMusic(folder,name);
	}
	
	[CommandCategory("Audio")]
	public static void FadeSFX(string name, float to = 1f, float speed = 2f)
	{
		AudioManager.main.FadeSFX(name,to,speed);
	}
	
	[CommandCategory("Audio")]
	public static void FadeMusic(float to = 1f, float speed = 2f)
	{
		AudioManager.main.FadeMusic(to,speed);
	}

	
}
