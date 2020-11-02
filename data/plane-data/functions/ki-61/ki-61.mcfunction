#実行条件無し

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[ki61-root,ki61,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,has-weapon1,has-weapon2,tier3,main-weapon1,main-weapon2],CustomName:"{\"text\":\"ki61\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256,NoGravity:0b,HandItems:[{id:"snowball",Count:1b,tag:{CustomModelData:1,weapons:["20mm gun","12.7mm gun","bomb"]}},{}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[ki61,plane-init,plane,entity-nohit,plane-seat],CustomName:"{\"text\":\"seat\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:donkey,Health:15f,Attributes:[{Name:generic.maxHealth,Base:15}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1,NoAI:1,Silent:1,ChestedHorse:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:1000000,ShowParticles:0b}],Tags:[ki61,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256,NoGravity:0b}
summon armor_stand ~ ~ ~ {Tags:["ki61-body","ki61",plane-init,plane,has-model,model-changeable,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:102,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[-12f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["ki61-hitbox","ki61",plane-init,plane,plane-hitbox,has-offset,body,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"body\"}",Health:120f,Attributes:[{Name:generic.maxHealth,Base:120}]}
summon armor_stand ~ ~ ~ {Tags:["ki61-hitbox","ki61",plane-init,plane,plane-hitbox,has-offset,engine,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"engine\"}",Health:110f,Attributes:[{Name:generic.maxHealth,Base:110}]}
summon armor_stand ~ ~ ~ {Tags:["ki61-hitbox","ki61",plane-init,plane,plane-hitbox,has-offset,aileron-r,aileron,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-right\"}",Health:110f,Attributes:[{Name:generic.maxHealth,Base:110}]}
summon armor_stand ~ ~ ~ {Tags:["ki61-hitbox","ki61",plane-init,plane,plane-hitbox,has-offset,aileron-l,aileron,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-left\"}",Health:110f,Attributes:[{Name:generic.maxHealth,Base:110}]}
summon armor_stand ~ ~ ~ {Tags:["ki61-hitbox","ki61",plane-init,plane,plane-hitbox,has-offset,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-right\"}",Health:100f,Attributes:[{Name:generic.maxHealth,Base:100}]}
summon armor_stand ~ ~ ~ {Tags:["ki61-hitbox","ki61",plane-init,plane,plane-hitbox,has-offset,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-left\"}",Health:100f,Attributes:[{Name:generic.maxHealth,Base:100}]}
summon armor_stand ~ ~ ~ {Tags:["ki61-hitbox","ki61",plane-init,plane,plane-hitbox,has-offset,radder,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"radder\"}",Health:100f,Attributes:[{Name:generic.maxHealth,Base:100}]}
summon armor_stand ~ ~ ~ {Tags:["ki61-hitbox","ki61",plane-init,plane,plane-hitbox,has-offset,cockpit,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"cockpit\"}",Health:160f,Attributes:[{Name:generic.maxHealth,Base:160}]}

#ID付与
execute as @e[tag=plane-init,tag=ki61-root,limit=1] store result score @s plane-id run data get entity @s UUIDMost 0.000000000233
scoreboard players operation @e[tag=plane-init,tag=ki61-root,limit=1,scores={plane-id=..-1}] plane-id *= #-1 Num
scoreboard players operation @e[tag=plane-init] plane-id = @e[tag=plane-init,tag=ki61-root,limit=1] plane-id
execute as @e[tag=plane-init] store result entity @s Attributes[{Name:"generic.knockbackResistance"}].Base double 1 run scoreboard players get @s plane-id

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
scoreboard players set @e[tag=plane-init,tag=ki61-root] rolling 0
scoreboard players set @e[tag=plane-init,tag=ki61-root] speed 0
scoreboard players set @e[tag=plane-init,tag=ki61-root] max-speed 19400
scoreboard players set @e[tag=plane-init,tag=ki61-root] cruise-speed 11500
scoreboard players set @e[tag=plane-init,tag=ki61-root] takeoff-speed 5800
scoreboard players set @e[tag=plane-init,tag=ki61-root] stall-speed 5600
scoreboard players set @e[tag=plane-init,tag=ki61-root] accelerate 60
scoreboard players set @e[tag=plane-init,tag=ki61-root] resistance 36
scoreboard players set @e[tag=plane-init,tag=ki61-root] energy-loss 14
scoreboard players set @e[tag=plane-init,tag=ki61-root] deaccelerate 54
scoreboard players set @e[tag=plane-init,tag=ki61-root] plpr-start-min 1600
scoreboard players set @e[tag=plane-init,tag=ki61-root] plpr-start-max 1700
scoreboard players set @e[tag=plane-init,tag=ki61-root] plpr-stop-min 1400
scoreboard players set @e[tag=plane-init,tag=ki61-root] plpr-stop-max 1500
scoreboard players set @e[tag=plane-init,tag=ki61-root] gear-retract-min 7100
scoreboard players set @e[tag=plane-init,tag=ki61-root] gear-retract-max 7300
scoreboard players set @e[tag=plane-init,tag=ki61-root] gear-pullout-min 6800
scoreboard players set @e[tag=plane-init,tag=ki61-root] gear-pullout-max 7000

scoreboard players set @e[tag=plane-init,tag=ki61-root] landing-pitch -1400
scoreboard players set @e[tag=plane-init,tag=ki61-root] AngX -1400
scoreboard players set @e[tag=plane-init,tag=ki61-root] AngY 0
scoreboard players set @e[tag=plane-init,tag=ki61-root] AngZ 0
scoreboard players set @e[tag=plane-init,tag=ki61-root] AngY-old 0
scoreboard players set @e[tag=plane-init,tag=ki61-root] pitch-speed 180
scoreboard players set @e[tag=plane-init,tag=ki61-root] yaw-speed 120
scoreboard players set @e[tag=plane-init,tag=ki61-root] roll-speed 560

scoreboard players set @e[tag=plane-init,tag=ki61-body] parking-udvm 102
scoreboard players set @e[tag=plane-init,tag=ki61-body] rolling-udvm 103
scoreboard players set @e[tag=plane-init,tag=ki61-body] flying-udvm 104

scoreboard players set @e[tag=plane-init,tag=ki61-root] w1-reload 0
scoreboard players set @e[tag=plane-init,tag=ki61-root] ammunition1 250
scoreboard players set @e[tag=plane-init,tag=ki61-root] max-ammunition1 250
scoreboard players set @e[tag=plane-init,tag=ki61-root] max-ammo-reload1 140
scoreboard players set @e[tag=plane-init,tag=ki61-root] w2-reload 0
scoreboard players set @e[tag=plane-init,tag=ki61-root] ammunition2 120
scoreboard players set @e[tag=plane-init,tag=ki61-root] max-ammunition2 120
scoreboard players set @e[tag=plane-init,tag=ki61-root] max-ammo-reload2 240
scoreboard players set @e[tag=plane-init,tag=ki61-root] w3-reload 0
scoreboard players set @e[tag=plane-init,tag=ki61-root] ammunition3 2
scoreboard players set @e[tag=plane-init,tag=ki61-root] max-ammunition3 2
scoreboard players set @e[tag=plane-init,tag=ki61-root] max-ammo-reload3 3600
scoreboard players set @e[tag=plane-init,tag=ki61-root] plane-weapon 1
scoreboard players set @e[tag=plane-init,tag=ki61-root] weapon-types 6

scoreboard players set @e[tag=plane-init,tag=ki61-root] max-engine 1

execute store result score @e[tag=plane-init,tag=ki61-root,limit=1] PosX run data get entity @e[tag=plane-init,tag=ki61-root,limit=1] Pos[0] 10000
execute store result score @e[tag=plane-init,tag=ki61-root,limit=1] PosY run data get entity @e[tag=plane-init,tag=ki61-root,limit=1] Pos[1] 10000
execute store result score @e[tag=plane-init,tag=ki61-root,limit=1] PosZ run data get entity @e[tag=plane-init,tag=ki61-root,limit=1] Pos[2] 10000

#hitboxのスコア設定
scoreboard players set @e[tag=body,tag=plane-init] offsetX 0
scoreboard players set @e[tag=body,tag=plane-init] offsetY 0
scoreboard players set @e[tag=body,tag=plane-init] offsetZ 0
scoreboard players set @e[tag=engine,tag=plane-init] offsetX 0
scoreboard players set @e[tag=engine,tag=plane-init] offsetY 0
scoreboard players set @e[tag=engine,tag=plane-init] offsetZ 2900
scoreboard players set @e[tag=aileron-r,tag=plane-init] offsetX -3000
scoreboard players set @e[tag=aileron-r,tag=plane-init] offsetY -400
scoreboard players set @e[tag=aileron-r,tag=plane-init] offsetZ 1400
scoreboard players set @e[tag=aileron-l,tag=plane-init] offsetX 3000
scoreboard players set @e[tag=aileron-l,tag=plane-init] offsetY -400
scoreboard players set @e[tag=aileron-l,tag=plane-init] offsetZ 1400
scoreboard players set @e[tag=elevator-r,tag=plane-init] offsetX -1000
scoreboard players set @e[tag=elevator-r,tag=plane-init] offsetY -100
scoreboard players set @e[tag=elevator-r,tag=plane-init] offsetZ -3500
scoreboard players set @e[tag=elevator-l,tag=plane-init] offsetX 1000
scoreboard players set @e[tag=elevator-l,tag=plane-init] offsetY -100
scoreboard players set @e[tag=elevator-l,tag=plane-init] offsetZ -3500
scoreboard players set @e[tag=radder,tag=plane-init] offsetX 0
scoreboard players set @e[tag=radder,tag=plane-init] offsetY 700
scoreboard players set @e[tag=radder,tag=plane-init] offsetZ -4300
scoreboard players set @e[tag=cockpit,tag=plane-init] offsetX 0
scoreboard players set @e[tag=cockpit,tag=plane-init] offsetY 700
scoreboard players set @e[tag=cockpit,tag=plane-init] offsetZ 700

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init] remove plane-init
