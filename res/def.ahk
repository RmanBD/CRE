
commonTasks(){
	SoundPlay, res\clicked.wav
	title := "ahk_exe CRE2004.exe"
	ControlSend, , {AltDown}{o}{AltUp}, %title%
	Random, ranValue, 350, 500
	CountdownTimer(ranValue)
	ControlSend, , {5}, %title%
	Random, ranValue, 350, 500
	CountdownTimer(ranValue)
	ControlSend, , {l}, %title%
	Random, ranValue, 350, 500
	CountdownTimer(ranValue)
	SendInput, {d}
	Random, ranValue, 350, 500
	CountdownTimer(ranValue)
	SendInput, {d}
	Random, ranValue, 350, 500
	CountdownTimer(ranValue)
	SendInput, !{d}
	Random, ranValue, 350, 500
	CountdownTimer(ranValue)
}
monthToDateReport(){
	startDate := "WindowsForms10.EDIT.app.0.30495d1_r7_ad14"
	endDate := "WindowsForms10.EDIT.app.0.30495d1_r7_ad13"
	reportTitle := "Detailed Daily Report"
	printButton := "WindowsForms10.BUTTON.app.0.30495d1_r7_ad114"
	printButtonText := "&Print"
	ControlFocus, %startDate%, %reportTitle%,
	Random, ranValue, 350, 500
	CountdownTimer(ranValue)
	ControlSend, %startDate%, {BackSpace}%A_MM%/01/%A_YYYY%,%reportTitle%
	Random, ranValue, 350, 500
	CountdownTimer(ranValue)
	ControlFocus, %endDate%, %reportTitle%,
	ControlSend, %endDate%, {BackSpace}%A_MM%/%A_DD%/%A_YYYY%,%reportTitle%
	Random, ranValue, 500, 750
	CountdownTimer(ranValue)
	SendInput, !p
}
lastMonthReport(){
	startDate := "WindowsForms10.EDIT.app.0.30495d1_r7_ad14"
	endDate := "WindowsForms10.EDIT.app.0.30495d1_r7_ad13"
	reportTitle := "Detailed Daily Report"
	printButton := "WindowsForms10.BUTTON.app.0.30495d1_r7_ad114"
	printButtonText := "&Print"
    lastDateOfPreviousMonth := lastDateOfPreviousMonth()
    lastMonth := A_MM - 01
	ControlFocus, %startDate%, %reportTitle%,
	Random, ranValue, 350, 500
	CountdownTimer(ranValue)
	ControlSend, %startDate%, {BackSpace}%lastMonth%/01/%A_YYYY%,%reportTitle%
	Random, ranValue, 350, 500
	CountdownTimer(ranValue)
	ControlFocus, %endDate%, %reportTitle%,
	ControlSend, %endDate%, {BackSpace}%lastMonth%/%lastDateOfPreviousMonth%/%A_YYYY%,%reportTitle%
	Random, ranValue, 500, 750
	CountdownTimer(ranValue)
	SendInput, !p
}
todayReport(){
	startDate := "WindowsForms10.EDIT.app.0.30495d1_r7_ad14"
	endDate := "WindowsForms10.EDIT.app.0.30495d1_r7_ad13"
	reportTitle := "Detailed Daily Report"
	printButton := "WindowsForms10.BUTTON.app.0.30495d1_r7_ad114"
	printButtonText := "&Print"
	ControlFocus, %startDate%, %reportTitle%,
	Random, ranValue, 350, 500
	CountdownTimer(ranValue)
	ControlSend, %startDate%, {BackSpace}%A_MM%/%A_DD%/%A_YYYY%,%reportTitle%
	Random, ranValue, 350, 500
	CountdownTimer(ranValue)
	ControlFocus, %endDate%, %reportTitle%,
	ControlSend, %endDate%, {BackSpace}%A_MM%/%A_DD%/%A_YYYY%,%reportTitle%
	Random, ranValue, 500, 750
	CountdownTimer(ranValue)
	SendInput, !p
}
yesterdayReport(){
	startDate := "WindowsForms10.EDIT.app.0.30495d1_r7_ad14"
	endDate := "WindowsForms10.EDIT.app.0.30495d1_r7_ad13"
	reportTitle := "Detailed Daily Report"
	printButton := "WindowsForms10.BUTTON.app.0.30495d1_r7_ad114"
	printButtonText := "&Print"
    yesterDay := A_DD - 01
	ControlFocus, %startDate%, %reportTitle%,
	Random, ranValue, 350, 500
	CountdownTimer(ranValue)
	ControlSend, %startDate%, {BackSpace}%A_MM%/%yesterDay%/%A_YYYY%,%reportTitle%
	Random, ranValue, 350, 500
	CountdownTimer(ranValue)
	ControlFocus, %endDate%, %reportTitle%,
	ControlSend, %endDate%, {BackSpace}%A_MM%/%yesterDay%/%A_YYYY%,%reportTitle%
	Random, ranValue, 500, 750
	CountdownTimer(ranValue)
	SendInput, !p
}
CountdownTimer(Time){
    Start := A_TickCount
    Time := Time+A_TickCount
    while Time >= A_TickCount
    ToolTip, % "Wait for " Format("{:d}", (Time-A_TickCount)) " ms"
    ToolTip
    return Time
}
toGoHomePage(){
	titles := ["Detailed Daily Report","Reporting","BaseForm"]
	For index, title in titles
	{
		WinKill,%title%,, 1,
	}
	Return
}
lastDateOfPreviousMonth(){
    TDate := A_YYYY A_MM "01"
    TDate += -1, D
    FormatTime, var, %TDate%, dd
    Return var
}
