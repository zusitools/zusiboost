Gui, +AlwaysOnTop
Gui, Add, Text, w230 h30 vStatus, Initialisiere
Gui, Show, w250 h50, ZusiBoost
SetTitleMatchMode, 3
Loop {
   Gui, Color, FF8888
   GuiControl,,Status, Bitte Zusi-Fenster aktivieren
   WinWaitActive, Zusi
   Gui, Color, 88FF88
   GuiControl,,Status, ZusiBoost ist aktiv
   Loop {
        IfWinNotActive, Zusi
            break

        Send, {F3}
        Sleep, 10
    }
}

GuiClose:
ExitApp