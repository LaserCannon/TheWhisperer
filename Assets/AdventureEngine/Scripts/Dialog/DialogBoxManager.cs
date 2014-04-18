using UnityEngine;
using System.Collections;
using System.Collections.Generic;


public enum DefaultDialogType
{
	Subtitle,
	Standard,
}


public class DialogBoxManager : SingletonAsset
{

	public static DialogBoxManager main
	{
		get
		{
			return getmain<DialogBoxManager>();
		}
	}

	public DialogBoxSubtitle subtitleDialogPrefab = null;
	public DialogBoxStandard standardDialogPrefab = null;

	public List<DialogBox> customDialogPrefabs = new List<DialogBox>();



	private DialogBox _currentStaticDialog = null;

	public DialogBox CurrentStaticDialog
	{
		get { return _currentStaticDialog; }
	}


	public DialogBox OpenDialogBox(DialogBox dialogPrefab, string text)
	{
		DialogBox newBox = null;

		if(!dialogPrefab.CanShareScreen)
		{
			if(_currentStaticDialog==null)
			{
				_currentStaticDialog = NGUITools.AddChild(GameController.main.uiRoot.gameObject, dialogPrefab.gameObject).GetComponent<DialogBox>();
			}

			newBox = _currentStaticDialog;
		}
		else
		{
			newBox = (DialogBox)UIRoot.Instantiate(dialogPrefab);
		}

		newBox.SetText(text);

		return newBox;
	}

	public DialogBox OpenCustomDialogBox(string type, string text)
	{
		return OpenDialogBox(GetCustomDialogPrefab(type),text);
	}

	public void CloseCurrentStaticDialogBox()
	{
		if(_currentStaticDialog!=null)
		{
			_currentStaticDialog.Close();
		}
	}
	
	public void RushCurrentStaticDialogBox()
	{
		if(_currentStaticDialog!=null)
		{
			_currentStaticDialog.Rush();
		}
	}
	
	public IEnumerator WaitForStaticDialog()
	{
		while(_currentStaticDialog!=null)
		{
			yield return null;
		}
	}


	private DialogBox GetCustomDialogPrefab(string name)
	{
		foreach(DialogBox prefab in customDialogPrefabs)
		{
			if(prefab.name==name)
			{
				return prefab;
			}
		}
		return null;
	}

}
