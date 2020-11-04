#実行条件無し

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[a6m-root,a6m,a6m-init,plane-root,plane,entity-nohit,has-weapon1,has-weapon2],CustomName:"{\"text\":\"a6m\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256,NoGravity:0b}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[a6m,a6m-init,plane,entity-nohit,plane-seat],CustomName:"{\"text\":\"seat\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:donkey,Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1,NoAI:1,Silent:1,ChestedHorse:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:1000000,ShowParticles:0b}],Tags:[a6m,a6m-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256,NoGravity:0b}
summon armor_stand ~ ~ ~ {Tags:["a6m-body","a6m",a6m-init,plane,has-model,model-changeable,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:7,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[-12f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["a6m-hitbox","a6m",a6m-init,plane,plane-hitbox,has-offset,body,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"body\"}",Health:80f,Attributes:[{Name:generic.maxHealth,Base:80}]}
summon armor_stand ~ ~ ~ {Tags:["a6m-hitbox","a6m",a6m-init,plane,plane-hitbox,has-offset,engine,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"engine\"}",Health:80f,Attributes:[{Name:generic.maxHealth,Base:80}]}
summon armor_stand ~ ~ ~ {Tags:["a6m-hitbox","a6m",a6m-init,plane,plane-hitbox,has-offset,aileron-r,aileron,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-right\"}",Health:80f,Attributes:[{Name:generic.maxHealth,Base:80}]}
summon armor_stand ~ ~ ~ {Tags:["a6m-hitbox","a6m",a6m-init,plane,plane-hitbox,has-offset,aileron-l,aileron,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-left\"}",Health:80f,Attributes:[{Name:generic.maxHealth,Base:80}]}
summon armor_stand ~ ~ ~ {Tags:["a6m-hitbox","a6m",a6m-init,plane,plane-hitbox,has-offset,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-right\"}",Health:80f,Attributes:[{Name:generic.maxHealth,Base:80}]}
summon armor_stand ~ ~ ~ {Tags:["a6m-hitbox","a6m",a6m-init,plane,plane-hitbox,has-offset,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-left\"}",Health:80f,Attributes:[{Name:generic.maxHealth,Base:80}]}
summon armor_stand ~ ~ ~ {Tags:["a6m-hitbox","a6m",a6m-init,plane,plane-hitbox,has-offset,radder,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"radder\"}",Health:80f,Attributes:[{Name:generic.maxHealth,Base:80}]}

#ID付与
execute as @e[tag=a6m-init,tag=a6m-root,limit=1] store result score @s plane-id run data get entity @s UUID[0]
scoreboard players operation @e[tag=a6m-init,tag=a6m-root,limit=1,scores={plane-id=..-1}] plane-id *= #-1 Num
scoreboard players operation @e[tag=a6m-init] plane-id = @e[tag=a6m-init,tag=a6m-root,limit=1] plane-id
execute as @e[tag=a6m-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s plane-id

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
scoreboard players set @e[tag=a6m-init,tag=a6m-root] rolling 0
scoreboard players set @e[tag=a6m-init,tag=a6m-root] speed 0
scoreboard players set @e[tag=a6m-init,tag=a6m-root] accelerate 70
scoreboard players set @e[tag=a6m-init,tag=a6m-root] resistance 41
scoreboard players set @e[tag=a6m-init,tag=a6m-root] deaccelerate 93
scoreboard players set @e[tag=a6m-init,tag=a6m-root] max-speed 19600
scoreboard players set @e[tag=a6m-init,tag=a6m-root] cruise-speed 11500
scoreboard players set @e[tag=a6m-init,tag=a6m-root] takeoff-speed 5100
scoreboard players set @e[tag=a6m-init,tag=a6m-root] stall-speed 4900
scoreboard players set @e[tag=a6m-init,tag=a6m-root] plpr-start-min 1600
scoreboard players set @e[tag=a6m-init,tag=a6m-root] plpr-start-max 1700
scoreboard players set @e[tag=a6m-init,tag=a6m-root] plpr-stop-min 1400
scoreboard players set @e[tag=a6m-init,tag=a6m-root] plpr-stop-max 1500
scoreboard players set @e[tag=a6m-init,tag=a6m-root] gear-retract-min 6200
scoreboard players set @e[tag=a6m-init,tag=a6m-root] gear-retract-max 6400
scoreboard players set @e[tag=a6m-init,tag=a6m-root] gear-pullout-min 6300
scoreboard players set @e[tag=a6m-init,tag=a6m-root] gear-pullout-max 6100

scoreboard players set @e[tag=a6m-init,tag=a6m-root] landing-pitch -1200
scoreboard players set @e[tag=a6m-init,tag=a6m-root] AngX -1250
scoreboard players set @e[tag=a6m-init,tag=a6m-root] AngY 0
scoreboard players set @e[tag=a6m-init,tag=a6m-root] AngZ 0
scoreboard players set @e[tag=a6m-init,tag=a6m-root] AngY-old 0
scoreboard players set @e[tag=a6m-init,tag=a6m-root] pitch-speed 200
scoreboard players set @e[tag=a6m-init,tag=a6m-root] yaw-speed 230
scoreboard players set @e[tag=a6m-init,tag=a6m-root] roll-speed 400

scoreboard players set @e[tag=a6m-init,tag=a6m-root] parking-udvm 87
scoreboard players set @e[tag=a6m-init,tag=a6m-root] rolling-udvm 88
scoreboard players set @e[tag=a6m-init,tag=a6m-root] flying-udvm 89

scoreboard players set @e[tag=a6m-init,tag=a6m-root] w1-reload 0
scoreboard players set @e[tag=a6m-init,tag=a6m-root] w2-reload 0
scoreboard players set @e[tag=a6m-init,tag=a6m-root] ammunition1 100
scoreboard players set @e[tag=a6m-init,tag=a6m-root] ammunition2 500
scoreboard players set @e[tag=a6m-init,tag=a6m-root] plane-weapon 1

execute store result score @e[tag=a6m-init,tag=a6m-root,limit=1] PosX run data get entity @e[tag=a6m-init,tag=a6m-root,limit=1] Pos[0] 10000
execute store result score @e[tag=a6m-init,tag=a6m-root,limit=1] PosY run data get entity @e[tag=a6m-init,tag=a6m-root,limit=1] Pos[1] 10000
execute store result score @e[tag=a6m-init,tag=a6m-root,limit=1] PosZ run data get entity @e[tag=a6m-init,tag=a6m-root,limit=1] Pos[2] 10000

#hitbocのスコア設定
scoreboard players set @e[tag=body,tag=a6m-init] offsetX 0
scoreboard players set @e[tag=body,tag=a6m-init] offsetY 0
scoreboard players set @e[tag=body,tag=a6m-init] offsetZ 0
scoreboard players set @e[tag=engine,tag=a6m-init] offsetX 0
scoreboard players set @e[tag=engine,tag=a6m-init] offsetY -100
scoreboard players set @e[tag=engine,tag=a6m-init] offsetZ -2000
scoreboard players set @e[tag=aileron-r,tag=a6m-init] offsetX -3000
scoreboard players set @e[tag=aileron-r,tag=a6m-init] offsetY 0
scoreboard players set @e[tag=aileron-r,tag=a6m-init] offsetZ -100
scoreboard players set @e[tag=aileron-l,tag=a6m-init] offsetX 3000
scoreboard players set @e[tag=aileron-l,tag=a6m-init] offsetY 0
scoreboard players set @e[tag=aileron-l,tag=a6m-init] offsetZ -100
scoreboard players set @e[tag=elevator-r,tag=a6m-init] offsetX -1500
scoreboard players set @e[tag=elevator-r,tag=a6m-init] offsetY -250
scoreboard players set @e[tag=elevator-r,tag=a6m-init] offsetZ 4400
scoreboard players set @e[tag=elevator-l,tag=a6m-init] offsetX 1500
scoreboard players set @e[tag=elevator-l,tag=a6m-init] offsetY -250
scoreboard players set @e[tag=elevator-l,tag=a6m-init] offsetZ 4400
scoreboard players set @e[tag=radder,tag=a6m-init] offsetX -80
scoreboard players set @e[tag=radder,tag=a6m-init] offsetY -1000
scoreboard players set @e[tag=radder,tag=a6m-init] offsetZ 4900


#プレイヤーと同じAngYにする
execute at @e[tag=a6m-init,tag=a6m-root,limit=1] store result score @p reg1 run data get entity @p Rotation[0] 100
scoreboard players remove @s[scores={reg1=18100..}] reg1 36000
scoreboard players add @s[scores={reg1=..-18100}] reg1 36000
execute at @e[tag=a6m-init,tag=a6m-root,limit=1] run scoreboard players operation @e[tag=a6m-init,tag=a6m-root,limit=1] AngY = @p reg1

#処理終了
tag @e[tag=a6m-init] remove a6m-init
