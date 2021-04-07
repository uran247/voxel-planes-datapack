#> plane-data:d4y2/d4y2
#
# @within
#   plane:**
#   weapon:**
        #declare tag d4y2-hitbox
        #declare tag d4y2-body

#> public
# @public
    #declare tag d4y2

#> private
# @private
    #declare tag plane-init #初期化処理中のエンティティであることを示す

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[d4y2,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,tier2,dive-bomber],CustomName:'{"text":"d4y2"}',Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[d4y2,plane-init,plane,entity-nohit,plane-seat],CustomName:'{"text":"seat"}',Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:"donkey",Health:13f,Attributes:[{Name:"generic.max_health",Base:13d}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1b,NoAI:1b,Silent:1b,ChestedHorse:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:[d4y2,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["plane-body","d4y2",plane-init,plane,has-model,model-changeable,plane-parts,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:27,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}

#hitbox召喚
summon armor_stand ~ ~ ~ {Tags:["d4y2",plane-init,has-offset,plane,plane-hitbox,body,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"body"}',Health:120f,Attributes:[{Name:"generic.max_health",Base:120d}]}
summon armor_stand ~ ~ ~ {Tags:["d4y2",plane-init,has-offset,plane,plane-hitbox,engine,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"engine"}',Health:90f,Attributes:[{Name:"generic.max_health",Base:90d}]}
summon armor_stand ~ ~ ~ {Tags:["d4y2",plane-init,has-offset,plane,plane-hitbox,aileron-r,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"aileron-right"}',Health:100f,Attributes:[{Name:"generic.max_health",Base:100d}]}
summon armor_stand ~ ~ ~ {Tags:["d4y2",plane-init,has-offset,plane,plane-hitbox,aileron-l,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"aileron-left"}',Health:100f,Attributes:[{Name:"generic.max_health",Base:100d}]}
summon armor_stand ~ ~ ~ {Tags:["d4y2",plane-init,has-offset,plane,plane-hitbox,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"elevator-right"}',Health:80f,Attributes:[{Name:"generic.max_health",Base:80d}]}
summon armor_stand ~ ~ ~ {Tags:["d4y2",plane-init,has-offset,plane,plane-hitbox,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"elevator-left"}',Health:80f,Attributes:[{Name:"generic.max_health",Base:80d}]}
summon armor_stand ~ ~ ~ {Tags:["d4y2",plane-init,has-offset,plane,plane-hitbox,radder,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"radder"}',Health:80f,Attributes:[{Name:"generic.max_health",Base:80d}]}
summon armor_stand ~ ~ ~ {Tags:["d4y2",plane-init,has-offset,plane,plane-hitbox,cockpit,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"cockpit"}',Health:1024f,Attributes:[{Name:"generic.max_health",Base:1024d}]}

#ID付与
execute as @e[tag=plane-init,tag=plane-root,limit=1] at @s run function plane:summon/set-plane-id

#ohmydat呼び出し
execute as @e[tag=plane-init,tag=plane-root] run function oh_my_dat:please

#飛行機データのストレージ設定
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data set from storage voxel-planes:plane d4y2.plane-data

#飛行スコアセット
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage voxel-planes:plane d4y2.plane-data
execute as @e[tag=plane-init,tag=plane-root] run function plane-data:util/set-plane-score
execute as @e[tag=plane-init,tag=plane-hitbox,tag=!cockpit] run function plane-data:util/set-hitbox-data

#武器データセット
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon set value {current-weapon-index:0}
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list set value []
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon d4y2.base.gun
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon d4y2.base.bomb

#hitboxのスコア設定
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetZ 0
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetY -100
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetZ 5700
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetX -4000
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetY -300
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetZ 2900
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetX 4000
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetY -300
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetZ 2900
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetX -1500
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetZ -2500
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetX 1500
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetZ -2500
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetY 1000
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetZ -2900
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetY 700
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetZ 3100

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init] remove plane-init
