; The hotkeys I use for convenience (optimized for the italian layout, which sometimes
is missing some symbols). Use freely!
; Download AutoHotKey: https://www.autohotkey.com/

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

; Set num lock on
SetNumLockState, AlwaysOn

; AltGr+- -> ~
<^>!-::SendInput {~}

; Alt+, -> …
!,::SendInput {…}

; Alt+- -> –
!-::SendInput {–}

; Alt+Shift+- -> —
!+-::SendInput {—}

; ... -> …
::...::…

; AltGr+Shift+Space -> "​"
<^>!+Space::SendInput {​}

; AltGr+Space -> "ㅤ"
<^>!Space::SendInput {ㅤ}

; Alt+' -> "`"
!'::SendInput {``}

; Alt+{è,é,à,ì,ò,ù} -> {È,É,À,Ì,Ò,Ù}
!è::SendInput {È}
!+è::SendInput {É}
!à::SendInput {À}
!ì::SendInput {Ì}
!ò::SendInput {Ò}
!ù::SendInput {Ù}

; Alt+{number} -> {^number}
!1::SendInput {¹}
!2::SendInput {²}
!3::SendInput {³}
!4::SendInput {⁴}
!5::SendInput {⁵}
!6::SendInput {⁶}
!7::SendInput {⁷}
!8::SendInput {⁸}
!9::SendInput {⁹}
!0::SendInput {⁰}

; Kaomojis
::/shrug::¯\_(ツ)_/¯
::^w^::^ω^
::^-^::^–^
::-.-::–.–
::/tableflip::(╯°□°）╯︵ ┻━┻
::/unflip::┬─┬ ノ( ゜-゜ノ)

; Symbols
<^>!d::SendInput {`𐦖`}
<^>!s::SendInput {`𐦖`}
!+8::SendInput {├}
!+9::SendInput {└}
::|-::├
::|_::└
<^>!c::SendInput {©}
<^>!r::SendInput {®}
<^>!t::SendInput {™}
<^>!+C::SendInput {℃}
