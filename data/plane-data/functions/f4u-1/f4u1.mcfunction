#実行条件無し

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[f4u1-root,f4u1,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,has-weapon1,main-weapon1,main-weapon2,main-weapon3,tier2],CustomName:"{\"text\":\"f4u1\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256,NoGravity:0b,HandItems:[{id:"snowball",Count:1b,tag:{CustomModelData:1,weapons:["12.7mm gun","bomb","rocket"]}},{}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[f4u1,plane-init,plane,entity-nohit,plane-seat],CustomName:"{\"text\":\"seat\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:donkey,Health:35f,Attributes:[{Name:"generic.max_health",Base:35}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1,NoAI:1,Silent:1,ChestedHorse:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:1000000,ShowParticles:0b}],Tags:[f4u1,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256,NoGravity:0b}
summon armor_stand ~ ~ ~ {Tags:["f4u1-body","f4u1",plane-init,plane,has-model,model-changeable,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:1,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[-12f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["f4u1-rightwing","f4u1",plane-init,plane,has-model,has-offset,plane-parts,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:64,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["f4u1-leftwing","f4u1",plane-init,plane,has-model,has-offset,plane-parts,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:65,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["f4u1-hitbox","f4u1",plane-init,plane,plane-hitbox,has-offset,body,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"body\"}",Health:330f,Attributes:[{Name:"generic.max_health",Base:330}]}
summon armor_stand ~ ~ ~ {Tags:["f4u1-hitbox","f4u1",plane-init,plane,plane-hitbox,has-offset,engine,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"engine\"}",Health:300f,Attributes:[{Name:"generic.max_health",Base:300}]}
summon armor_stand ~ ~ ~ {Tags:["f4u1-hitbox","f4u1",plane-init,plane,plane-hitbox,has-offset,aileron-r,aileron,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-right\"}",Health:240f,Attributes:[{Name:"generic.max_health",Base:240}]}
summon armor_stand ~ ~ ~ {Tags:["f4u1-hitbox","f4u1",plane-init,plane,plane-hitbox,has-offset,aileron-l,aileron,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-left\"}",Health:240f,Attributes:[{Name:"generic.max_health",Base:240}]}
summon armor_stand ~ ~ ~ {Tags:["f4u1-hitbox","f4u1",plane-init,plane,plane-hitbox,has-offset,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-right\"}",Health:210f,Attributes:[{Name:"generic.max_health",Base:210}]}
summon armor_stand ~ ~ ~ {Tags:["f4u1-hitbox","f4u1",plane-init,plane,plane-hitbox,has-offset,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-left\"}",Health:210f,Attributes:[{Name:"generic.max_health",Base:210}]}
summon armor_stand ~ ~ ~ {Tags:["f4u1-hitbox","f4u1",plane-init,plane,plane-hitbox,has-offset,radder,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"radder\"}",Health:210f,Attributes:[{Name:"generic.max_health",Base:210}]}
summon armor_stand ~ ~ ~ {Tags:["f4u1-hitbox","f4u1",plane-init,plane,plane-hitbox,has-offset,cockpit,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"cockpit\"}",Health:360f,Attributes:[{Name:"generic.max_health",Base:360}]}

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

scoreboard players set @e[tag=plane-init] vp.w1-reload 0
scoreboard players set @e[tag=plane-init] vp.w2-reload 0
scoreboard players set @e[tag=plane-init] vp.w3-reload 0
scoreboard players set @e[tag=plane-init] vp.ammunition1 400
scoreboard players set @e[tag=plane-init] vp.ammunition2 2
scoreboard players set @e[tag=plane-init] vp.ammunition3 8
scoreboard players set @e[tag=plane-init] vp.max-ammo1 400
scoreboard players set @e[tag=plane-init] vp.max-ammo2 2
scoreboard players set @e[tag=plane-init] vp.max-ammo3 8
scoreboard players set @e[tag=plane-init] vp.max-ammo-rel1 220
scoreboard players set @e[tag=plane-init] vp.max-ammo-rel2 1200
scoreboard players set @e[tag=plane-init] vp.max-ammo-rel3 3600
scoreboard players set @e[tag=plane-init] vp.plane-weapon 1
scoreboard players set @e[tag=plane-init] vp.weapon-types 2

scoreboard players set @e[tag=plane-init] vp.max-engine 1

data modify storage minecraft:plane-datapack temporary.Pos set from entity @e[tag=plane-init,tag=f4u1-root,limit=1] Pos
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

scoreboard players set @e[tag=body,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetZ 0
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetZ 2700
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetX -3200
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetY -300
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetZ 900
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetX 3200
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetY -300
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetZ 900
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetX -1300
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetZ -3800
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetX 1300
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetZ -3800
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetY 800
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetZ -4200
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetY 700
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetZ 1100

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init] remove plane-init
