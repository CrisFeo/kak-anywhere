#SingleInstance Force
#UseHook On
DetectHiddenWindows, on

; === BEGIN USER CONFIG ===

; The Windows username under which WSL is installed.
User := "Cris"

; The dimensions, in pixels, of a single character in your terminal. These
; will vary depending on your choice font/size/etc.
CellWidth := 17
CellHeight := 31

; The desired size, in characters, of the editor window.
Cols := 60
Rows := 17

; === END USER CONFIG ===

PosX := Floor((A_ScreenWidth / 2)-(Cols * CellWidth / 2))
PosY := Floor((A_ScreenHeight / 2)-(Rows * CellHeight / 2))
Geometry := Cols . "x" . Rows . "+" . PosX . "+" . PosY
Mintty := "C:\Users\" . User . "\AppData\Local\wsltty\bin\mintty.exe --WSL= --configdir=""C:\Users\" . User . "\AppData\Roaming\wsltty"" -~ --nodaemon --Border void --geometry " . Geometry . " -- "

; Uncomment this while developing to allow for easy reloading
;^!r::Reload

#c::
Run, %Mintty% /mnt/c/projects/kak-anywhere/edit.sh
return

#e::
Send, ^a
Send, ^c
Sleep 200
RunWait, %Mintty% /mnt/c/projects/kak-anywhere/edit.sh
Sleep 200
Send, ^a
Send, ^v
