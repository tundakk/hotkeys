#Requires AutoHotkey v2.0

^q:: {  ; Ctrl+Q hotkey
    ; If Zim is already running, activate its window instead of launching a new one
    if WinExist("ahk_exe zim.exe") {
        WinActivate("ahk_exe zim.exe")
    } else {
        Run("C:\Program Files\Zim Desktop Wiki\zim.exe")
    }
}
