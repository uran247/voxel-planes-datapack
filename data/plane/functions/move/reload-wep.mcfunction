#> plane:move/reload-wep
#
# WEP rload時間をカウントし完了したらWEP時間を回復
#
# @within function plane:move/plane-afterburner

#> prv
# @private
    #declare score_holder #wep-reload

#WEPリロード減算
execute store result score #wep-reload vp.reg1 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data.flight-model.engine.wep-reload int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data.flight-model.engine.wep-reload 0.9999999999999999
execute if score #wep-reload vp.reg1 matches ..0 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data.flight-model.engine.wep-time set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data.flight-model.engine.max-wep-time

    #execute if score #wep-reload vp.reg1 matches ..0 run say reload-end

execute if score #wep-reload vp.reg1 matches ..0 run tag @s remove reloading-wep
