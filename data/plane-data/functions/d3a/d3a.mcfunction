#実行条件無し

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[d3a-root,d3a,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,bombed,normal,250kg,60kg,has-weapon1,has-weapon2,has-weapon3,main-weapon1,main-weapon2,tier1],CustomName:"{\"text\":\"d3a\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256,NoGravity:0b,HandItems:[{id:"snowball",Count:1b,tag:{CustomModelData:1,weapons:["7.7mm gun","bomb"]}},{}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[d3a,plane-init,plane,entity-nohit,plane-seat],CustomName:"{\"text\":\"seat\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:donkey,Health:6f,Attributes:[{Name:generic.maxHealth,Base:6}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1,NoAI:1,Silent:1,ChestedHorse:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:1000000,ShowParticles:0b}],Tags:[d3a,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256,NoGravity:0b}
summon armor_stand ~ ~ ~ {Tags:["d3a-body","d3a",plane-init,plane,has-model,model-changeable,plane-parts,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:73,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["d3a-rightwing","d3a",plane-init,plane,has-model,plane-parts,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:75,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}

#hitbox召喚
summon armor_stand ~ ~ ~ {Tags:["d3a-hitbox","d3a",plane-init,has-offset,plane,plane-hitbox,body,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"body\"}",Health:50f,Attributes:[{Name:generic.maxHealth,Base:50}]}
summon armor_stand ~ ~ ~ {Tags:["d3a-hitbox","d3a",plane-init,has-offset,plane,plane-hitbox,engine,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"engine\"}",Health:50f,Attributes:[{Name:generic.maxHealth,Base:50}]}
summon armor_stand ~ ~ ~ {Tags:["d3a-hitbox","d3a",plane-init,has-offset,plane,plane-hitbox,aileron-r,aileron,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-right\"}",Health:50f,Attributes:[{Name:generic.maxHealth,Base:50}]}
summon armor_stand ~ ~ ~ {Tags:["d3a-hitbox","d3a",plane-init,has-offset,plane,plane-hitbox,aileron-l,aileron,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-left\"}",Health:50f,Attributes:[{Name:generic.maxHealth,Base:50}]}
summon armor_stand ~ ~ ~ {Tags:["d3a-hitbox","d3a",plane-init,has-offset,plane,plane-hitbox,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-right\"}",Health:40f,Attributes:[{Name:generic.maxHealth,Base:40}]}
summon armor_stand ~ ~ ~ {Tags:["d3a-hitbox","d3a",plane-init,has-offset,plane,plane-hitbox,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-left\"}",Health:40f,Attributes:[{Name:generic.maxHealth,Base:40}]}
summon armor_stand ~ ~ ~ {Tags:["d3a-hitbox","d3a",plane-init,has-offset,plane,plane-hitbox,radder,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"radder\"}",Health:40f,Attributes:[{Name:generic.maxHealth,Base:40}]}
summon armor_stand ~ ~ ~ {Tags:["d3a-hitbox","d3a",plane-init,has-offset,plane,plane-hitbox,cockpit,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"cockpit\"}",Health:50f,Attributes:[{Name:generic.maxHealth,Base:50}]}

#ID付与
execute as @e[tag=plane-init,tag=d3a-root,limit=1] store result score @s plane-id run data get entity @s UUIDMost 0.000000000233
scoreboard players operation @e[tag=plane-init,tag=d3a-root,limit=1,scores={plane-id=..-1}] plane-id *= #-1 Num
scoreboard players operation @e[tag=plane-init] plane-id = @e[tag=plane-init,tag=d3a-root,limit=1] plane-id
execute as @e[tag=plane-init] store result entity @s Attributes[{Name:"generic.knockbackResistance"}].Base double 1 run scoreboard players get @s plane-id

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
scoreboard players set @e[tag=plane-init,tag=d3a-root] speed 0
scoreboard players set @e[tag=plane-init,tag=d3a-root] rolling 0
scoreboard players set @e[tag=plane-init,tag=d3a-root] accelerate 45
scoreboard players set @e[tag=plane-init,tag=d3a-root] resistance 28
scoreboard players set @e[tag=plane-init,tag=d3a-root] energy-loss 10
scoreboard players set @e[tag=plane-init,tag=d3a-root] deaccelerate 65

scoreboard players set @e[tag=plane-init,tag=d3a-root] max-speed 13200
scoreboard players set @e[tag=plane-init,tag=d3a-root] cruise-speed 8300
scoreboard players set @e[tag=plane-init,tag=d3a-root] takeoff-speed 3800
scoreboard players set @e[tag=plane-init,tag=d3a-root] stall-speed 3600
scoreboard players set @e[tag=plane-init,tag=d3a-root] plpr-start-min 1500
scoreboard players set @e[tag=plane-init,tag=d3a-root] plpr-start-max 1530
scoreboard players set @e[tag=plane-init,tag=d3a-root] plpr-stop-min 1400
scoreboard players set @e[tag=plane-init,tag=d3a-root] plpr-stop-max 1430
scoreboard players set @e[tag=plane-init,tag=d3a-root] gear-retract-min 6100
scoreboard players set @e[tag=plane-init,tag=d3a-root] gear-retract-max 6300
scoreboard players set @e[tag=plane-init,tag=d3a-root] gear-pullout-min 5800
scoreboard players set @e[tag=plane-init,tag=d3a-root] gear-pullout-max 6000

scoreboard players set @e[tag=plane-init,tag=d3a-root] landing-pitch -1250
scoreboard players set @e[tag=plane-init,tag=d3a-root] AngX -1250
scoreboard players set @e[tag=plane-init,tag=d3a-root] AngY 0
scoreboard players set @e[tag=plane-init,tag=d3a-root] AngZ 0
scoreboard players set @e[tag=plane-init,tag=d3a-root] AngY-old 0
scoreboard players set @e[tag=plane-init,tag=d3a-root] pitch-speed 130
scoreboard players set @e[tag=plane-init,tag=d3a-root] yaw-speed 100
scoreboard players set @e[tag=plane-init,tag=d3a-root] roll-speed 390

scoreboard players set @e[tag=plane-init,tag=d3a-body] parking-udvm 73
scoreboard players set @e[tag=plane-init,tag=d3a-body] rolling-udvm 74
scoreboard players set @e[tag=plane-init,tag=d3a-body] flying-udvm 74

scoreboard players set @e[tag=plane-init,tag=d3a-root] w1-reload 0
scoreboard players set @e[tag=plane-init,tag=d3a-root] w2-reload 0
scoreboard players set @e[tag=plane-init,tag=d3a-root] w3-reload 0
scoreboard players set @e[tag=plane-init,tag=d3a-root] ammunition1 500
scoreboard players set @e[tag=plane-init,tag=d3a-root] ammunition2 3
scoreboard players set @e[tag=plane-init,tag=d3a-root] ammunition3 500
scoreboard players set @e[tag=plane-init,tag=d3a-root] max-ammunition1 500
scoreboard players set @e[tag=plane-init,tag=d3a-root] max-ammunition2 3
scoreboard players set @e[tag=plane-init,tag=d3a-root] max-ammunition3 500
scoreboard players set @e[tag=plane-init,tag=d3a-root] max-ammo-reload1 140
scoreboard players set @e[tag=plane-init,tag=d3a-root] max-ammo-reload2 500
scoreboard players set @e[tag=plane-init,tag=d3a-root] max-ammo-reload3 140
scoreboard players set @e[tag=plane-init,tag=d3a-root] plane-weapon 1
scoreboard players set @e[tag=plane-init,tag=d3a-root] weapon-types 6

scoreboard players set @e[tag=plane-init,tag=d3a-root] max-engine 1

execute store result score @e[tag=plane-init,tag=d3a-root,limit=1] PosX run data get entity @e[tag=plane-init,tag=d3a-root,limit=1] Pos[0] 10000
execute store result score @e[tag=plane-init,tag=d3a-root,limit=1] PosY run data get entity @e[tag=plane-init,tag=d3a-root,limit=1] Pos[1] 10000
execute store result score @e[tag=plane-init,tag=d3a-root,limit=1] PosZ run data get entity @e[tag=plane-init,tag=d3a-root,limit=1] Pos[2] 10000

#hitboxのスコア設定
scoreboard players set @e[tag=body,tag=plane-init] offsetX 0
scoreboard players set @e[tag=body,tag=plane-init] offsetY 0
scoreboard players set @e[tag=body,tag=plane-init] offsetZ 0
scoreboard players set @e[tag=engine,tag=plane-init] offsetX 0
scoreboard players set @e[tag=engine,tag=plane-init] offsetY 0
scoreboard players set @e[tag=engine,tag=plane-init] offsetZ 3000
scoreboard players set @e[tag=aileron-r,tag=plane-init] offsetX -4000
scoreboard players set @e[tag=aileron-r,tag=plane-init] offsetY -100
scoreboard players set @e[tag=aileron-r,tag=plane-init] offsetZ 1000
scoreboard players set @e[tag=aileron-l,tag=plane-init] offsetX 4000
scoreboard players set @e[tag=aileron-l,tag=plane-init] offsetY -100
scoreboard players set @e[tag=aileron-l,tag=plane-init] offsetZ 1000
scoreboard players set @e[tag=elevator-r,tag=plane-init] offsetX -1200
scoreboard players set @e[tag=elevator-r,tag=plane-init] offsetY 100
scoreboard players set @e[tag=elevator-r,tag=plane-init] offsetZ -4900
scoreboard players set @e[tag=elevator-l,tag=plane-init] offsetX 1200
scoreboard players set @e[tag=elevator-l,tag=plane-init] offsetY 100
scoreboard players set @e[tag=elevator-l,tag=plane-init] offsetZ -4900
scoreboard players set @e[tag=radder,tag=plane-init] offsetX 0
scoreboard players set @e[tag=radder,tag=plane-init] offsetY 1100
scoreboard players set @e[tag=radder,tag=plane-init] offsetZ -4900
scoreboard players set @e[tag=cockpit,tag=plane-init] offsetX 0
scoreboard players set @e[tag=cockpit,tag=plane-init] offsetY 900
scoreboard players set @e[tag=cockpit,tag=plane-init] offsetZ 900

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init] remove plane-init

