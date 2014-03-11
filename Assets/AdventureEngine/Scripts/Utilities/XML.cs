using UnityEngine;
using System.Collections;


//TODO: Expand this class, allow for more powerful customization (instead of adding text manually)
public class ExcelXML
{
	protected static string ExcelHeader()
	{
	    // Excel header
	    System.Text.StringBuilder sb = new System.Text.StringBuilder();
	    sb.Append("<?xml version=\"1.0\"?>\n");
	    sb.Append("<?mso-application progid=\"Excel.Sheet\"?>\n");
	    sb.Append("<Workbook xmlns=\"urn:schemas-microsoft-com:office:spreadsheet\" ");
	    sb.Append("xmlns:o=\"urn:schemas-microsoft-com:office:office\" ");
	    sb.Append("xmlns:x=\"urn:schemas-microsoft-com:office:excel\" ");
	    sb.Append("xmlns:ss=\"urn:schemas-microsoft-com:office:spreadsheet\" ");
	    sb.Append("xmlns:html=\"http://www.w3.org/TR/REC-html40\">\n");
	    sb.Append("<DocumentProperties xmlns=\"urn:schemas-microsoft-com:office:office\">");
	    sb.Append("</DocumentProperties>");
	    sb.Append("<ExcelWorkbook xmlns=\"urn:schemas-microsoft-com:office:excel\">\n");
	    sb.Append("<ProtectStructure>False</ProtectStructure>\n");
	    sb.Append("<ProtectWindows>False</ProtectWindows>\n");
	    sb.Append("</ExcelWorkbook>\n");
	    return sb.ToString(); 
	}
	protected static string ExcelWorkSheetOptions()
	{	
		System.Text.StringBuilder sb = new System.Text.StringBuilder();
		sb.Append("\n<WorksheetOptions xmlns=\"urn:schemas-microsoft-com:office:excel\">\n<Selected/>\n </WorksheetOptions>\n");
		return sb.ToString();
	}
	
	//TODO: Add cell widths
}


//TODO: Break this into another class
public class DialogXML : ExcelXML
{
	public static System.Xml.XmlDocument ExportDialogPackage(DialogPackage package)
	{

		//	"<DocumentProperties xmlns=\"urn:schemas-microsoft-com:office:office\">\n"+
		//		"<Author>Darl McBride</Author>\n"+
		//	    "<LastAuthor>Bill Gates</LastAuthor>\n"+
		//	    "<Created>2007-03-15T23:04:04Z</Created>\n"+
		//	    "<Company>SCO Group, Inc.</Company>\n"+
		//	    "<Version>14.0</Version>\n"+
		//    "</DocumentProperties>"+

		
		System.Text.StringBuilder xmlStr = new System.Text.StringBuilder();
		xmlStr.Append(ExcelHeader());
		xmlStr.Append(ExcelWorkSheetOptions());
		
		xmlStr.Append("<Worksheet ss:Name=\"WorkSheet\">");
		xmlStr.Append("<Table>");
		
		for(int i=0;i<package.Lines.Count;i++)
		{
			DialogLine line = package.Lines[i];
			xmlStr.Append ("<Row>");
			xmlStr.Append ("<Cell> <Data ss:Type=\"String\">" + line.LineID + "</Data> </Cell>");
			xmlStr.Append ("<Cell> <Data ss:Type=\"String\">" + line.Character + "</Data> </Cell>");
			
			//TODO: Output specified languages
			xmlStr.Append ("<Cell> <Data ss:Type=\"String\">" + line.Text + "</Data> </Cell>");
			xmlStr.Append ("<Cell> <Data ss:Type=\"String\">" + line.AudioResourcePath + "</Data> </Cell>");
			
			xmlStr.Append ("</Row>");
		}
		
		xmlStr.Append("</Table>");
		xmlStr.Append("</Worksheet>");
		
		xmlStr.Append("</Workbook>\n");
			
		System.Xml.XmlDocument doc = new System.Xml.XmlDocument();
		doc.LoadXml(xmlStr.ToString());

		return doc;
		
	}
}
