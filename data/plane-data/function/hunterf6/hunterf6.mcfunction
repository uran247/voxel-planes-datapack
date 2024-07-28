#> plane-data:hunterf6/hunterf6
#
# @within
#   plane:**
#   weapon:**
        #declare tag hunterf6-hitbox
        #declare tag hunterf6-body

#> public
# @public
    #declare tag hunterf6

#> private
# @private
    #declare tag plane-init #初期化処理中のエンティティであることを示す

#> spwn
# @within function plane:summon/summon-plane
    #declare tag hunterf6-spawner

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[hunterf6,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,tier1],DisabledSlots:256}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[hunterf6,plane-init,plane,entity-nohit,plane-seat],Passengers:[{id:"donkey",attributes:[{id:"generic.max_health",base:20d}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1b,NoAI:1b,Silent:1b,ChestedHorse:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b}],Tags:[hunterf6,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:[plane-body,hunterf6,plane-init,plane,has-model,model-changeable,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,components:{"minecraft:custom_model_data":199}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[-12f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:[plane-tail,hunterf6,plane-init,plane,has-model,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,components:{"minecraft:custom_model_data":201}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[-12f,0f,0f]},DisabledSlots:256}
ride @e[tag=plane-init,tag=plane-body,distance=..1,limit=1] mount @e[tag=plane-init,tag=plane-root,distance=..1,limit=1] 

#ID付与
execute as @e[tag=plane-init,tag=plane-root,distance=..1,limit=1] at @s run function plane:summon/set-plane-id

#ohmydat呼び出し
execute as @e[tag=plane-init,tag=plane-root,distance=..1] run function oh_my_dat:please

#飛行機データのストレージ設定
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage voxel-planes:plane hunterf6.plane-data
function plane-data:util/set-plane-sotrage

#飛行スコアセット
execute as @e[tag=plane-init,tag=plane-root,distance=..1] run function plane-data:util/set-plane-score
execute as @e[type=donkey,tag=plane-init,distance=..1] run function plane-data:util/set-plane-maxhp

#武器データセット
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon set value {current-weapon-index:0}
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list set value []
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon hunterf6.base.gun
#data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:$WEAPON_TYPE}}].data.$WEAPON_TYPEs append from storage voxel-planes:weapon hunterf6.additional.$ADDITIONAL_WEAPOM[]

#爆弾ロケットの弾数変更(不要なら削除)
#execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.current-ammunition int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.bombs
#execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.max-ammunition int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:bomb}}].data.bombs
#execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}].data.current-ammunition int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}].data.rockets
#execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}].data.max-ammunition int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{data:{type:rocket}}].data.rockets

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init,distance=..1] remove plane-init