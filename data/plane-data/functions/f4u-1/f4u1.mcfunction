#> plane-data:f4u-1/f4u1
#
# @within
#   plane:**
#   weapon:**
        #declare tag f4u1-hitbox
        #declare tag f4u1-body

#> public
# @public
    #declare tag f4u1

#> private
# @private
    #declare tag f4u1-rightwing #右主翼を示す
    #declare tag f4u1-leftwing #左主翼を示す
    #declare tag plane-init #初期化処理中のエンティティであることを示す

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[f4u1-root,f4u1,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,has-weapon1,main-weapon1,main-weapon2,main-weapon3,tier2],CustomName:'{"text":"f4u1"}',Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256,HandItems:[{id:"snowball",Count:1b,tag:{CustomModelData:1,weapons:["12.7mm gun","bomb","rocket"]}},{}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[f4u1,plane-init,plane,entity-nohit,plane-seat],CustomName:'{"text":"seat"}',Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:"donkey",Health:35f,Attributes:[{Name:"generic.max_health",Base:35d}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1b,NoAI:1b,Silent:1b,ChestedHorse:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:[f4u1,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["f4u1-body","f4u1",plane-init,plane,has-model,model-changeable,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:1,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[-12f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["f4u1-rightwing","f4u1",plane-init,plane,has-model,has-offset,plane-parts,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:64,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["f4u1-leftwing","f4u1",plane-init,plane,has-model,has-offset,plane-parts,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:65,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["f4u1-hitbox","f4u1",plane-init,plane,plane-hitbox,has-offset,body,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:1b,CustomName:'{"text":"body"}',Health:330f,Attributes:[{Name:"generic.max_health",Base:330d}]}
summon armor_stand ~ ~ ~ {Tags:["f4u1-hitbox","f4u1",plane-init,plane,plane-hitbox,has-offset,engine,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:1b,CustomName:'{"text":"engine"}',Health:300f,Attributes:[{Name:"generic.max_health",Base:300d}]}
summon armor_stand ~ ~ ~ {Tags:["f4u1-hitbox","f4u1",plane-init,plane,plane-hitbox,has-offset,aileron-r,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:1b,CustomName:'{"text":"aileron-right"}',Health:240f,Attributes:[{Name:"generic.max_health",Base:240d}]}
summon armor_stand ~ ~ ~ {Tags:["f4u1-hitbox","f4u1",plane-init,plane,plane-hitbox,has-offset,aileron-l,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:1b,CustomName:'{"text":"aileron-left"}',Health:240f,Attributes:[{Name:"generic.max_health",Base:240d}]}
summon armor_stand ~ ~ ~ {Tags:["f4u1-hitbox","f4u1",plane-init,plane,plane-hitbox,has-offset,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:1b,CustomName:'{"text":"elevator-right"}',Health:210f,Attributes:[{Name:"generic.max_health",Base:210d}]}
summon armor_stand ~ ~ ~ {Tags:["f4u1-hitbox","f4u1",plane-init,plane,plane-hitbox,has-offset,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:1b,CustomName:'{"text":"elevator-left"}',Health:210f,Attributes:[{Name:"generic.max_health",Base:210d}]}
summon armor_stand ~ ~ ~ {Tags:["f4u1-hitbox","f4u1",plane-init,plane,plane-hitbox,has-offset,radder,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:1b,CustomName:'{"text":"radder"}',Health:210f,Attributes:[{Name:"generic.max_health",Base:210d}]}
summon armor_stand ~ ~ ~ {Tags:["f4u1-hitbox","f4u1",plane-init,plane,plane-hitbox,has-offset,cockpit,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:1b,CustomName:'{"text":"cockpit"}',Health:360f,Attributes:[{Name:"generic.max_health",Base:360d}]}

#ID付与
execute as @e[tag=plane-init,tag=plane-root,limit=1] at @s run function plane:summon/set-plane-id

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
scoreboard players set @e[tag=plane-init] vp.rolling 0
scoreboard players set @e[tag=plane-init] vp.speed 0
scoreboard players set @e[tag=plane-init] vp.accelerate 70
scoreboard players set @e[tag=plane-init] vp.resistance 37
scoreboard players set @e[tag=plane-init] vp.energy-loss 22
scoreboard players set @e[tag=plane-init] vp.deaccelerate 107
scoreboard players set @e[tag=plane-init] vp.max-speed 23300
scoreboard players set @e[tag=plane-init] vp.cruise-speed 12000
scoreboard players set @e[tag=plane-init] vp.stall-speed 5100
scoreboard players set @e[tag=plane-init] vp.takeoff-speed 5300
scoreboard players set @e[tag=plane-init] vp.gear-ret-min 6600
scoreboard players set @e[tag=plane-init] vp.gear-ret-max 6800
scoreboard players set @e[tag=plane-init] vp.gear-po-min 6300
scoreboard players set @e[tag=plane-init] vp.gear-po-max 6500
scoreboard players set @e[tag=plane-init] vp.prop-strt-min 1600
scoreboard players set @e[tag=plane-init] vp.prop-strt-max 1700
scoreboard players set @e[tag=plane-init] vp.prop-stop-min 1400
scoreboard players set @e[tag=plane-init] vp.prop-stop-max 1500

scoreboard players set @e[tag=plane-init] vp.landing-pitch -1200
scoreboard players set @e[tag=plane-init] vp.AngX -1200
scoreboard players set @e[tag=plane-init] vp.AngY 0
scoreboard players set @e[tag=plane-init] vp.AngZ 0
scoreboard players set @e[tag=plane-init] vp.AngY-old 0
scoreboard players set @e[tag=plane-init] vp.pitch-speed 170
scoreboard players set @e[tag=plane-init] vp.yaw-speed 90
scoreboard players set @e[tag=plane-init] vp.roll-speed 460

scoreboard players set @e[tag=plane-init] vp.parking-cmd 1
scoreboard players set @e[tag=plane-init] vp.rolling-cmd 2
scoreboard players set @e[tag=plane-init] vp.flying-cmd 3

scoreboard players set @e[tag=plane-init] vp.w1-cooltime 0
scoreboard players set @e[tag=plane-init] vp.w2-cooltime 0
scoreboard players set @e[tag=plane-init] vp.w3-cooltime 0
scoreboard players set @e[tag=plane-init] vp.ammunition1 400
scoreboard players set @e[tag=plane-init] vp.ammunition2 2
scoreboard players set @e[tag=plane-init] vp.ammunition3 8
scoreboard players set @e[tag=plane-init] vp.max-ammo1 400
scoreboard players set @e[tag=plane-init] vp.max-ammo2 2
scoreboard players set @e[tag=plane-init] vp.max-ammo3 8
scoreboard players set @e[tag=plane-init] vp.max-w1-reload 220
scoreboard players set @e[tag=plane-init] vp.max-w2-reload 1200
scoreboard players set @e[tag=plane-init] vp.max-w3-reload 3600
scoreboard players set @e[tag=plane-init] vp.curr-weapon 1
scoreboard players set @e[tag=plane-init] vp.weapon-types 2

scoreboard players set @e[tag=plane-init] vp.max-engine 1

data modify storage minecraft:plane-datapack temporary.Pos set from entity @e[tag=plane-init,tag=plane-root,limit=1] Pos
execute store result score @e[tag=plane-init,limit=1] vp.PosX run data get storage minecraft:plane-datapack temporary.Pos[0] 10000
execute store result score @e[tag=plane-init,limit=1] vp.PosY run data get storage minecraft:plane-datapack temporary.Pos[1] 10000
execute store result score @e[tag=plane-init,limit=1] vp.PosZ run data get storage minecraft:plane-datapack temporary.Pos[2] 10000

#hitboxのスコア設定
scoreboard players set @e[tag=f4u1-rightwing,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=f4u1-rightwing,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=f4u1-rightwing,tag=plane-init] vp.offsetZ 0
scoreboard players set @e[tag=f4u1-leftwing,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=f4u1-leftwing,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=f4u1-leftwing,tag=plane-init] vp.offsetZ 0

scoreboard players set @e[tag=body,tag=plane-init] vp.offsetX 300
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetZ 0
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetX 300
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetZ 4500
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetX -2900
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetY -500
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetZ 2200
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetX 3500
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetY -500
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetZ 2200
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetX -1000
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetY 200
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetZ -3600
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetX 1600
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetY 200
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetZ -3600
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetX 300
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetY 1300
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetZ -3000
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetX 300
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetY 700
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetZ 1100

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init] remove plane-init
