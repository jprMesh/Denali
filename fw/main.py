print("Denali by Mesh")

import board

from kmk.kmk_keyboard import KMKKeyboard
from kmk.keys import KC
from kmk.matrix import DiodeOrientation
from kmk.modules.layers import Layers
from kmk.extensions.media_keys import MediaKeys


# Keyboard setup
keyboard = KMKKeyboard()
keyboard.extensions = [MediaKeys()]
keyboard.modules = [Layers()]
keyboard.diode_orientation = DiodeOrientation.COL2ROW
keyboard.col_pins = (
    board.GP14,
    board.GP15,
    board.GP26,
    board.GP27,
    board.GP28,
    board.A3,   # GP29, but circuitpy doesn't define it for some reason??
    board.GP8,
    board.GP9,
    board.GP12,
    board.GP10,
    board.GP11,
    board.GP13)
keyboard.row_pins = (
    board.GP7,
    board.GP6,
    board.GP5,
    board.GP4,
    board.GP3,
    board.GP2,)


# Key Aliases
_______ = KC.TRNS
XXXXXXX = KC.NO
KC_LCBR = KC.LSFT(KC.LBRC)
KC_RCBR = KC.LSFT(KC.RBRC)
KC_PIPE = KC.LSFT(KC.BSLS)
KC_UNDS = KC.LSFT(KC.MINS)
TAB_LFT = KC.LCTL(KC.LSFT(KC.TAB))
TAB_RGT = KC.LCTL(KC.TAB)
L_RAISE = KC.MO(2)
L_LOWER = KC.MO(3)
L__UPUP = KC.MO(4)
TG_QWER = KC.TG(1)


# Keymap
keyboard.keymap = [
    [  # dvorak base
        KC.GRV     ,KC.N1      ,KC.N2      ,KC.N3      ,KC.N4      ,KC.N5          ,KC.N6      ,KC.N7      ,KC.N8      ,KC.N9      ,KC.N0      ,KC.DEL ,
        KC.ESC     ,KC.QUOT    ,KC.COMM    ,KC.DOT     ,KC.P       ,KC.Y           ,KC.F       ,KC.G       ,KC.C       ,KC.R       ,KC.L       ,KC.BSPC,
        KC.TAB     ,KC.A       ,KC.O       ,KC.E       ,KC.U       ,KC.I           ,KC.D       ,KC.H       ,KC.T       ,KC.N       ,KC.S       ,KC.ENT ,
        L__UPUP    ,KC.SCLN    ,KC.Q       ,KC.J       ,KC.K       ,KC.X           ,KC.B       ,KC.M       ,KC.W       ,KC.V       ,KC.Z       ,KC.UP  ,
        TAB_LFT    ,TAB_RGT    ,KC.LALT    ,KC.LCTL    ,L_LOWER    ,KC.LSFT        ,KC.SPC     ,L_RAISE    ,KC.LGUI    ,KC.LEFT    ,KC.DOWN    ,KC.RGHT,
        XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,KC.BSPC        ,KC.ENT     ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX,
    ],
    [  # qwerty layer
        _______    ,_______    ,_______    ,_______    ,_______    ,_______        ,_______     ,_______    ,_______    ,_______    ,_______    ,_______,
        _______    ,KC.Q       ,KC.W       ,KC.E       ,KC.R       ,KC.T           ,KC.Y        ,KC.U       ,KC.I       ,KC.O       ,KC.P       ,_______,
        _______    ,KC.A       ,KC.S       ,KC.D       ,KC.F       ,KC.G           ,KC.H        ,KC.J       ,KC.K       ,KC.L       ,KC.SCLN    ,_______,
        _______    ,KC.Z       ,KC.X       ,KC.C       ,KC.V       ,KC.B           ,KC.N        ,KC.M       ,KC.COMM    ,KC.DOT     ,KC.SLSH    ,_______,
        _______    ,_______    ,_______    ,_______    ,_______    ,_______        ,_______     ,_______    ,_______    ,_______    ,_______    ,_______,
        XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,_______        ,_______     ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX,
    ],
    [  # raise
        _______    ,_______    ,KC.MUTE    ,KC.VOLD    ,KC.VOLU    ,_______        ,_______     ,KC.MRWD    ,KC.MPLY    ,KC.MFFD    ,_______    ,_______,
        _______    ,_______    ,_______    ,KC_LCBR    ,KC_RCBR    ,_______        ,KC.BSLS     ,KC.PEQL    ,KC.PPLS    ,KC.PMNS    ,KC.QUES    ,_______,
        _______    ,KC.ESC     ,KC.TAB     ,KC.LPRN    ,KC.RPRN    ,_______        ,KC.SLSH     ,KC.LEFT    ,KC.DOWN    ,KC.UP      ,KC.RGHT    ,_______,
        _______    ,_______    ,_______    ,KC.LBRC    ,KC.RBRC    ,_______        ,_______     ,KC_PIPE    ,KC_UNDS    ,KC.HOME    ,KC.END     ,_______,
        _______    ,_______    ,_______    ,_______    ,_______    ,_______        ,_______     ,_______    ,_______    ,_______    ,_______    ,_______,
        XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,_______        ,_______     ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX,
    ],
    [  # lower
        _______    ,KC.F1      ,KC.F2      ,KC.F3      ,KC.F4      ,KC.F5          ,KC.F6       ,KC.F7      ,KC.F8      ,KC.F9      ,KC.F10     ,_______,
        _______    ,KC.EXLM    ,KC.AT      ,KC.HASH    ,KC.DLR     ,KC.PERC        ,KC.CIRC     ,KC.AMPR    ,KC.ASTR    ,KC.LPRN    ,KC.RPRN    ,_______,
        _______    ,KC.N1      ,KC.N2      ,KC.N3      ,KC.N4      ,KC.N5          ,KC.N6       ,KC.N7      ,KC.N8      ,KC.N9      ,KC.N0      ,_______,
        _______    ,_______    ,_______    ,_______    ,_______    ,_______        ,_______     ,_______    ,_______    ,_______    ,_______    ,_______,
        _______    ,_______    ,_______    ,_______    ,_______    ,_______        ,_______     ,_______    ,_______    ,_______    ,_______    ,_______,
        XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,_______        ,_______     ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX,
    ],
    [  # upup
        XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX        ,XXXXXXX     ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX,
        TG_QWER    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX        ,XXXXXXX     ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX,
        XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX        ,XXXXXXX     ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX,
        XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX        ,XXXXXXX     ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX,
        _______    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX        ,XXXXXXX     ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX,
        XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX        ,XXXXXXX     ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX    ,XXXXXXX,
    ]
]


if __name__ == '__main__':
    keyboard.go()
