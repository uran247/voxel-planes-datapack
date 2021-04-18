#> plane-data:spitfiremkix/spitfiremkix
#
# @within
#   plane:**
#   weapon:**
        #declare tag spitfiremkix-hitbox
        #declare tag spitfiremkix-body

#> public
# @public
    #declare tag spitfiremkix

#> private
# @private
    #declare tag plane-init #初期化処理中のエンティティであることを示す

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[spitfiremkix,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,tier3],DisabledSlots:256}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[spitfiremkix,plane-init,plane,entity-nohit,plane-seat],Passengers:[{id:"donkey",Attributes:[{Name:"generic.max_health",Base:20d}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1b,NoAI:1b,Silent:1b,ChestedHorse:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:[spitfiremkix,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["plane-body","spitfiremkix",plane-init,plane,has-model,model-changeable,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:0,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[-12f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["spitfiremkix",plane-init,plane,plane-hitbox,body,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:120f,Attributes:[{Name:"generic.max_health",Base:120d}]}
summon armor_stand ~ ~ ~ {Tags:["spitfiremkix",plane-init,plane,plane-hitbox,has-offset,engine,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:110f,Attributes:[{Name:"generic.max_health",Base:110d}]}
summon armor_stand ~ ~ ~ {Tags:["spitfiremkix",plane-init,plane,plane-hitbox,has-offset,aileron-r,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:110f,Attributes:[{Name:"generic.max_health",Base:110d}]}
summon armor_stand ~ ~ ~ {Tags:["spitfiremkix",plane-init,plane,plane-hitbox,has-offset,aileron-l,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:110f,Attributes:[{Name:"generic.max_health",Base:110d}]}
summon armor_stand ~ ~ ~ {Tags:["spitfiremkix",plane-init,plane,plane-hitbox,has-offset,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:100f,Attributes:[{Name:"generic.max_health",Base:100d}]}
summon armor_stand ~ ~ ~ {Tags:["spitfiremkix",plane-init,plane,plane-hitbox,has-offset,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:100f,Attributes:[{Name:"generic.max_health",Base:100d}]}
summon armor_stand ~ ~ ~ {Tags:["spitfiremkix",plane-init,plane,plane-hitbox,has-offset,radder,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:100f,Attributes:[{Name:"generic.max_health",Base:100d}]}
summon armor_stand ~ ~ ~ {Tags:["spitfiremkix",plane-init,plane,plane-hitbox,has-offset,cockpit,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:160f,Attributes:[{Name:"generic.max_health",Base:160d}]}

#ID付与
execute as @e[tag=plane-init,tag=plane-root,limit=1] at @s run function plane:summon/set-plane-id

#ohmydat呼び出し
execute as @e[tag=plane-init,tag=plane-root] run function oh_my_dat:please

#飛行機データのストレージ設定
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data set from storage voxel-planes:plane spitfiremkix.plane-data

#飛行スコアセット
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage voxel-planes:plane spitfiremkix.plane-data
execute as @e[tag=plane-init,tag=plane-root] run function plane-data:util/set-plane-score
execute as @e[tag=plane-init,tag=plane-hitbox] run function plane-data:util/set-hitbox-data
execute as @e[type=donkey,tag=plane-init] run function plane-data:util/set-plane-maxhp

#武器データセット
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon set value {current-weapon-index:0}
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list set value []
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon spitfiremkix.base.20mm
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon spitfiremkix.base.12p7mm

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init] remove plane-init
