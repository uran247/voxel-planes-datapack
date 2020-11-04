#実行条件無し

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[re2005-root,re2005,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,has-weapon1,has-weapon2,main-weapon1,main-weapon2,tier3],CustomName:"{\"text\":\"re2005\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256,NoGravity:0b,HandItems:[{id:"snowball",Count:1b,tag:{CustomModelData:1,weapons:["20mm gun","bomb"]}},{}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[re2005,plane-init,plane,entity-nohit,plane-seat],CustomName:"{\"text\":\"seat\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:donkey,Health:12f,Attributes:[{Name:generic.maxHealth,Base:12}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1,NoAI:1,Silent:1,ChestedHorse:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:1000000,ShowParticles:0b}],Tags:[re2005,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256,NoGravity:0b}
summon armor_stand ~ ~ ~ {Tags:["re2005-body","re2005",plane-init,plane,has-model,model-changeable,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:119,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[-12f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["re2005-hitbox","re2005",plane-init,plane,plane-hitbox,has-offset,body,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"body\"}",Health:110f,Attributes:[{Name:generic.maxHealth,Base:110}]}
summon armor_stand ~ ~ ~ {Tags:["re2005-hitbox","re2005",plane-init,plane,plane-hitbox,has-offset,engine,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"engine\"}",Health:100f,Attributes:[{Name:generic.maxHealth,Base:100}]}
summon armor_stand ~ ~ ~ {Tags:["re2005-hitbox","re2005",plane-init,plane,plane-hitbox,has-offset,aileron-r,aileron,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-right\"}",Health:90f,Attributes:[{Name:generic.maxHealth,Base:90}]}
summon armor_stand ~ ~ ~ {Tags:["re2005-hitbox","re2005",plane-init,plane,plane-hitbox,has-offset,aileron-l,aileron,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-left\"}",Health:90f,Attributes:[{Name:generic.maxHealth,Base:90}]}
summon armor_stand ~ ~ ~ {Tags:["re2005-hitbox","re2005",plane-init,plane,plane-hitbox,has-offset,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-right\"}",Health:70f,Attributes:[{Name:generic.maxHealth,Base:70}]}
summon armor_stand ~ ~ ~ {Tags:["re2005-hitbox","re2005",plane-init,plane,plane-hitbox,has-offset,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-left\"}",Health:70f,Attributes:[{Name:generic.maxHealth,Base:70}]}
summon armor_stand ~ ~ ~ {Tags:["re2005-hitbox","re2005",plane-init,plane,plane-hitbox,has-offset,radder,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"radder\"}",Health:70f,Attributes:[{Name:generic.maxHealth,Base:70}]}
summon armor_stand ~ ~ ~ {Tags:["re2005-hitbox","re2005",plane-init,plane,plane-hitbox,has-offset,cockpit,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"cockpit\"}",Health:120f,Attributes:[{Name:generic.maxHealth,Base:120}]}

#ID付与
execute as @e[tag=plane-init,tag=re2005-root,limit=1] store result score @s plane-id run data get entity @s UUID[0]
scoreboard players operation @e[tag=plane-init,tag=re2005-root,limit=1,scores={plane-id=..-1}] plane-id *= #-1 Num
scoreboard players operation @e[tag=plane-init] plane-id = @e[tag=plane-init,tag=re2005-root,limit=1] plane-id
execute as @e[tag=plane-init] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get @s plane-id

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
scoreboard players set @e[tag=plane-init,tag=re2005-root] rolling 0
scoreboard players set @e[tag=plane-init,tag=re2005-root] speed 0
scoreboard players set @e[tag=plane-init,tag=re2005-root] accelerate 62
scoreboard players set @e[tag=plane-init,tag=re2005-root] resistance 35
scoreboard players set @e[tag=plane-init,tag=re2005-root] energy-loss 14
scoreboard players set @e[tag=plane-init,tag=re2005-root] deaccelerate 74
scoreboard players set @e[tag=plane-init,tag=re2005-root] max-speed 22400
scoreboard players set @e[tag=plane-init,tag=re2005-root] cruise-speed 12800
scoreboard players set @e[tag=plane-init,tag=re2005-root] takeoff-speed 5400
scoreboard players set @e[tag=plane-init,tag=re2005-root] stall-speed 5200
scoreboard players set @e[tag=plane-init,tag=re2005-root] plpr-start-min 1600
scoreboard players set @e[tag=plane-init,tag=re2005-root] plpr-start-max 1700
scoreboard players set @e[tag=plane-init,tag=re2005-root] plpr-stop-min 1400
scoreboard players set @e[tag=plane-init,tag=re2005-root] plpr-stop-max 1500
scoreboard players set @e[tag=plane-init,tag=re2005-root] gear-retract-min 6700
scoreboard players set @e[tag=plane-init,tag=re2005-root] gear-retract-max 6900
scoreboard players set @e[tag=plane-init,tag=re2005-root] gear-pullout-min 6400
scoreboard players set @e[tag=plane-init,tag=re2005-root] gear-pullout-max 6600

scoreboard players set @e[tag=plane-init,tag=re2005-root] landing-pitch -1350
scoreboard players set @e[tag=plane-init,tag=re2005-root] AngX -1350
scoreboard players set @e[tag=plane-init,tag=re2005-root] AngY 0
scoreboard players set @e[tag=plane-init,tag=re2005-root] AngZ 0
scoreboard players set @e[tag=plane-init,tag=re2005-root] AngY-old 0
scoreboard players set @e[tag=plane-init,tag=re2005-root] pitch-speed 195
scoreboard players set @e[tag=plane-init,tag=re2005-root] yaw-speed 130
scoreboard players set @e[tag=plane-init,tag=re2005-root] roll-speed 600

scoreboard players set @e[tag=plane-init,tag=re2005-body] parking-udvm 119
scoreboard players set @e[tag=plane-init,tag=re2005-body] rolling-udvm 120
scoreboard players set @e[tag=plane-init,tag=re2005-body] flying-udvm 121

scoreboard players set @e[tag=plane-init,tag=re2005-root] w1-reload 0
scoreboard players set @e[tag=plane-init,tag=re2005-root] ammunition1 225
scoreboard players set @e[tag=plane-init,tag=re2005-root] max-ammunition1 225
scoreboard players set @e[tag=plane-init,tag=re2005-root] max-ammo-reload1 280
scoreboard players set @e[tag=plane-init,tag=re2005-root] w2-reload 0
scoreboard players set @e[tag=plane-init,tag=re2005-root] ammunition2 2
scoreboard players set @e[tag=plane-init,tag=re2005-root] max-ammunition2 2
scoreboard players set @e[tag=plane-init,tag=re2005-root] max-ammo-reload2 3600
scoreboard players set @e[tag=plane-init,tag=re2005-root] plane-weapon 1
scoreboard players set @e[tag=plane-init,tag=re2005-root] weapon-types 2

scoreboard players set @e[tag=plane-init,tag=re2005-root] max-engine 1

execute store result score @e[tag=plane-init,tag=re2005-root,limit=1] PosX run data get entity @e[tag=plane-init,tag=re2005-root,limit=1] Pos[0] 10000
execute store result score @e[tag=plane-init,tag=re2005-root,limit=1] PosY run data get entity @e[tag=plane-init,tag=re2005-root,limit=1] Pos[1] 10000
execute store result score @e[tag=plane-init,tag=re2005-root,limit=1] PosZ run data get entity @e[tag=plane-init,tag=re2005-root,limit=1] Pos[2] 10000

#hitboxのスコア設定
scoreboard players set @e[tag=body,tag=plane-init] offsetX 0
scoreboard players set @e[tag=body,tag=plane-init] offsetY 0
scoreboard players set @e[tag=body,tag=plane-init] offsetZ 0
scoreboard players set @e[tag=engine,tag=plane-init] offsetX 0
scoreboard players set @e[tag=engine,tag=plane-init] offsetY 0
scoreboard players set @e[tag=engine,tag=plane-init] offsetZ 2700
scoreboard players set @e[tag=aileron-r,tag=plane-init] offsetX -3200
scoreboard players set @e[tag=aileron-r,tag=plane-init] offsetY -300
scoreboard players set @e[tag=aileron-r,tag=plane-init] offsetZ 900
scoreboard players set @e[tag=aileron-l,tag=plane-init] offsetX 3200
scoreboard players set @e[tag=aileron-l,tag=plane-init] offsetY -300
scoreboard players set @e[tag=aileron-l,tag=plane-init] offsetZ 900
scoreboard players set @e[tag=elevator-r,tag=plane-init] offsetX -1300
scoreboard players set @e[tag=elevator-r,tag=plane-init] offsetY 0
scoreboard players set @e[tag=elevator-r,tag=plane-init] offsetZ -3800
scoreboard players set @e[tag=elevator-l,tag=plane-init] offsetX 1300
scoreboard players set @e[tag=elevator-l,tag=plane-init] offsetY 0
scoreboard players set @e[tag=elevator-l,tag=plane-init] offsetZ -3800
scoreboard players set @e[tag=radder,tag=plane-init] offsetX 0
scoreboard players set @e[tag=radder,tag=plane-init] offsetY 800
scoreboard players set @e[tag=radder,tag=plane-init] offsetZ -4200
scoreboard players set @e[tag=cockpit,tag=plane-init] offsetX 0
scoreboard players set @e[tag=cockpit,tag=plane-init] offsetY 700
scoreboard players set @e[tag=cockpit,tag=plane-init] offsetZ 1100

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init] remove plane-init
