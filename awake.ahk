;
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT
; Author:         A.N.Other <myemail@nowhere.com>
;
; Script Function:
;	Template script (you can customize this template by editing "ShellNew\Template.ahk" in your Windows folder)
;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#singleinstance force
#Persistent

; ================================================================
;        Move mouse if idle
; ================================================================
; adjust the folowing 3 values to suit your circumstances
; ================================================================

inactivity_limit=55	; measured in seconds
how_often_to_test=1	; measured in seconds
show_tooltip=0       ; 1=show, anything else means hide

; ================================================================

inactivity_limit_ms:=inactivity_limit*1000
how_often_to_test_ms:=how_often_to_test*1000


settimer, check_active, %how_often_to_test_ms%

mm_cnt=0
return

; ================================================================
; test if the mouse and keyboard have been idle

check_active:

; this tooltip is just a diagnostic, allow for disabling it during normal use
if show_tooltip=1
  tooltip, % A_TimeIdlePhysical "ms`rmoves " mm_cnt


if A_TimeIdlePhysical > %inactivity_limit_ms%
{
  mousemove,1,1,100, R	; down and right 1 pixel each time

  mm_cnt++	; tally number of times the mouse was artificially moved
}

return


; these hotkeys are diagnostics, disable during normal use

; esc::exitapp	
; f10::reload