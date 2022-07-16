#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
SetControlDelay, 20

MButton::
	startDate := "WindowsForms10.EDIT.app.0.30495d1_r7_ad14"
	endDate := "WindowsForms10.EDIT.app.0.30495d1_r7_ad13"
	reportTitle := "Detailed Daily Report"
	printButton := "WindowsForms10.BUTTON.app.0.30495d1_r7_ad114"
	printButtonText := "&Print"
	ControlFocus, %startDate%, %reportTitle%,
	; ControlFocus, [ Control, WinTitle, WinText, ExcludeTitle, ExcludeText]
Return

