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
strDirName=strStartmenu+"\Evernote Sticky"
If Not objFS.FolderExists(strDirName) Then
  objFS.CreateFolder(strDirName)
End If

'ショートカットの作成
strFileName = strDirName+"\Sticky.lnk"
strTargetPath = objShell.CurrentDirectory+"\Sticky.jar"
Set objShortCut = objShell.CreateShortcut(strFileName)
objShortCut.TargetPath = strTargetPath
objShortCut.WorkingDirectory = objShell.CurrentDirectory
objShortCut.Save

'ショートカットの作成
strFileName = strDirName+"\StickySwitch.lnk"
strTargetPath = objShell.CurrentDirectory+"\StickySwitch.jar"
Set objShortCut = objShell.CreateShortcut(strFileName)
objShortCut.TargetPath = strTargetPath
objShortCut.WorkingDirectory = objShell.CurrentDirectory
objShortCut.Save

Set objShortCut = Nothing
Set objShell = Nothing
