#> plane-data:g4m1/g4m1
#
# @within
#   plane:**
#   weapon:**
        #declare tag g4m1-hitbox
        #declare tag g4m1-body

#> public
# @public
    #declare tag g4m1

#> private
# @private
    #declare tag g4m1-rightwing #右主翼を示す
    #declare tag g4m1-leftwing #左主翼を示す
    #declare tag g4m1-tail #胴体後部を示す
    #declare tag plane-init #初期化処理中のエンティティであることを示す

#機体召喚
summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[g4m1-root,g4m1,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,has-bomb,normal,250kg,has-weapon1,has-weapon2,has-weapon3,has-weapon4,has-weapon5,has-weapon6,main-weapon1,tier2],CustomName:'{"text":"g4m1"}',Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256,HandItems:[{id:"snowball",Count:1b,tag:{CustomModelData:1,weapons:["bomb"]}},{}]}
summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[g4m1,plane-init,plane,entity-nohit,plane-seat],CustomName:'{"text":"seat"}',Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:"donkey",Health:14f,Attributes:[{Name:"generic.max_health",Base:14d}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1b,NoAI:1b,Silent:1b,ChestedHorse:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:[g4m1,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["g4m1-body","g4m1",plane-init,plane,has-model,model-changeable,plane-parts,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:96,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["g4m1-tail","g4m1",plane-init,plane,has-model,plane-parts,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:99,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["g4m1-rightwing","g4m1",plane-init,plane,has-model,has-offset,plane-parts,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:100,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["g4m1-leftwing","g4m1",plane-init,plane,has-model,has-offset,plane-parts,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:101,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}

#hitbox召喚
summon armor_stand ~ ~ ~ {Tags:["g4m1-hitbox","g4m1",plane-init,plane,has-offset,plane-hitbox,body,offset-base,has-size,size30],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"body"}',Health:110f,Attributes:[{Name:"generic.max_health",Base:110d}]}
summon armor_stand ~ ~ ~ {Tags:["g4m1-hitbox","g4m1",plane-init,plane,has-offset,plane-hitbox,engine-r,engine,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"engine"}',Health:100f,Attributes:[{Name:"generic.max_health",Base:100d}]}
summon armor_stand ~ ~ ~ {Tags:["g4m1-hitbox","g4m1",plane-init,plane,has-offset,plane-hitbox,engine-l,engine,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"engine"}',Health:100f,Attributes:[{Name:"generic.max_health",Base:100d}]}
summon armor_stand ~ ~ ~ {Tags:["g4m1-hitbox","g4m1",plane-init,plane,has-offset,plane-hitbox,aileron-r,aileron,offset-base,has-size,size30],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"aileron-right"}',Health:90f,Attributes:[{Name:"generic.max_health",Base:90d}]}
summon armor_stand ~ ~ ~ {Tags:["g4m1-hitbox","g4m1",plane-init,plane,has-offset,plane-hitbox,aileron-l,aileron,offset-base,has-size,size30],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"aileron-left"}',Health:90f,Attributes:[{Name:"generic.max_health",Base:90d}]}
summon armor_stand ~ ~ ~ {Tags:["g4m1-hitbox","g4m1",plane-init,plane,has-offset,plane-hitbox,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"elevator-right"}',Health:70f,Attributes:[{Name:"generic.max_health",Base:70d}]}
summon armor_stand ~ ~ ~ {Tags:["g4m1-hitbox","g4m1",plane-init,plane,has-offset,plane-hitbox,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"elevator-left"}',Health:70f,Attributes:[{Name:"generic.max_health",Base:70d}]}
summon armor_stand ~ ~ ~ {Tags:["g4m1-hitbox","g4m1",plane-init,plane,has-offset,plane-hitbox,radder,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"radder"}',Health:70f,Attributes:[{Name:"generic.max_health",Base:70d}]}
summon armor_stand ~ ~ ~ {Tags:["g4m1-hitbox","g4m1",plane-init,plane,has-offset,plane-hitbox,cockpit,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"cockpit"}',Health:80f,Attributes:[{Name:"generic.max_health",Base:80d}]}

#ID付与
execute as @e[tag=plane-init,tag=plane-root,limit=1] at @s run function plane:summon/set-plane-id

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.speed 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.rolling 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.accelerate 33
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.resistance 23
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.energy-loss 14
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.deaccelerate 62
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.max-speed 15800
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.cruise-speed 10900
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.takeoff-speed 4100
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.stall-speed 3900
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-strt-min 1500
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-strt-max 1530
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-stop-min 1400
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-stop-max 1430
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-ret-min 5400
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-ret-max 5600
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-po-min 5100
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-po-max 5300

scoreboard players set @e[tag=plane-init,tag=plane-root] vp.landing-pitch -500
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngX -500
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngY 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngZ 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngY-old 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.pitch-speed 150
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.yaw-speed 113
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.roll-speed 195

scoreboard players set @e[tag=plane-init,tag=g4m1-body] vp.parking-cmd 96
scoreboard players set @e[tag=plane-init,tag=g4m1-body] vp.rolling-cmd 97
scoreboard players set @e[tag=plane-init,tag=g4m1-body] vp.flying-cmd 98

scoreboard players set @e[tag=plane-init,tag=plane-root] vp.max-engine 2

data modify storage minecraft:plane-datapack temporary.Pos set from entity @e[tag=plane-init,tag=plane-root,limit=1] Pos
execute store result score @e[tag=plane-init,tag=plane-root,limit=1] vp.PosX run data get storage minecraft:plane-datapack temporary.Pos[0] 10000
execute store result score @e[tag=plane-init,tag=plane-root,limit=1] vp.PosY run data get storage minecraft:plane-datapack temporary.Pos[1] 10000
execute store result score @e[tag=plane-init,tag=plane-root,limit=1] vp.PosZ run data get storage minecraft:plane-datapack temporary.Pos[2] 10000

#ohmydat呼び出し
execute as @e[tag=plane-init,tag=plane-root] run function oh_my_dat:please

#武器データセット
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon set value {current-weapon-index:0}
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list set value []
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon g4m1.base.bomb

#offset設定
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetZ 0
scoreboard players set @e[tag=g4m1-rightwing,tag=plane-init] vp.offsetX -6500
scoreboard players set @e[tag=g4m1-rightwing,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=g4m1-rightwing,tag=plane-init] vp.offsetZ 0
scoreboard players set @e[tag=g4m1-leftwing,tag=plane-init] vp.offsetX 6500
scoreboard players set @e[tag=g4m1-leftwing,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=g4m1-leftwing,tag=plane-init] vp.offsetZ 0
scoreboard players set @e[tag=engine-l,tag=plane-init] vp.offsetX 3000
scoreboard players set @e[tag=engine-l,tag=plane-init] vp.offsetY 250
scoreboard players set @e[tag=engine-l,tag=plane-init] vp.offsetZ 8000
scoreboard players set @e[tag=engine-r,tag=plane-init] vp.offsetX -3000
scoreboard players set @e[tag=engine-r,tag=plane-init] vp.offsetY 250
scoreboard players set @e[tag=engine-r,tag=plane-init] vp.offsetZ 8000
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetX -7400
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetY 1000
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetZ 4200
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetX 7300
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetY 1000
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetZ 4200
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetX -2300
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetY 1200
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetZ -6100
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetX 2300
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetY 1200
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetZ -6100
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetY 3000
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetZ -6500
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetY 1900
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetZ 7500

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init] remove plane-init
