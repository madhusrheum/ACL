
;Directives
#SingleInstance Force
SetTitleMatchMode 2

;Variables
UserName := (A_ComputerName = "DESKTOP-8319N3N") or (A_ComputerName = "RavisOldDesktop")
	? samak
	: A_UserName

ACL_Filename = ACL.ahk
ACL_Path := A_ScriptDir "\" ACL_Filename

SciTE4AHK_exe := "C:\Program Files\AutoHotkey\SciTE\SciTE.exe"

;open the ACL (for the purpose of viewing or editing it)
#o::Run C:\Program Files\AutoHotkey\SciTE\SciTE.exe %A_ScriptDir%\ACL\English.ahk,, Maximize

;Hotkeys
^#LButton::SendInput ^#{Left}
^#RButton::SendInput ^#{Right}

;update the ACL with the latest entries
<#r::
	if WinActive("SciTE4AutoHotkey")
		Send ^s

	Run *Run %ACL_Path%
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

F1::Send {Enter}
NumLock::SetNumLockState On
+NumLock::SetNumLockState Off

NumpadIns::Send 0
NumpadEnd::Send 1
NumpadDown::Send 2
NumpadPgDn::Send 3
NumpadLeft::Send 4
NumpadClear::Send 5
NumpadRight::Send 6
NumpadHome::Send 7
NumpadUp::Send 8
NumpadPgUp::Send 9
NumpadDel::Send .

^RButton::AltTabAndMenu
WheelDown::AltTab
WheelUp::ShiftAltTab

F11::
	Run "C:\Program Files (x86)\TreeLine-3\treeline.exe" "D:\OneDrive\Professional\Rheum Board Prep\Rheum Secrets TOC.txt"
return
