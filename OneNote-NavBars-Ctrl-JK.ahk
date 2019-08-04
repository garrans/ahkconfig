#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Event  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetKeyDelay, 90

SetTitleMatchMode 2

^j::
if WinActive("OneNote") 
{
	Send, {Esc}
	Send, ^+g
	Sleep, 300
	Send, ^!g
	Send, {F6}
	Send, {F6}
	Send, {F6}
	Send, {Enter}
;	Send, ^+g
;	Send, ^!g
;	Send, {F6}
;	Send, {F6}
;	Send, {F6}
;	Send, {Enter}
	return
}
;else
;{
;	WinGetTitle, OutputVar, A
;    MsgBox, Window is %OutputVar%
;    return
;}

^k::
if WinActive("OneNote") 
{
	Send, ^!g
	return
}

