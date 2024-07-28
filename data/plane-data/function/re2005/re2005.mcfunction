#> plane-data:re2005/re2005
#
# @within
#   plane:**
#   weapon:**
        #declare tag re2005-hitbox
        #declare tag re2005-body

#> public
# @public
    #declare tag re2005

#> private
# @private
    #declare tag plane-init #初期化処理中のエンティティであることを示す

#> spwn
# @within function plane:summon/summon-plane
    #declare tag re2005-spawner

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[re2005,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,tier1],DisabledSlots:256}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[re2005,plane-init,plane,entity-nohit,plane-seat],Passengers:[{id:"donkey",Attributes:[{id:"generic.max_health",base:20d}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1b,NoAI:1b,Silent:1b,ChestedHorse:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b}],Tags:[re2005,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256}
summon item_display ~ ~ ~ {Tags:[plane-body,re2005,plane-init,plane,has-model,model-changeable,entity-nohit],NoGravity:1b,item:{id:"minecraft:diamond_sword",Count:1b,components:{"minecraft:custom_model_data":0,Unbreakable:1b}},interpolation_duration:0,view_range:4.0f,transformation:{right_rotation:{angle:0f,axis:[0f,1f,0f]},left_rotation:{angle:0f,axis:[0f,0f,1f]},scale:[1f,1f,1f],translation:[0f,0f,0f]},item_display:"thirdperson_righthand"}
ride @e[tag=plane-init,tag=plane-body,distance=..1,limit=1] mount @e[tag=plane-init,tag=plane-root,distance=..1,limit=1]

#ohmydat呼び出し
execute as @e[tag=plane-init,tag=plane-root,distance=..1] run function oh_my_dat:please

#飛行機データのストレージ設定
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage voxel-planes:plane re2005.plane-data
function plane-data:util/set-plane-sotrage

#afterburner召喚
execute if data storage voxel-planes:input input.model-data.afterburner as @e[tag=plane-init,tag=plane-root,distance=..1,limit=1] run function plane:summon/summon-afterburner

#ID付与
execute as @e[tag=plane-init,tag=plane-root,distance=..1,limit=1] at @s run function plane:summon/set-plane-id

#飛行スコアセット
execute as @e[tag=plane-init,tag=plane-root,distance=..1] run function plane-data:util/set-plane-score
execute as @e[type=donkey,tag=plane-init,distance=..1] run function plane-data:util/set-plane-maxhp

#武器データセット
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon set value {current-weapon-index:0}
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list set value []
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon re2005.base.20mm
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon re2005.base.12p7mm

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init,distance=..1] remove plane-init