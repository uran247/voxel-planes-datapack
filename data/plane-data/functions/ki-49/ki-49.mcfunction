#> plane-data:ki-49/ki-49
#
# @within
#   plane:**
#   weapon:**
        #declare tag ki49-hitbox
        #declare tag ki49-body

#> public
# @public
    #declare tag ki49

#> private
# @private
    #declare tag plane-rightwing #右主翼を示す
    #declare tag ki49-leftwing #左主翼を示す
    #declare tag plane-init #初期化処理中のエンティティであることを示す

#機体召喚
summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[ki49,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,tier3,normal-bomber],CustomName:'{"text":"ki49"}',Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[ki49,plane-init,plane,entity-nohit,plane-seat],CustomName:'{"text":"seat"}',Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:"donkey",Health:11f,Attributes:[{Name:"generic.max_health",Base:11d}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1b,NoAI:1b,Silent:1b,ChestedHorse:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:[ki49,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["plane-body","ki49",plane-init,plane,has-model,model-changeable,plane-parts,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:110,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["ki49",plane-init,plane,has-model,plane-parts,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:113,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["plane-rightwing","ki49",plane-init,plane,has-model,model-changeable,has-offset,plane-parts,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:114,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}

#hitbox召喚
summon armor_stand ~ ~ ~ {Tags:["ki49",plane-init,plane,has-offset,plane-hitbox,body,offset-base,has-size,size30],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:1b,CustomName:'{"text":"body"}',Health:80f,Attributes:[{Name:"generic.max_health",Base:80d}]}
summon armor_stand ~ ~ ~ {Tags:["ki49",plane-init,plane,has-offset,plane-hitbox,engine-r,engine,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:1b,CustomName:'{"text":"engine"}',Health:60f,Attributes:[{Name:"generic.max_health",Base:60d}]}
summon armor_stand ~ ~ ~ {Tags:["ki49",plane-init,plane,has-offset,plane-hitbox,engine-l,engine,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:1b,CustomName:'{"text":"engine"}',Health:60f,Attributes:[{Name:"generic.max_health",Base:60d}]}
summon armor_stand ~ ~ ~ {Tags:["ki49",plane-init,plane,has-offset,plane-hitbox,aileron-r,aileron,offset-base,has-size,size30],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:1b,CustomName:'{"text":"aileron-right"}',Health:70f,Attributes:[{Name:"generic.max_health",Base:70d}]}
summon armor_stand ~ ~ ~ {Tags:["ki49",plane-init,plane,has-offset,plane-hitbox,aileron-l,aileron,offset-base,has-size,size30],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:1b,CustomName:'{"text":"aileron-left"}',Health:70f,Attributes:[{Name:"generic.max_health",Base:70d}]}
summon armor_stand ~ ~ ~ {Tags:["ki49",plane-init,plane,has-offset,plane-hitbox,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:1b,CustomName:'{"text":"elevator-right"}',Health:60f,Attributes:[{Name:"generic.max_health",Base:60d}]}
summon armor_stand ~ ~ ~ {Tags:["ki49",plane-init,plane,has-offset,plane-hitbox,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:1b,CustomName:'{"text":"elevator-left"}',Health:60f,Attributes:[{Name:"generic.max_health",Base:60d}]}
summon armor_stand ~ ~ ~ {Tags:["ki49",plane-init,plane,has-offset,plane-hitbox,radder,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:1b,CustomName:'{"text":"radder"}',Health:70f,Attributes:[{Name:"generic.max_health",Base:70d}]}
summon armor_stand ~ ~ ~ {Tags:["ki49",plane-init,plane,has-offset,plane-hitbox,cockpit,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:1b,CustomName:'{"text":"cockpit"}',Health:1024f,Attributes:[{Name:"generic.max_health",Base:1024d}]}

#ID付与
execute as @e[tag=plane-init,tag=plane-root,limit=1] at @s run function plane:summon/set-plane-id

#ohmydat呼び出し
execute as @e[tag=plane-init,tag=plane-root] run function oh_my_dat:please

#飛行機データのストレージ設定
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data set from storage voxel-planes:plane ki49.plane-data

#飛行スコアセット
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage voxel-planes:plane ki49.plane-data
execute as @e[tag=plane-init,tag=plane-root] run function plane-data:util/set-plane-score
execute as @e[tag=plane-init,tag=plane-hitbox,tag=!cockpit] run function plane-data:util/set-hitbox-data

#武器データセット
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon set value {current-weapon-index:0}
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list set value []
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon ki49.base.bomb

#offset設定
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetZ 0
scoreboard players set @e[tag=engine-l,tag=plane-init] vp.offsetX 3000
scoreboard players set @e[tag=engine-l,tag=plane-init] vp.offsetY 250
scoreboard players set @e[tag=engine-l,tag=plane-init] vp.offsetZ 6800
scoreboard players set @e[tag=engine-r,tag=plane-init] vp.offsetX -3000
scoreboard players set @e[tag=engine-r,tag=plane-init] vp.offsetY 250
scoreboard players set @e[tag=engine-r,tag=plane-init] vp.offsetZ 6800
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetX -7400
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetY 700
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetZ 3000
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetX 7300
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetY 700
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetZ 3000
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetX -2300
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetY 600
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetZ -6500
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetX 2300
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetY 600
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetZ -6500
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetY 2400
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetZ -6800
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetY 1600
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetZ 6600

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init] remove plane-init
