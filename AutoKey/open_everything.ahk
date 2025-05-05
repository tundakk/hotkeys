#Requires AutoHotkey v2.0

^ø:: {  ; Ctrl+Ø hotkey
    ; If Everything is already running, activate its window instead of launching a new one
    if WinExist("ahk_exe Everything.exe") {
        WinActivate("ahk_exe Everything.exe")
    } else {
        Run("C:\Program Files\Everything\Everything.exe")
    }
}