
#SingleInstance Force
SetTitleMatchMode 2

if (A_ComputerName = "DESKTOP-8319N3N")
	UserName = samak
else
	UserName = %A_UserName%

ACL_Filename = ACL.ahk
ACL_Path := A_ScriptDir "\" ACL_Filename
;That damn comma in the path is breaking it up into SEPARATE PARAMETERS!
;So escaping the comma fixes things.

SciTE4AHK_exe := "C:\Program Files\AutoHotkey\SciTE\SciTE.exe"

#m::Run %SciTE4AHK_exe% "D:\Google Drive\Dropbox contents`, former\ACLs\MAIN.ahk"

;open the ACL (for the purpose of viewing or editing it)
#o::Run %SciTE4AHK_exe% "D:\Google Drive\Dropbox contents`, former\ACLs\ACL.ahk",, Maximize

;update the ACL with the latest entries
#r::
	if WinActive("SciTE4AutoHotkey")
		Send ^s

	Run %ACL_Path%
Return

;kill (temporarily) the ACL
#k::
	WinTitle := ACL_Path " - AutoHotkey v" A_AhkVersion

	DetectHiddenWindows On
	WinClose %WinTitle%
	DetectHiddenWindows Off
Return


#c::Run chrome
#g::Run www.gmail.com,, Maximize
#d::Run D:\Google Drive
