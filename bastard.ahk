#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%
#Persistent
if FileExist("icon.ico")
    Menu, Tray, Icon, icon.ico

SetTimer, YoBastard, 30000
return 

YoBastard:
Loop, read, %A_ScriptDir%\bastard.txt
{
    ;Msgbox, %A_LoopReadLine%
    if WinExist("ahk_exe " A_LoopReadLine)
        WinClose
}
return 
