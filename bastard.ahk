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
		If WinExist("ahk_class MozillaWindowClass") ;Firefox and Thunderbird
		{
			WinClose
			continue
		}
		If WinExist("ahk_class iTunes")
		{
			WinClose
			continue
		}
		If WinExist("ahk_class Outlook Express Browser Class") ;Windows Live Mail
		{
			WinClose
			continue
		}
		If WinExist("ahk_class Chrome_WidgetWin_1") ;Google Chrome
		{
			WinClose
			continue
		}
		If WinExist("ahk_class Chrome_WidgetWin_0") ;Spotify
		{
			WinClose
			continue
		}
		If WinExist("ahk_class MediaPlayerClassicW") ;MPC-HC
		{
			WinClose
			continue
		}
		break
		}
return