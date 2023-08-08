#> plane:move/decrease-weptime
#
# wep時間減算し0ならrealoading状態にする
#
# @input
#   execute @e[tag=plane-root,tag=use-wep]
#
# @within function plane:move/plane-afterburner

#> prv
# @private
    #declare score_holder #wep-time

#wep時間減算
execute if entity @s[tag=!reloading-wep] store result score #wep-time vp.reg1 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data.flight-model.engine.wep-time int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data.flight-model.engine.wep-time 0.9999999999999999
execute if entity @s[tag=!reloading-wep] if score #wep-time vp.reg1 matches ..0 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data.flight-model.engine.wep-reload set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data.flight-model.engine.max-wep-reload

    #execute if entity @s[tag=!reloading-wep] if score #wep-time vp.reg1 matches ..0 run say reloading

execute if entity @s[tag=!reloading-wep] if score #wep-time vp.reg1 matches ..0 run tag @s add reloading-wep
execute if entity @s[tag=reloading-wep] if score #wep-time vp.reg1 matches ..0 run tag @s remove use-wep
