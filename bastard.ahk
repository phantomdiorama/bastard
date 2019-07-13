;================================
; Close Distracting Windows
; original idea from 
;https://autohotkey.com/board/topic/90044-script-to-close-undesired-windows/
;================================
;
#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%
#Persistent
Menu, Tray, Icon, icon.ico
SetTimer, ProductivityBastard, 30000
return

ProductivityBastard:
    Loop {
        IfWinExist, ahk_class MozillaWindowClass
        {
            WinClose ; use the window found above
            continue
        }
        IfWinExist, ahk_class iTunes
        {
            WinClose
            continue
        }
        IfWinExist, ahk_class Outlook Express Browser Class
        {
            WinClose
            continue
        }
        IfWinExist, ahk_class Chrome_WidgetWin_1
        {
            WinClose
            continue
        }
        IfWinExist, ahk_class SpotifyMainWindow
        {
            WinClose
            continue
        }
        break
        }
return