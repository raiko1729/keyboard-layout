#Requires AutoHotkey v2.0
SendMode "Input"
SetWorkingDir(A_ScriptDir)

; Sendコマンドで送信されるキーイベント間の遅延を設定
; 高速タイピング時の安定性向上のため、わずかな遅延を設定します。
SetKeyDelay(20, 20) ; 推奨値。必要に応じて調整 (例: SetKeyDelay(10, 10))

; 初期状態: 大西配列ON
A_TrayTip := "大西配列 ON"

; Alt + Spaceで remap.ahk へ切り替え
!Space:: {
    ; Alt + Space が押されたら keymap.ahk を起動し、自身を終了
    Run(A_ScriptDir "\keymap.ahk")
    ExitApp
}

-::/

w::l
e::u
r::,
t::.
y::f
u::w
i::r
o::y

a::e
s::i
d::a
f::o
g::-
h::k
j::t
k::n
l::s
sc027::h

b::sc027
n::g
m::d
,::m
.::j
/::b

sc079::Backspace


; 無変換キー（sc07B）を修飾キーとして使うホットキー
; 無変換キー + アルファベット → 数字
sc07B & z::Send("1")
sc07B & x::Send("2")
sc07B & c::Send("3")
sc07B & a::Send("4")
sc07B & s::Send("5")
sc07B & d::Send("6")
sc07B & q::Send("7")
sc07B & w::Send("8")
sc07B & e::Send("9")
sc07B & LShift::Send("0")
sc07B & v::Send("{+}")
sc07B & g::Send("-")
sc07B & f::Send("*")
sc07B & r::Send("/")

sc07B & j::Send("{Left}")
sc07B & k::Send("{Down}")
sc07B & l::Send("{Right}")
sc07B & i::Send("{Up}")

; Altキー単体の機能を無効化
*sc038::return

; Alt (sc038) を修飾キーとして使う
sc038 & z::Send('!')
sc038 & x::Send('"')
sc038 & c::Send('#')
sc038 & a::Send("$")
sc038 & s::Send("%")
sc038 & d::Send("&")
sc038 & q::Send("'")
sc038 & w::Send("(")
sc038 & e::Send(")")

; 各レイヤー，LShiftを押している間におけるBSの有効化
sc038 & sc079::Send("{Backspace}")
sc07B & sc079::Send("{Backspace}")
LShift & sc079::Send("{Backspace}")


#HotIf ; #HotIf 条件をリセット
