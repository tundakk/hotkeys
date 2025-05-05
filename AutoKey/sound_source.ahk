#Requires AutoHotkey v2.0

nircmd := "C:\Program Files\NirCmd\nircmd.exe"
toggle := false  ; false→Speakers next, true→Headphones next

^F8:: {
    global toggle, nircmd
    toggle := !toggle
    device := toggle ? "Headphones" : "Speakers"
    Run Format('{} setdefaultsounddevice "{}"', nircmd, device)
}
