#IfWinActive ahk_class CabinetWClass
~F12::
    ; Get the active File Explorer window
    for window in ComObjCreate("Shell.Application").Windows
    {
        if (window.hwnd = WinActive("A")) {
            _Path := window.Document.Folder.Self.Path
            break
        }
    }
    
    ; Open Windows Terminal in the extracted path
    Run, "C:\Users\nikol\AppData\Local\Programs\Microsoft VS Code Insiders\Code - Insiders.exe" "%_Path%" ; 
    return


~RShift::
    ; Get the active File Explorer window
    for window in ComObjCreate("Shell.Application").Windows
    {
        if (window.hwnd = WinActive("A")) {
            _Path := window.Document.Folder.Self.Path
            break
        }
    }

    ; Open Git Bash in the extracted path
    Run, "C:\Program Files\Git\git-bash.exe", %_Path%
    return