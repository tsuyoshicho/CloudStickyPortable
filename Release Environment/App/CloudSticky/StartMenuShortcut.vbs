Dim objShell
Dim objShortCut
Dim strStartmenu
Dim strDirName
Dim strFileName
Dim strTargetPath

Set objShell = WScript.CreateObject("WScript.Shell")
Set objFS = CreateObject("Scripting.FileSystemObject")

'スタートメニューにフォルダ作成
strStartmenu = objShell.SpecialFolders("StartMenu")
strDirName=strStartmenu+"\CloudSticky"
If Not objFS.FolderExists(strDirName) Then
  objFS.CreateFolder(strDirName)
End If

'ショートカットの作成
strFileName = strDirName+"\CloudSticky.lnk"
strTargetPath = objShell.CurrentDirectory+"\CloudSticky.jar"
Set objShortCut = objShell.CreateShortcut(strFileName)
objShortCut.TargetPath = strTargetPath
objShortCut.WorkingDirectory = objShell.CurrentDirectory
objShortCut.Save

'ショートカットの作成
strFileName = strDirName+"\CloudStickySwitch.lnk"
strTargetPath = objShell.CurrentDirectory+"\CloudStickySwitch.jar"
Set objShortCut = objShell.CreateShortcut(strFileName)
objShortCut.TargetPath = strTargetPath
objShortCut.WorkingDirectory = objShell.CurrentDirectory
objShortCut.Save

Set objShortCut = Nothing
Set objShell = Nothing
