#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On
Menu, Tray, Icon, shell32.dll, 283 ; this changes the tray icon to a little keyboard!
#Persistent
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000

;-------------2ND KEYBOARD USING LUAMACROS-----------------

#IfWinActive ahk_exe Adobe Premiere Pro.exe ;---EVERYTHING BELOW THIS LINE WILL ONLY WORK INSIDE PREMIERE PRO.

#Include .\Socket.ahk
Serv := ["127.0.0.1", 35346]

#IfWinActive ;---- This will allow for everything below this line to work in ANY application.
SetKeyDelay , 10, -1
~F24::
; key := "b"
Sleep, 5
FileRead, key, C:\luamacros\samples\keypressed.txt
;anim(key)
if not ErrorLevel  ; Successfully loaded.
{
    MyVar := key
    if (MyVar = "F1")
    {
        anim(MyVar)
        Return
    }
    if (MyVar = "F2")
    {
        anim(MyVar)
        Return
    }
    if (MyVar = "F3")
    {
        anim(MyVar)
        Return
    }
    if (MyVar = "F4")
    {
        anim(MyVar)
        Return
    }
    if (MyVar = "F5")
    {
        anim(MyVar)
        Return
    }
    if (MyVar = "F6")
    {
        anim(MyVar)
        Return
    }
    if (MyVar = "F7")
    {
        anim(MyVar)
        Return
    }
    if (MyVar = "F8")
    {
        anim(MyVar)
        Return
    }
    if (MyVar = "F9")
    {
        anim(MyVar)
        Return
    }
    if (MyVar = "F10")
    {
        anim(MyVar)
        Return
    }
    if (MyVar = "F11")
    {
        anim(MyVar)
        Return
    }
    if (MyVar = "F12")
    {
        anim(MyVar)
        Return
    }
    if (MyVar = "1")
    {
        anim(MyVar)
        Return
    }
    if (MyVar = "2")
    {
        anim(MyVar)
        Return
    }
    if (MyVar = "3")
    {
        anim(MyVar)
        Return
    }
    if (MyVar = "a")
    {
        anim(MyVar)
        Return
    }
    if (MyVar = "z")
    {
        anim(MyVar)
        Return
    }
;    if (MyVar = "e")
;    {
;        anim(MyVar)
;        Return
;    }
    if (MyVar = "u")
    {
        anim(MyVar)
        Return
    }
    if (MyVar = "r")
    {
        anim(MyVar)
        Return
    }
    if (MyVar = "t")
    {
        anim(MyVar)
        Return
    }
    if (MyVar = "q")
    {
        anim(MyVar)
        Return
    }
    if (MyVar = "s")
    {
        anim(MyVar)
        Return
    }
;    if (MyVar = "d")
;    {
;        anim(MyVar)
;        Return
;    }
;    if (MyVar = "f")
;    {
;        anim(MyVar)
;        Return
;    }
    if (MyVar = "g")
    {
        anim(MyVar)
        Return
    }
    if (MyVar = "w")
    {
        anim(MyVar)
        Return
    }
    if (MyVar = "x")
    {
        anim(MyVar)
        Return
    }
    if (MyVar = "c")
    {
        anim(MyVar)
        Return
    }
    if (MyVar = "v")
    {
        anim(MyVar)
        Return
    }
    if (MyVar = "p")
    {
        try
        {
            x := new SocketTCP()
            x.Connect(Serv)
            x.SendText("p")
            ;Sleep, 10
            ;x.Disconnect()
        }
        Return
    }
    if (MyVar = "l")
    {
        try
        {
            x := new SocketTCP()
            x.Connect(Serv)
            x.SendText("l")
            ;x.Disconnect()
        }
        Return
    }
    if (MyVar = "m")
    {
        try
        {
            x := new SocketTCP()
            x.Connect(Serv)
            x.SendText("m")
            ;x.Disconnect()
        }
        Return
    }
    if (MyVar = "num7")
    {
        SendEvent, {LCtrl down}{LShift down}{Alt down}{Numpad7}{Alt up}{LShift up}{LCtrl up}
        Return
    }
    if (MyVar = "num8")
    {
        SendEvent, {LCtrl down}{LShift down}{Alt down}{Numpad8}{Alt up}{LShift up}{LCtrl up}
        Return
    }
    if (MyVar = "num9")
    {
        SendEvent, {LCtrl down}{LShift down}{Alt down}{Numpad9}{Alt up}{LShift up}{LCtrl up}
        Return
    }
}
else
{
    ; msgbox, Error Opening C:\luamacrosaey\samples\keypressed.txt
    ; anim(key)
}
Sleep, 5
Return ;from luamacros F24
;THE BLOCK OF CODE ABOVE is the original, simple Luamacros-dependant script.

;;;ALL THE CODE BELOW CAN BE THE ACTUAL FUNCTIONS THAT YOU WANT TO CALL;;;

anim(keyk){
SendEvent, {LCtrl down}{LShift down}{Alt down}keyk{Alt up}{LShift up}{LCtrl up}
; Sleep, 10000 ; marche pas dans la pipeline, SLOBS n est pas content de recup un deuxieme shortcut
; SendEvent, {LCtrl down}{LShift down}{Alt down}keyk{Alt up}{LShift up}{LCtrl up}
}
