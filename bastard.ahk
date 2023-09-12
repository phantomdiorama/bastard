#Requires AutoHotkey v2.0

if FileExist("icon.ico")
    TraySetIcon  "icon.ico"

SetTimer YoBastard, 30000

YoBastard()
{
    Loop read, "bastard.txt"
    {
        if WinExist("ahk_exe " A_LoopReadLine)
        WinClose
    }
}
