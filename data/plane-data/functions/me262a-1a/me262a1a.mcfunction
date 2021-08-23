#> plane-data:me262a-1a/me262a1a
#
# @within
#   plane:**
#   weapon:**
        #declare tag me262a1a-hitbox
        #declare tag me262a1a-body

#> public
# @public
    #declare tag me262a1a

#> private
# @private
    #declare tag plane-init #初期化処理中のエンティティであることを示す

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[me262a1a,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,tier1,bomber],DisabledSlots:256}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[me262a1a,plane-init,plane,entity-nohit,plane-seat],Passengers:[{id:"donkey",Health:6f,Attributes:[{Name:"generic.max_health",Base:6d}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1b,NoAI:1b,Silent:1b,ChestedHorse:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:[me262a1a,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:[plane-body,me262a1a,plane-init,plane,has-model,model-changeable,plane-parts,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:128,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:[me262a1a,plane-init,plane,has-model,plane-parts,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:130,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}

#hitbox召喚
summon armor_stand ~ ~ ~ {Tags:["me262a1a",plane-init,plane,plane-hitbox,body,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:50f,Attributes:[{Name:"generic.max_health",Base:50d}]}
summon armor_stand ~ ~ ~ {Tags:["me262a1a",plane-init,has-offset,plane,plane-hitbox,engine,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:50f,Attributes:[{Name:"generic.max_health",Base:50d}]}
summon armor_stand ~ ~ ~ {Tags:["me262a1a",plane-init,has-offset,plane,plane-hitbox,aileron-r,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:50f,Attributes:[{Name:"generic.max_health",Base:50d}]}
summon armor_stand ~ ~ ~ {Tags:["me262a1a",plane-init,has-offset,plane,plane-hitbox,aileron-l,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:50f,Attributes:[{Name:"generic.max_health",Base:50d}]}
summon armor_stand ~ ~ ~ {Tags:["me262a1a",plane-init,has-offset,plane,plane-hitbox,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:40f,Attributes:[{Name:"generic.max_health",Base:40d}]}
summon armor_stand ~ ~ ~ {Tags:["me262a1a",plane-init,has-offset,plane,plane-hitbox,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:40f,Attributes:[{Name:"generic.max_health",Base:40d}]}
summon armor_stand ~ ~ ~ {Tags:["me262a1a",plane-init,has-offset,plane,plane-hitbox,radder,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:40f,Attributes:[{Name:"generic.max_health",Base:40d}]}
summon armor_stand ~ ~ ~ {Tags:["me262a1a",plane-init,has-offset,plane,plane-hitbox,cockpit,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:1024f,Attributes:[{Name:"generic.max_health",Base:1024d}]}

#ID付与
execute as @e[tag=plane-init,tag=plane-root,distance=..1,limit=1] at @s run function plane:summon/set-plane-id

#ohmydat呼び出し
execute as @e[tag=plane-init,tag=plane-root,distance=..1] run function oh_my_dat:please

#飛行機データのストレージ設定
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data set from storage voxel-planes:plane me262a1a.plane-data

#飛行スコアセット
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage voxel-planes:plane me262a1a.plane-data
execute as @e[tag=plane-init,tag=plane-root,distance=..1] run function plane-data:util/set-plane-score
execute as @e[tag=plane-init,tag=plane-hitbox,distance=..1] run function plane-data:util/set-hitbox-data
execute as @e[type=donkey,tag=plane-init,distance=..1] run function plane-data:util/set-plane-maxhp

#武器データセット
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon set value {current-weapon-index:0}
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list set value []
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon me262a1a.base.7p7mm
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon me262a1a.base.bomb

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init,distance=..1] remove plane-init

