#SingleInstance, Force
#NoTrayIcon
SetTitleMatchMode, 2
SetWorkingDir, %A_ScriptDir%

!k::
If (WinActive("Cash Register Express"))
{
    Run, res\ui.ahk
}
Else
{
    SoundBeep, 650, 750
    Loop, 100
    {
        ToolTip, you need stay on "Cash Register Express" home page before press alt+k
        sleep, 20
    }
    ToolTip
}
Return

