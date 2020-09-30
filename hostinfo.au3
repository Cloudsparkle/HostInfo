#NoTrayIcon
Opt("TrayMenuMode", 1) ; Default tray menu items (Script Paused/Exit) will not be shown.
#Local $exititem = TrayCreateItem("Exit")

TraySetIcon("Shell32.dll", -13) ; IC icon
TraySetToolTip(@ComputerName)
TraySetState()

While 1
    #If TrayGetMsg() = $exititem Then Exit
    Sleep(10) ; Idle loop
WEnd
Exit