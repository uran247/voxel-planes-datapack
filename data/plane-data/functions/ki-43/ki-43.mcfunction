#実行条件無し

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[ki43-root,ki43,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,"7p7mm",has-weapon1,tier1,main-weapon1],CustomName:"{\"text\":\"ki43\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256,NoGravity:0b,HandItems:[{id:"snowball",Count:1b,tag:{CustomModelData:1,weapons:["7.7mm gun"]}},{}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[ki43,plane-init,plane,entity-nohit,plane-seat],CustomName:"{\"text\":\"seat\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:donkey,Health:8f,Attributes:[{Name:generic.maxHealth,Base:8}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1,NoAI:1,Silent:1,ChestedHorse:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:1000000,ShowParticles:0b}],Tags:[ki43,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256,NoGravity:0b}
summon armor_stand ~ ~ ~ {Tags:["ki43-body","ki43",plane-init,plane,has-model,model-changeable,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:67,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[-12f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["ki43-hitbox","ki43",plane-init,plane,plane-hitbox,has-offset,body,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"body\"}",Health:60f,Attributes:[{Name:generic.maxHealth,Base:60}]}
summon armor_stand ~ ~ ~ {Tags:["ki43-hitbox","ki43",plane-init,plane,plane-hitbox,has-offset,engine,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"engine\"}",Health:60f,Attributes:[{Name:generic.maxHealth,Base:60}]}
summon armor_stand ~ ~ ~ {Tags:["ki43-hitbox","ki43",plane-init,plane,plane-hitbox,has-offset,aileron-r,aileron,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-right\"}",Health:60f,Attributes:[{Name:generic.maxHealth,Base:60}]}
summon armor_stand ~ ~ ~ {Tags:["ki43-hitbox","ki43",plane-init,plane,plane-hitbox,has-offset,aileron-l,aileron,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-left\"}",Health:60f,Attributes:[{Name:generic.maxHealth,Base:60}]}
summon armor_stand ~ ~ ~ {Tags:["ki43-hitbox","ki43",plane-init,plane,plane-hitbox,has-offset,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-right\"}",Health:50f,Attributes:[{Name:generic.maxHealth,Base:50}]}
summon armor_stand ~ ~ ~ {Tags:["ki43-hitbox","ki43",plane-init,plane,plane-hitbox,has-offset,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-left\"}",Health:50f,Attributes:[{Name:generic.maxHealth,Base:50}]}
summon armor_stand ~ ~ ~ {Tags:["ki43-hitbox","ki43",plane-init,plane,plane-hitbox,has-offset,radder,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"radder\"}",Health:50f,Attributes:[{Name:generic.maxHealth,Base:50}]}
summon armor_stand ~ ~ ~ {Tags:["ki43-hitbox","ki43",plane-init,plane,plane-hitbox,has-offset,cockpit,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"cockpit\"}",Health:80f,Attributes:[{Name:generic.maxHealth,Base:80}]}

#武装種別変更
execute if entity @e[tag=ki43-spawner,distance=..0.1,tag=12p7mm] run tag @e[tag=plane-init,tag=ki43-root] remove 7p7mm
execute if entity @e[tag=ki43-spawner,distance=..0.1,tag=12p7mm] run tag @e[tag=plane-init,tag=ki43-root] add 12p7mm
execute if entity @e[tag=ki43-spawner,distance=..0.1,tag=12p7mm] run data modify entity @e[tag=plane-init,tag=ki43-root,limit=1] HandItems[0].tag.weapons[0] set value "12.7mm gun"

#ID付与
execute as @e[tag=plane-init,tag=ki43-root,limit=1] store result score @s plane-id run data get entity @s UUIDMost 0.000000000233
scoreboard players operation @e[tag=plane-init,tag=ki43-root,limit=1,scores={plane-id=..-1}] plane-id *= #-1 Num
scoreboard players operation @e[tag=plane-init] plane-id = @e[tag=plane-init,tag=ki43-root,limit=1] plane-id
execute as @e[tag=plane-init] store result entity @s Attributes[{Name:"generic.knockbackResistance"}].Base double 1 run scoreboard players get @s plane-id

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
scoreboard players set @e[tag=plane-init,tag=ki43-root] rolling 0
scoreboard players set @e[tag=plane-init,tag=ki43-root] speed 0
scoreboard players set @e[tag=plane-init,tag=ki43-root] max-speed 17200
scoreboard players set @e[tag=plane-init,tag=ki43-root] cruise-speed 12300
scoreboard players set @e[tag=plane-init,tag=ki43-root] takeoff-speed 3800
scoreboard players set @e[tag=plane-init,tag=ki43-root] stall-speed 3600
scoreboard players set @e[tag=plane-init,tag=ki43-root] accelerate 68
scoreboard players set @e[tag=plane-init,tag=ki43-root] resistance 49
scoreboard players set @e[tag=plane-init,tag=ki43-root] energy-loss 11
scoreboard players set @e[tag=plane-init,tag=ki43-root] deaccelerate 62
scoreboard players set @e[tag=plane-init,tag=ki43-root] plpr-start-min 1600
scoreboard players set @e[tag=plane-init,tag=ki43-root] plpr-start-max 1700
scoreboard players set @e[tag=plane-init,tag=ki43-root] plpr-stop-min 1400
scoreboard players set @e[tag=plane-init,tag=ki43-root] plpr-stop-max 1500
scoreboard players set @e[tag=plane-init,tag=ki43-root] gear-retract-min 5600
scoreboard players set @e[tag=plane-init,tag=ki43-root] gear-retract-max 5800
scoreboard players set @e[tag=plane-init,tag=ki43-root] gear-pullout-min 5300
scoreboard players set @e[tag=plane-init,tag=ki43-root] gear-pullout-max 5500

scoreboard players set @e[tag=plane-init,tag=ki43-root] landing-pitch -1250
scoreboard players set @e[tag=plane-init,tag=ki43-root] AngX -1250
scoreboard players set @e[tag=plane-init,tag=ki43-root] AngY 0
scoreboard players set @e[tag=plane-init,tag=ki43-root] AngZ 0
scoreboard players set @e[tag=plane-init,tag=ki43-root] AngY-old 0
scoreboard players set @e[tag=plane-init,tag=ki43-root] pitch-speed 230
scoreboard players set @e[tag=plane-init,tag=ki43-root] yaw-speed 260
scoreboard players set @e[tag=plane-init,tag=ki43-root] roll-speed 650

scoreboard players set @e[tag=plane-init,tag=ki43-body] parking-udvm 67
scoreboard players set @e[tag=plane-init,tag=ki43-body] rolling-udvm 68
scoreboard players set @e[tag=plane-init,tag=ki43-body] flying-udvm 69

scoreboard players set @e[tag=plane-init,tag=ki43-root] w1-reload 0
scoreboard players set @e[tag=plane-init,tag=ki43-root] w2-reload 0
scoreboard players set @e[tag=plane-init,tag=ki43-root,tag=7p7mm] ammunition1 500
scoreboard players set @e[tag=plane-init,tag=ki43-root,tag=12p7mm] ammunition1 270
scoreboard players set @e[tag=plane-init,tag=ki43-root,tag=7p7mm] max-ammunition1 500
scoreboard players set @e[tag=plane-init,tag=ki43-root,tag=12p7mm] max-ammunition1 270
scoreboard players set @e[tag=plane-init,tag=ki43-root,tag=7p7mm] max-ammo-reload1 140
scoreboard players set @e[tag=plane-init,tag=ki43-root,tag=12p7mm] max-ammo-reload1 210
scoreboard players set @e[tag=plane-init,tag=ki43-root] plane-weapon 1
scoreboard players set @e[tag=plane-init,tag=ki43-root] weapon-types 2

scoreboard players set @e[tag=plane-init,tag=ki43-root] max-engine 1

execute store result score @e[tag=plane-init,tag=ki43-root,limit=1] PosX run data get entity @e[tag=plane-init,tag=ki43-root,limit=1] Pos[0] 10000
execute store result score @e[tag=plane-init,tag=ki43-root,limit=1] PosY run data get entity @e[tag=plane-init,tag=ki43-root,limit=1] Pos[1] 10000
execute store result score @e[tag=plane-init,tag=ki43-root,limit=1] PosZ run data get entity @e[tag=plane-init,tag=ki43-root,limit=1] Pos[2] 10000

#hitbocのスコア設定
scoreboard players set @e[tag=body,tag=plane-init] offsetX 0
scoreboard players set @e[tag=body,tag=plane-init] offsetY 0
scoreboard players set @e[tag=body,tag=plane-init] offsetZ 0
scoreboard players set @e[tag=engine,tag=plane-init] offsetX 0
scoreboard players set @e[tag=engine,tag=plane-init] offsetY 100
scoreboard players set @e[tag=engine,tag=plane-init] offsetZ 1500
scoreboard players set @e[tag=aileron-r,tag=plane-init] offsetX -3000
scoreboard players set @e[tag=aileron-r,tag=plane-init] offsetY 0
scoreboard players set @e[tag=aileron-r,tag=plane-init] offsetZ 100
scoreboard players set @e[tag=aileron-l,tag=plane-init] offsetX 3000
scoreboard players set @e[tag=aileron-l,tag=plane-init] offsetY 0
scoreboard players set @e[tag=aileron-l,tag=plane-init] offsetZ 100
scoreboard players set @e[tag=elevator-r,tag=plane-init] offsetX -900
scoreboard players set @e[tag=elevator-r,tag=plane-init] offsetY 300
scoreboard players set @e[tag=elevator-r,tag=plane-init] offsetZ -5400
scoreboard players set @e[tag=elevator-l,tag=plane-init] offsetX 900
scoreboard players set @e[tag=elevator-l,tag=plane-init] offsetY 300
scoreboard players set @e[tag=elevator-l,tag=plane-init] offsetZ -5400
scoreboard players set @e[tag=radder,tag=plane-init] offsetX 0
scoreboard players set @e[tag=radder,tag=plane-init] offsetY 1000
scoreboard players set @e[tag=radder,tag=plane-init] offsetZ -5600
scoreboard players set @e[tag=cockpit,tag=plane-init] offsetX 0
scoreboard players set @e[tag=cockpit,tag=plane-init] offsetY 800
scoreboard players set @e[tag=cockpit,tag=plane-init] offsetZ -200

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init] remove plane-init
