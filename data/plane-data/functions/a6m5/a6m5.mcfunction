#> plane-data:a6m5/a6m5
#
# @within
#   plane:**
#   weapon:**
        #declare tag a6m5-hitbox
        #declare tag a6m5-body

#> public
# @public
    #declare tag a6m5

#> private
# @private
    #declare tag plane-init #初期化処理中のエンティティであることを示す

#> spwn
# @within function plane:summon/summon-plane
    #declare tag a6m5-spawner

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[a6m5,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,tier3],DisabledSlots:256}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[a6m5,plane-init,plane,entity-nohit,plane-seat],Passengers:[{id:"donkey",Attributes:[{Name:"generic.max_health",Base:20d}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1b,NoAI:1b,Silent:1b,ChestedHorse:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:[a6m5,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256}
summon item_display ~ ~ ~ {Tags:["plane-body","a6m5",plane-init,plane,has-model,model-changeable,entity-nohit],NoGravity:1b,item:{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:7,Unbreakable:1b}},interpolation_duration:0,view_range:4.0f,transformation:{right_rotation:{angle:3.1416f,axis:[0f,1f,0f]},left_rotation:{angle:0f,axis:[0f,0f,1f]},scale:[1f,1f,1f],translation:[0f,1.5f,0f]},item_display:"thirdperson_righthand"}
ride @e[tag=plane-init,tag=plane-body,distance=..1,limit=1] mount @e[tag=plane-init,tag=plane-root,distance=..1,limit=1] 

#ID付与
execute as @e[tag=plane-init,tag=plane-root,distance=..1,limit=1] at @s run function plane:summon/set-plane-id

#ohmydat呼び出し
execute as @e[tag=plane-init,tag=plane-root,distance=..1] run function oh_my_dat:please

#飛行機データのストレージ設定
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage voxel-planes:plane a6m5.plane-data
function plane-data:util/set-plane-sotrage

#飛行スコアセット
execute as @e[tag=plane-init,tag=plane-root,distance=..1] run function plane-data:util/set-plane-score
execute as @e[type=donkey,tag=plane-init,distance=..1] run function plane-data:util/set-plane-maxhp

#武器データセット
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon set value {current-weapon-index:0}
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list set value []
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon a6m5.base.20mm
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon a6m5.base.7p7mm

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init,distance=..1] remove plane-init
