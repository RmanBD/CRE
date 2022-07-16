#NoEnv
#Include, res\def.ahk
#SingleInstance, force
#NoTrayIcon
Gui, -SysMenu +AlwaysOnTop
SendMode Input
CoordMode,ToolTip,Screen
SetControlDelay, 75
SetTitleMatchMode, 2
Gosub, gobstuff

Gui, -SysMenu +AlwaysOnTop
Gui, Add, Button, x432 y2 w20 h20 gMinm, -
Gui, Add, Button, x452 y2 w20 h20 gExit, x
Gui,Font, s24, Candara
Gui, Add, Button, x22 y29 w220 h220 gmtdpBtn, Month to date report
Gui, Add, Button, x22 y259 w220 h220 glmrBtn, Last month report
Gui, Add, Button, x252 y259 w220 h220 gyrBtn, Yesterday report
Gui, Add, Button, x252 y29 w220 h220 gtrBtn, Today report
Gui, Show,x%centerX% y%centerY% w495 h500,`      easy reporting
Gui, color, F0E2E2
return

Minm:
WinGetActiveTitle, tomin
WinMinimize, %tomin%
Return

Exit:
ExitApp
Return

mtdpBtn:
    WinActivate, %mainWindowTitle%
    WinWaitActive, %mainWindowTitle%,, 2
    If ((WinExist("Detailed Daily Report")) || (WinExist("Reporting")) || (WinExist("BaseForm")))
    {
        toGoHomePage()
        MsgBox, 4096, error, Text, please make sure you are in home screen of %mainWindowTitle%.`nBefore press any button,2
    }
    Else
    {
        commonTasks()
        monthToDateReport()
        ; msgbox,4096,test,to understand printing behaviour wait for 5 seconds,5
        toGoHomePage()
        exitapp
    }
Return

lmrBtn:
    WinActivate, %mainWindowTitle%
    WinWaitActive, %mainWindowTitle%,, 2
    If ((WinExist("Detailed Daily Report")) || (WinExist("Reporting")) || (WinExist("BaseForm")))
    {
        toGoHomePage()
        MsgBox, 4096, error, Text, please make sure you are in home screen of %mainWindowTitle%.`nBefore press any button,2
    }
    Else
    {
        commonTasks()
        lastMonthReport()
        ; msgbox,4096,test,to understand printing behaviour wait for 5 seconds,5
        toGoHomePage()
        exitapp
    }
Return

yrBtn:
    WinActivate, %mainWindowTitle%
    WinWaitActive, %mainWindowTitle%,, 2
    If ((WinExist("Detailed Daily Report")) || (WinExist("Reporting")) || (WinExist("BaseForm")))
    {
        toGoHomePage()
        MsgBox, 4096, error, Text, please make sure you are in home screen of %mainWindowTitle%.`nBefore press any button,2
    }
    Else
    {
        commonTasks()
        yesterdayReport()
        ; msgbox,4096,test,to understand printing behaviour wait for 5 seconds,5
        toGoHomePage()
        exitapp
    }
Return

trBtn:
    WinActivate, %mainWindowTitle%
    WinWaitActive, %mainWindowTitle%,, 2
    If ((WinExist("Detailed Daily Report")) || (WinExist("Reporting")) || (WinExist("BaseForm")))
    {
        toGoHomePage()
        MsgBox, 4096, error, Text, please make sure you are in home screen of %mainWindowTitle%.`nBefore press any button,2
    }
    Else
    {
        commonTasks()
        todayReport()
        ; msgbox,4096,test,to understand printing behaviour wait for 5 seconds,5
        toGoHomePage()
        exitapp
    }
Return


gobstuff:
full_command_line := DllCall("GetCommandLine", "str")
if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)"))
{
    try
    {
        if A_IsCompiled
            Run *RunAs "%A_ScriptFullPath%" /restart
        else
            Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%"
    }
    ExitApp
}
centerY := (A_ScreenHeight/2)-250
centerX := (A_ScreenWidth/2)-250
; centerY := centerY-200
mainWindowTitle := "Cash Register Express"
Return
