/**
 * Some quick keyboard rebindings for AimOn remote.
 * The config app is set up to use F13-F24 to reduce clashes.
 * Below are some mappings to send common keys.
 *
 * @author Hicsy
 * @link https://github.com/Hicsy/AIMON-PS | ReadMe + Installation.
 * @link http://tuact.com/support/manuals/users-manual | Original Mappings
 *
 * @requires AutoHotKey Version: 2.0 (Tested on build a122)
 */

#Persistent
#SingleInstance force

/*
 * To remap these in hardware cfg, hold pair-button while inserting usb dongle!
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

F22::Media_Prev
F23::Media_Play_Pause
F24::Media_Next

F14::LShift

F13::RShift
