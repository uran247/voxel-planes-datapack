#> plane-data:swordfish/swordfish
#
# @within
#   plane:**
#   weapon:**
        #declare tag swordfish-hitbox
        #declare tag swordfish-body

#> public
# @public
    #declare tag swordfish

#> private
# @private
    #declare tag plane-init #初期化処理中のエンティティであることを示す

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[swordfish,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,tier2,bomber],DisabledSlots:256}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[swordfish,plane-init,plane,entity-nohit,plane-seat],Passengers:[{id:"donkey",Health:13f,Attributes:[{Name:"generic.max_health",Base:13d}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1b,NoAI:1b,Silent:1b,ChestedHorse:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:[swordfish,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["plane-body","swordfish",plane-init,plane,has-model,model-changeable,plane-parts,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:49,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:[swordfish,plane-init,plane,has-model,plane-parts,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:51,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}

#hitbox召喚
summon armor_stand ~ ~ ~ {Tags:["swordfish",plane-init,has-offset,plane,body,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:120f,Attributes:[{Name:"generic.max_health",Base:120d}]}
summon armor_stand ~ ~ ~ {Tags:["swordfish",plane-init,has-offset,plane,plane-hitbox,engine,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:90f,Attributes:[{Name:"generic.max_health",Base:90d}]}
summon armor_stand ~ ~ ~ {Tags:["swordfish",plane-init,has-offset,plane,plane-hitbox,aileron-r,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:100f,Attributes:[{Name:"generic.max_health",Base:100d}]}
summon armor_stand ~ ~ ~ {Tags:["swordfish",plane-init,has-offset,plane,plane-hitbox,aileron-l,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:100f,Attributes:[{Name:"generic.max_health",Base:100d}]}
summon armor_stand ~ ~ ~ {Tags:["swordfish",plane-init,has-offset,plane,plane-hitbox,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:80f,Attributes:[{Name:"generic.max_health",Base:80d}]}
summon armor_stand ~ ~ ~ {Tags:["swordfish",plane-init,has-offset,plane,plane-hitbox,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:80f,Attributes:[{Name:"generic.max_health",Base:80d}]}
summon armor_stand ~ ~ ~ {Tags:["swordfish",plane-init,has-offset,plane,plane-hitbox,radder,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:80f,Attributes:[{Name:"generic.max_health",Base:80d}]}
summon armor_stand ~ ~ ~ {Tags:["swordfish",plane-init,has-offset,plane,plane-hitbox,cockpit,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:1024f,Attributes:[{Name:"generic.max_health",Base:1024d}]}

#ID付与
execute as @e[tag=plane-init,tag=plane-root,limit=1] at @s run function plane:summon/set-plane-id

#ohmydat呼び出し
execute as @e[tag=plane-init,tag=plane-root] run function oh_my_dat:please

#飛行機データのストレージ設定
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data set from storage voxel-planes:plane swordfish.plane-data

#飛行スコアセット
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage voxel-planes:plane swordfish.plane-data
execute as @e[tag=plane-init,tag=plane-root] run function plane-data:util/set-plane-score
execute as @e[tag=plane-init,tag=plane-hitbox] run function plane-data:util/set-hitbox-data
execute as @e[type=donkey,tag=plane-init] run function plane-data:util/set-plane-maxhp

#武器データセット
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon set value {current-weapon-index:0}
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list set value []
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon swordfish.base.gun
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon swordfish.base.bomb


#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init] remove plane-init
