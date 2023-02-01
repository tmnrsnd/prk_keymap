# 3x4 MacroPad
# Author: tsnd
# Board : XiaoRP2040

kbd = Keyboard.new

kbd.init_pins(
  [ 29, 6, 7, 0],[ 26,27,28 ]  
)

kbd.add_layer :default, %i(
  KC_7 KC_8 KC_9
  KC_4 KC_5 KC_6
  KC_1 KC_2 KC_3
  KC0_LAY1 KC_BSPC KC_ENT
  )
  kbd.add_layer :layer1, %i(
    KC_HOME KC_UP KC_END
    KC_LEFT KC_DOWN KC_RIGHT
    KC_PGUP KC_DOWN KC_PGDOWN
    KC0_LAY1 KC_DEL KC_ENT
    )

kbd.define_mode_key :KC0_LAY1,    [ :KC_0, :layer1, 200, 200 ]

kbd.start!
