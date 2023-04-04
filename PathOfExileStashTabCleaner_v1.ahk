#If WinActive("ahk_exe PathOfExileSteam.exe") or WinActive("ahk_exe PathOfExile.exe")
F5:: ; Button to for start

MouseX := 0
MouseY := 0

MouseGetPos, MouseX, MouseY

PixelX := MouseX
PixelY := MouseY
Click, %PixelX%, %PixelY%
Send, {Enter}
Send, /destroy
Send, {Enter}
Loop, 12 {
    PixelY := MouseY
    Loop, 12{
        if stop_loop{
            break
        }
        Click, %PixelX%, %PixelY%
        Send, {Enter}
        Send, /destroy
        Send, {Enter}
        Sleep 200
        PixelY += 35
    }
    PixelX +=35
}
stop_loop := false
Return
F6:: ; Button to stop
    global stop_loop := true
return