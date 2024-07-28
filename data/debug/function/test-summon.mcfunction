#実行条件無し

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0,Tags:[a6m-root,a6m,a6m-init,plane-root,plane,entity-nohit,has-weapon1,has-weapon2],CustomName:'{"text":"a6m"}',Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256,NoGravity:0b}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0,Tags:[a6m,a6m-init,plane,entity-nohit,plane-seat],CustomName:'{"text":"seat"}',Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:"donkey",Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1b,NoAI:1b,Silent:1b,ChestedHorse:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:[a6m,a6m-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256,NoGravity:0b}
summon armor_stand ~ ~ ~ {Tags:["a6m-body","a6m",a6m-init,plane,has-model,model-changeable,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:7,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[-12f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["a6m-hitbox","a6m",a6m-init,plane,plane-hitbox,has-offset,body,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:1b,CustomName:'{"text":"body"}',Health:80f,Attributes:[{id:"generic.max_health",Base:80d}]}
summon armor_stand ~ ~ ~ {Tags:["a6m-hitbox","a6m",a6m-init,plane,plane-hitbox,has-offset,engine,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:1b,CustomName:'{"text":"engine"}',Health:80f,Attributes:[{id:"generic.max_health",Base:80d}]}
summon armor_stand ~ ~ ~ {Tags:["a6m-hitbox","a6m",a6m-init,plane,plane-hitbox,has-offset,aileron-r,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:1b,CustomName:'{"text":"aileron-right"}',Health:80f,Attributes:[{id:"generic.max_health",Base:80d}]}
summon armor_stand ~ ~ ~ {Tags:["a6m-hitbox","a6m",a6m-init,plane,plane-hitbox,has-offset,aileron-l,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:1b,CustomName:'{"text":"aileron-left"}',Health:80f,Attributes:[{id:"generic.max_health",Base:80d}]}
summon armor_stand ~ ~ ~ {Tags:["a6m-hitbox","a6m",a6m-init,plane,plane-hitbox,has-offset,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:1b,CustomName:'{"text":"elevator-right"}',Health:80f,Attributes:[{id:"generic.max_health",Base:80d}]}
summon armor_stand ~ ~ ~ {Tags:["a6m-hitbox","a6m",a6m-init,plane,plane-hitbox,has-offset,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:1b,CustomName:'{"text":"elevator-left"}',Health:80f,Attributes:[{id:"generic.max_health",Base:80d}]}
summon armor_stand ~ ~ ~ {Tags:["a6m-hitbox","a6m",a6m-init,plane,plane-hitbox,has-offset,radder,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:1b,CustomName:'{"text":"radder"}',Health:80f,Attributes:[{id:"generic.max_health",Base:80d}]}

#ID付与
execute as @e[tag=a6m-init,tag=a6m-root,limit=1] store result score @s vp.plane-id run data get entity @s UUID[0]
scoreboard players operation @e[tag=a6m-init,tag=a6m-root,scores={vp.plane-id=..-1},limit=1] vp.plane-id *= #-1 vp.Num
scoreboard players operation @e[tag=a6m-init] vp.plane-id = @e[tag=a6m-init,tag=a6m-root,limit=1] vp.plane-id
execute as @e[tag=a6m-init] store result entity @s Attributes[{id:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s vp.plane-id

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.rolling 0
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.speed 0
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.accelerate 70
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.resistance 41
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.deaccelerate 93
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.max-speed 19600
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.cruise-speed 11500
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.takeoff-speed 5100
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.stall-speed 4900
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.prop-strt-min 1600
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.prop-strt-max 1700
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.prop-stop-min 1400
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.prop-stop-max 1500
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.gear-ret-min 6200
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.gear-ret-max 6400
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.gear-po-min 6300
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.gear-po-max 6100

scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.landing-pitch -1200
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.AngX -1250
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.AngY 0
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.AngZ 0
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.AngY-old 0
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.pitch-speed 200
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.yaw-speed 230
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.roll-speed 400

scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.parking-udvm 87
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.rolling-udvm 88
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.flying-udvm 89

scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.w1-cooltime 0
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.w2-cooltime 0
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.ammunition1 100
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.ammunition2 500
scoreboard players set @e[tag=a6m-init,tag=a6m-root] vp.curr-weapon 1

execute store result score @e[tag=a6m-init,tag=a6m-root,limit=1] vp.PosX run data get entity @e[tag=a6m-init,tag=a6m-root,limit=1] Pos[0] 10000
execute store result score @e[tag=a6m-init,tag=a6m-root,limit=1] vp.PosY run data get entity @e[tag=a6m-init,tag=a6m-root,limit=1] Pos[1] 10000
execute store result score @e[tag=a6m-init,tag=a6m-root,limit=1] vp.PosZ run data get entity @e[tag=a6m-init,tag=a6m-root,limit=1] Pos[2] 10000

#hitbocのスコア設定
scoreboard players set @e[tag=body,tag=a6m-init] vp.offsetX 0
scoreboard players set @e[tag=body,tag=a6m-init] vp.offsetY 0
scoreboard players set @e[tag=body,tag=a6m-init] vp.offsetZ 0
scoreboard players set @e[tag=engine,tag=a6m-init] vp.offsetX 0
scoreboard players set @e[tag=engine,tag=a6m-init] vp.offsetY -100
scoreboard players set @e[tag=engine,tag=a6m-init] vp.offsetZ -2000
scoreboard players set @e[tag=aileron-r,tag=a6m-init] vp.offsetX -3000
scoreboard players set @e[tag=aileron-r,tag=a6m-init] vp.offsetY 0
scoreboard players set @e[tag=aileron-r,tag=a6m-init] vp.offsetZ -100
scoreboard players set @e[tag=aileron-l,tag=a6m-init] vp.offsetX 3000
scoreboard players set @e[tag=aileron-l,tag=a6m-init] vp.offsetY 0
scoreboard players set @e[tag=aileron-l,tag=a6m-init] vp.offsetZ -100
scoreboard players set @e[tag=elevator-r,tag=a6m-init] vp.offsetX -1500
scoreboard players set @e[tag=elevator-r,tag=a6m-init] vp.offsetY -250
scoreboard players set @e[tag=elevator-r,tag=a6m-init] vp.offsetZ 4400
scoreboard players set @e[tag=elevator-l,tag=a6m-init] vp.offsetX 1500
scoreboard players set @e[tag=elevator-l,tag=a6m-init] vp.offsetY -250
scoreboard players set @e[tag=elevator-l,tag=a6m-init] vp.offsetZ 4400
scoreboard players set @e[tag=radder,tag=a6m-init] vp.offsetX -80
scoreboard players set @e[tag=radder,tag=a6m-init] vp.offsetY -1000
scoreboard players set @e[tag=radder,tag=a6m-init] vp.offsetZ 4900


#プレイヤーと同じAngYにする
execute at @e[tag=a6m-init,tag=a6m-root,limit=1] store result score @p vp.reg1 run data get entity @p Rotation[0] 100
scoreboard players remove @s[scores={vp.reg1=18100..}] vp.reg1 36000
scoreboard players add @s[scores={vp.reg1=..-18100}] vp.reg1 36000
execute at @e[tag=a6m-init,tag=a6m-root,limit=1] run scoreboard players operation @e[tag=a6m-init,tag=a6m-root,limit=1] vp.AngY = @p vp.reg1

#処理終了
tag @e[tag=a6m-init] remove a6m-init
