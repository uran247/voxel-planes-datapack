#> plane-data:b-17g/b-17g
#
# @within
#   plane:**
#   weapon:**
        #declare tag b17g-hitbox
        #declare tag b17g-body

#> public
# @public
    #declare tag b17g

#> private
# @private
    #declare tag plane-rightwing #右主翼を示す
    #declare tag plane-leftwing #左主翼を示す
    #declare tag plane-tail #機体後部を示す
    #declare tag plane-init #初期化処理中のエンティティであることを示す

#> spwn
# @within function plane:summon/summon-plane
    #declare tag b17g-spawner

#機体召喚
summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[b17g,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,tier3,bomber],DisabledSlots:256}
summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[b17g,plane-init,plane,entity-nohit,plane-seat],Passengers:[{id:"donkey",Attributes:[{Name:"generic.max_health",Base:20d}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1b,NoAI:1b,Silent:1b,ChestedHorse:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:[b17g,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["plane-body","b17g",plane-init,plane,has-model,model-changeable,plane-parts,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:150,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["plane-tail","b17g",plane-init,plane,has-model,model-changeable,plane-parts,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:153,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["plane-rightwing","b17g",plane-init,plane,has-model,model-changeable,has-offset,plane-parts,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:156,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["plane-leftwing","b17g",plane-init,plane,has-model,model-changeable,has-offset,plane-parts,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:159,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}

#hitbox召喚
summon armor_stand ~ ~ ~ {Tags:["b17g",plane-init,plane,plane-hitbox,body,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:80f,Attributes:[{Name:"generic.max_health",Base:80d}]}
summon armor_stand ~ ~ ~ {Tags:["b17g",plane-init,plane,has-offset,plane-hitbox,engine-r,engine,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:60f,Attributes:[{Name:"generic.max_health",Base:60d}]}
summon armor_stand ~ ~ ~ {Tags:["b17g",plane-init,plane,has-offset,plane-hitbox,engine-l,engine,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:60f,Attributes:[{Name:"generic.max_health",Base:60d}]}
summon armor_stand ~ ~ ~ {Tags:["b17g",plane-init,plane,has-offset,plane-hitbox,aileron-r,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:70f,Attributes:[{Name:"generic.max_health",Base:70d}]}
summon armor_stand ~ ~ ~ {Tags:["b17g",plane-init,plane,has-offset,plane-hitbox,aileron-l,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:70f,Attributes:[{Name:"generic.max_health",Base:70d}]}
summon armor_stand ~ ~ ~ {Tags:["b17g",plane-init,plane,has-offset,plane-hitbox,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:60f,Attributes:[{Name:"generic.max_health",Base:60d}]}
summon armor_stand ~ ~ ~ {Tags:["b17g",plane-init,plane,has-offset,plane-hitbox,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:60f,Attributes:[{Name:"generic.max_health",Base:60d}]}
summon armor_stand ~ ~ ~ {Tags:["b17g",plane-init,plane,has-offset,plane-hitbox,radder,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:70f,Attributes:[{Name:"generic.max_health",Base:70d}]}
summon armor_stand ~ ~ ~ {Tags:["b17g",plane-init,plane,has-offset,plane-hitbox,cockpit,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:1024f,Attributes:[{Name:"generic.max_health",Base:1024d}]}

#ID付与
execute as @e[tag=plane-init,tag=plane-root,distance=..1,limit=1] at @s run function plane:summon/set-plane-id

#ohmydat呼び出し
execute as @e[tag=plane-init,tag=plane-root,distance=..1] run function oh_my_dat:please

#飛行機データのストレージ設定
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data set from storage voxel-planes:plane b17g.plane-data

#飛行スコアセット
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage voxel-planes:plane b17g.plane-data
execute as @e[tag=plane-init,tag=plane-root,distance=..1] run function plane-data:util/set-plane-score
execute as @e[tag=plane-init,tag=has-model,tag=has-offset,distance=..1] run function plane-data:util/set-model-offset
execute as @e[type=donkey,tag=plane-init,distance=..1] run function plane-data:util/set-plane-maxhp

#武器データセット
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon set value {current-weapon-index:0}
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list set value []
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon b17g.base.bomb

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init,distance=..1] remove plane-init
