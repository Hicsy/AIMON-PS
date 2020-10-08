/**
 * Some quick keyboard rebindings for AimOn remote.
 * The config app is set up to use F13-F24 to reduce clashes.
 *
 * Below are some mappings to send media keys to spotify or my YT remote:
 * @link https://github.com/Hicsy/AHK-YouTube | My YouTube controller AHK.
 *
 * @author Hicsy
 * @link https://github.com/Hicsy/AIMON-PS | ReadMe + Installation.
 * @link http://tuact.com/support/manuals/users-manual | Original Mappings.
 *
 * @requires AutoHotKey Version: 2.0 (Tested on build a122)
 */

#Persistent
#SingleInstance force

/*
 * @TODO To remap hardware cfg, hold pair-button while inserting usb dongle!
 * LEFT JOYCON *
 * Select: Browser_Search
 * PS: [Still Power-Button]
 * L1: F13
 * L2: F14
 * L3: F15
 * LS_D: F16
 * LS_L: F17
 * LS_U: F18
 * LS_R: F19
 * Motion: F20 [All motion set to same for now]
 * D: F21
 * L: F22
 * U: F23
 * R: F24
 * MOUSE (□△○⨉ etc) *
 * Start: KB_Zoom
 * ⨉: AppsKey (Menu)
 * □: Browser_Forward
 * △: KB_Clear
 * ○: Browser_Back
 */

/*
 * @link https://lexikos.github.io/v2/docs/Hotkeys.htm#Symbols | Modifiers.
 * @link https://lexikos.github.io/v2/docs/KeyList.htm | AHK Key Names.
 */

; Setup modifier keys to not repeat: F13 = RShift Hold, F14 = LShift Hold.
SendLevel(2)
F13::{
    Hotkey("F13", "Off")
    SendInput("{RShift down}")
    return
}
*F13 up::{
    Hotkey("F13", "On")
    SendInput("{RShift up}")
    return
}

F14::{
    Hotkey("F14", "Off")
    SendInput("{LShift down}")
    return
}
*F14 up::{
    Hotkey("F14", "On")
    SendInput("{LShift up}")
    return
}

;Send Media Keys - Includes modifiers for advanced control by other script.
#InputLevel 2
F22::SendInput("{Media_Prev}")
F23::SendInput("{Media_Play_Pause}")
F24::SendInput("{Media_Next}")

<+F22::SendInput("{LShift}{Media_Prev}")
<+F23::SendInput("{LShift}{Media_Play_Pause}")
<+F24::SendInput("{LShift}{Media_Next}")

>+F22::SendInput("{RShift}{Media_Prev}")
>+F23::SendInput("{RShift}{Media_Play_Pause}")
>+F24::SendInput("{RShift}{Media_Next}")