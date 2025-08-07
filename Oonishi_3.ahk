#Requires AutoHotkey v2.0
SendMode "Input"
SetWorkingDir(A_ScriptDir)

; Sendコマンドで送信されるキーイベント間の遅延を設定
; 高速タイピング時の安定性向上のため、わずかな遅延を設定
SetKeyDelay(20, 20) ; 推奨値。必要に応じて調整 (例: SetKeyDelay(10, 10))

; 初期状態: 大西配列ON
TraySetIcon("Oonishi.ico") ; Oonishi配列のアイコン
A_TrayTip := "大西配列 ON"

; Alt + Spaceで map.ahk へ切り替え
!Space:: {
    ; Alt + Space が押されたら keymap.ahk を起動し、自身を終了
    Run(A_ScriptDir "\keymap.ahk")
    ExitApp
}

; layer0
; 1列目
sc002::q
sc003::l
sc004::u
sc005::,
sc006::.

sc009::f
sc00A::w
sc00B::r
sc00C::y
^::p

; 2列目
q::e
w::i
e::a
r::o
t::-

i::k
o::t
p::n
@::s
[::h

; 3列目
a::z
s::x
d::c
f::v
g::;

k::g
l::d
sc027::m
sc028::j
]::b

; 4列目
v::sc039
;m::Enter
sc033::Backspace
LShift::LCtrl
.::RShift


; layer1
c & s::1
c & d::2
c & f::3
c & w::4
c & e::5
c & r::6
c & sc003::7
c & sc004::8
c & sc005::9
c & a::0

c & g::+
c & t::*
c & sc006::/

c & sc009::@
c & k:::

; 矢印
c & o::Send("{Left}")
c & p::Send("{Down}")
c & @::Send("{Right}")
c & sc00B::Send("{Up}")


; layer2
x & s::SendText("!")
x & d::Send('"')
x & f::SendText('#')
x & w::Send("$")
x & e::Send("%")
x & r::Send("&")
x & sc003::Send("'")
x & sc004::Send("(")
x & sc005::Send(")")

x & sc00A::Send("(")
x & sc00B::Send(")")
x & o::SendText("[")
x & p::SendText("]")
x & l::SendText("{")
x & sc027::SendText("}")

x & sc009::`

; あそび
sc039::Send("😎")


#HotIf ; #HotIf 条件をリセット