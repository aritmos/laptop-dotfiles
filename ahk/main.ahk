#Persistent

; Title Bar Buttons: Alt+<key>
!q::
    WinClose A
return

!Down::
    WinMinimize A
return

!Up::
    WinMaximize A
return

; Move Windows: Ctrl+Shift+<Arrow>

^+Right::
    WinGetPos x, y,,, A
    winmove, A,, x+50, y
return 

^+Left::
    WinGetPos x, y,,, A
    winmove, A,,x-50, y
return 

^+Down::
    WinGetPos x, y,,, A
    winmove, A,, x, y+50
return

^+Up::
    WinGetPos x, y,,, A
    winmove, A,, x,y-50
return 

; Resize Windows: Ctrl+Alt+<Arrow>

^!Up::
    WinGetPos ,,,w,h, A
    WinMove, A,,,,w,h-20,
return

^!Down::
    WinGetPos ,,,w,h, A
    WinMove, A,,,,w,h+20,
return

^!Left::
    WinGetPos ,,,w,h, A
    WinMove, A,,,,w-20,h,
return

^!Right::
    WinGetPos ,,,w,h, A
    WinMove, A,,,,w+20,h,
return

; Spicetify

;@Ahk2Exe-SetMainIcon %A_ScriptDir%\SpotifyNoControl.ico
!s::
    #NoTrayIcon
    Global SPOTIFY_EXE:= "Spotify.exe"
    Try{
        ; if spotify is running -> get the PID
        WinGet, sPID, PID , ahk_exe %SPOTIFY_EXE%
        if(!sPID){ ; if not, run spotify
            Run, % getSpotifyFullPath() , %A_AppData%, Hide, sPID
            ; wait for the window to exist
            WinWait, ahk_exe %SPOTIFY_EXE%,, 5
            ; get the PID
            WinGet, sPID, PID
            WinShow, 
        }
        ; Focus the main window
        WinActivate, ahk_pid %sPID%
        ; get the Hwnd for all spotify windows
        WinGet, sHwnd, List, ahk_pid %sPID%
        Loop, %sHwnd% {
            ; only the main window has a title
            ; so check the window title
            WinGetTitle, sTitle, % "ahk_id " . sHwnd%A_Index%
            if(sTitle) ; if there's a title -> skip the window
                Continue
            ; resize the window to 0,0 and place it on the bottom of the z order
            DllCall("SetWindowPos", "UInt", sHwnd%A_Index%, "UInt", 1, "Int", 0, "Int", 0, "Int", 0, "Int", 0, "UInt", 0x0200 | 0x0002)
        }
        ExitApp, 0
    } Catch {
        ExitApp, 1
    }

    getSpotifyFullPath(){
        p_path:= A_Args[1]
        if(!p_path){
            ; works regardless of where spotify is installed
            RegRead, p_path, HKCR\spotify\shell\open\command
            SplitPath, p_path,, p_path
            p_path:= StrReplace(p_path, """") "\" SPOTIFY_EXE
        }
        return p_path
    }