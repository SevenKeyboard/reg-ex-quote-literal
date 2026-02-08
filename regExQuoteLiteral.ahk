#Requires AutoHotkey v1.0.0+
;==============================================================
; regExQuoteLiteral — Quotes text for literal matching in PCRE patterns (\Q...\E with \E-safe splitting)
;
; GitHub: https://github.com/SevenKeyboard/reg-ex-quote-literal
; Author: SevenKeyboard Ltd. (2026)
; License: The Unlicense
;==============================================================

/*
Example Usage:
    #Requires AutoHotkey v1.0.90+
    msgbox % ("h\Ello" ~= "D)^" . regExQuoteLiteral("h\Ello") . "$") ;  1
*/

regExQuoteLiteral(text)    {
    return "\Q" . regExReplace(text, "\\E", "\E\\E\Q") . "\E"
}