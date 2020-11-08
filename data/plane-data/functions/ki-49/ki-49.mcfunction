#実行条件無し

#機体召喚
summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[ki49-root,ki49,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,bombed,normal,250kg,has-weapon1,has-weapon2,has-weapon3,has-weapon4,main-weapon1,tier3],CustomName:"{\"text\":\"ki49\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256,NoGravity:0b,HandItems:[{id:"snowball",Count:1b,tag:{CustomModelData:1,weapons:["bomb"]}},{}]}
summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[ki49,plane-init,plane,entity-nohit,plane-seat],CustomName:"{\"text\":\"seat\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:donkey,Health:11f,Attributes:[{Name:generic.maxHealth,Base:11}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1,NoAI:1,Silent:1,ChestedHorse:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:1000000,ShowParticles:0b}],Tags:[ki49,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256,NoGravity:0b}
summon armor_stand ~ ~ ~ {Tags:["ki49-body","ki49",plane-init,plane,has-model,model-changeable,plane-parts,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:110,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["ki49-tail","ki49",plane-init,plane,has-model,plane-parts,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:113,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["ki49-rightwing","ki49",plane-init,plane,has-model,model-changeable,has-offset,plane-parts,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:114,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}

#hitbox召喚
summon armor_stand ~ ~ ~ {Tags:["ki49-hitbox","ki49",plane-init,plane,has-offset,plane-hitbox,body,offset-base,has-size,size30],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"body\"}",Health:80f,Attributes:[{Name:generic.maxHealth,Base:80}]}
summon armor_stand ~ ~ ~ {Tags:["ki49-hitbox","ki49",plane-init,plane,has-offset,plane-hitbox,engine-r,engine,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"engine\"}",Health:60f,Attributes:[{Name:generic.maxHealth,Base:60}]}
summon armor_stand ~ ~ ~ {Tags:["ki49-hitbox","ki49",plane-init,plane,has-offset,plane-hitbox,engine-l,engine,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"engine\"}",Health:60f,Attributes:[{Name:generic.maxHealth,Base:60}]}
summon armor_stand ~ ~ ~ {Tags:["ki49-hitbox","ki49",plane-init,plane,has-offset,plane-hitbox,aileron-r,aileron,offset-base,has-size,size30],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-right\"}",Health:70f,Attributes:[{Name:generic.maxHealth,Base:70}]}
summon armor_stand ~ ~ ~ {Tags:["ki49-hitbox","ki49",plane-init,plane,has-offset,plane-hitbox,aileron-l,aileron,offset-base,has-size,size30],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-left\"}",Health:70f,Attributes:[{Name:generic.maxHealth,Base:70}]}
summon armor_stand ~ ~ ~ {Tags:["ki49-hitbox","ki49",plane-init,plane,has-offset,plane-hitbox,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-right\"}",Health:60f,Attributes:[{Name:generic.maxHealth,Base:60}]}
summon armor_stand ~ ~ ~ {Tags:["ki49-hitbox","ki49",plane-init,plane,has-offset,plane-hitbox,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-left\"}",Health:60f,Attributes:[{Name:generic.maxHealth,Base:60}]}
summon armor_stand ~ ~ ~ {Tags:["ki49-hitbox","ki49",plane-init,plane,has-offset,plane-hitbox,radder,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"radder\"}",Health:70f,Attributes:[{Name:generic.maxHealth,Base:70}]}
summon armor_stand ~ ~ ~ {Tags:["ki49-hitbox","ki49",plane-init,plane,has-offset,plane-hitbox,cockpit,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"cockpit\"}",Health:80f,Attributes:[{Name:generic.maxHealth,Base:80}]}

#ID付与
execute as @e[tag=plane-init,tag=plane-root,limit=1] at @s run function plane:summon/set-plane-id

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
scoreboard players set @e[tag=plane-init,tag=ki49-root] speed 0
scoreboard players set @e[tag=plane-init,tag=ki49-root] rolling 0
scoreboard players set @e[tag=plane-init,tag=ki49-root] accelerate 43
scoreboard players set @e[tag=plane-init,tag=ki49-root] resistance 30
scoreboard players set @e[tag=plane-init,tag=ki49-root] energy-loss 19
scoreboard players set @e[tag=plane-init,tag=ki49-root] deaccelerate 49
scoreboard players set @e[tag=plane-init,tag=ki49-root] max-speed 17000
scoreboard players set @e[tag=plane-init,tag=ki49-root] cruise-speed 12200
scoreboard players set @e[tag=plane-init,tag=ki49-root] takeoff-speed 6100
scoreboard players set @e[tag=plane-init,tag=ki49-root] stall-speed 5900
scoreboard players set @e[tag=plane-init,tag=ki49-root] plpr-start-min 1500
scoreboard players set @e[tag=plane-init,tag=ki49-root] plpr-start-max 1530
scoreboard players set @e[tag=plane-init,tag=ki49-root] plpr-stop-min 1400
scoreboard players set @e[tag=plane-init,tag=ki49-root] plpr-stop-max 1430
scoreboard players set @e[tag=plane-init,tag=ki49-root] gear-retract-min 7400
scoreboard players set @e[tag=plane-init,tag=ki49-root] gear-retract-max 7600
scoreboard players set @e[tag=plane-init,tag=ki49-root] gear-pullout-min 7100
scoreboard players set @e[tag=plane-init,tag=ki49-root] gear-pullout-max 7300

scoreboard players set @e[tag=plane-init,tag=ki49-root] landing-pitch -600
scoreboard players set @e[tag=plane-init,tag=ki49-root] AngX -600
scoreboard players set @e[tag=plane-init,tag=ki49-root] AngY 0
scoreboard players set @e[tag=plane-init,tag=ki49-root] AngZ 0
scoreboard players set @e[tag=plane-init,tag=ki49-root] AngY-old 0
scoreboard players set @e[tag=plane-init,tag=ki49-root] pitch-speed 124
scoreboard players set @e[tag=plane-init,tag=ki49-root] yaw-speed 95
scoreboard players set @e[tag=plane-init,tag=ki49-root] roll-speed 90

scoreboard players set @e[tag=plane-init,tag=ki49-body] parking-udvm 110
scoreboard players set @e[tag=plane-init,tag=ki49-body] rolling-udvm 111
scoreboard players set @e[tag=plane-init,tag=ki49-body] flying-udvm 112
scoreboard players set @e[tag=plane-init,tag=ki49-rightwing] parking-udvm 114
scoreboard players set @e[tag=plane-init,tag=ki49-rightwing] rolling-udvm 115
scoreboard players set @e[tag=plane-init,tag=ki49-rightwing] flying-udvm 116

scoreboard players set @e[tag=plane-init,tag=ki49-root] w1-reload 0
scoreboard players set @e[tag=plane-init,tag=ki49-root] w2-reload 0
scoreboard players set @e[tag=plane-init,tag=ki49-root] w3-reload 0
scoreboard players set @e[tag=plane-init,tag=ki49-root] w4-reload 0
scoreboard players set @e[tag=plane-init,tag=ki49-root] w5-reload 0
scoreboard players set @e[tag=plane-init,tag=ki49-root] w6-reload 0
scoreboard players set @e[tag=plane-init,tag=ki49-root] w7-reload 0
scoreboard players set @e[tag=plane-init,tag=ki49-root] ammunition1 4
scoreboard players set @e[tag=plane-init,tag=ki49-root] ammunition2 500
scoreboard players set @e[tag=plane-init,tag=ki49-root] ammunition3 500
scoreboard players set @e[tag=plane-init,tag=ki49-root] ammunition4 500
scoreboard players set @e[tag=plane-init,tag=ki49-root] ammunition5 500
scoreboard players set @e[tag=plane-init,tag=ki49-root] ammunition6 500
scoreboard players set @e[tag=plane-init,tag=ki49-root] ammunition7 500
scoreboard players set @e[tag=plane-init,tag=ki49-root] max-ammunition1 4
scoreboard players set @e[tag=plane-init,tag=ki49-root] max-ammunition2 500
scoreboard players set @e[tag=plane-init,tag=ki49-root] max-ammunition3 500
scoreboard players set @e[tag=plane-init,tag=ki49-root] max-ammunition4 500
scoreboard players set @e[tag=plane-init,tag=ki49-root] max-ammunition5 500
scoreboard players set @e[tag=plane-init,tag=ki49-root] max-ammunition6 500
scoreboard players set @e[tag=plane-init,tag=ki49-root] max-ammunition7 500
scoreboard players set @e[tag=plane-init,tag=ki49-root] max-ammo-reload1 60
scoreboard players set @e[tag=plane-init,tag=ki49-root] max-ammo-reload2 140
scoreboard players set @e[tag=plane-init,tag=ki49-root] max-ammo-reload3 140
scoreboard players set @e[tag=plane-init,tag=ki49-root] max-ammo-reload4 140
scoreboard players set @e[tag=plane-init,tag=ki49-root] max-ammo-reload5 140
scoreboard players set @e[tag=plane-init,tag=ki49-root] max-ammo-reload6 140
scoreboard players set @e[tag=plane-init,tag=ki49-root] max-ammo-reload7 140
scoreboard players set @e[tag=plane-init,tag=ki49-root] plane-weapon 1
scoreboard players set @e[tag=plane-init,tag=ki49-root] weapon-types 2

scoreboard players set @e[tag=plane-init,tag=ki49-root] max-engine 2

execute store result score @e[tag=plane-init,tag=ki49-root,limit=1] PosX run data get entity @e[tag=plane-init,tag=ki49-root,limit=1] Pos[0] 10000
execute store result score @e[tag=plane-init,tag=ki49-root,limit=1] PosY run data get entity @e[tag=plane-init,tag=ki49-root,limit=1] Pos[1] 10000
execute store result score @e[tag=plane-init,tag=ki49-root,limit=1] PosZ run data get entity @e[tag=plane-init,tag=ki49-root,limit=1] Pos[2] 10000

#offset設定
scoreboard players set @e[tag=body,tag=plane-init] offsetX 0
scoreboard players set @e[tag=body,tag=plane-init] offsetY 0
scoreboard players set @e[tag=body,tag=plane-init] offsetZ 0
scoreboard players set @e[tag=engine-l,tag=plane-init] offsetX 3000
scoreboard players set @e[tag=engine-l,tag=plane-init] offsetY 250
scoreboard players set @e[tag=engine-l,tag=plane-init] offsetZ 6800
scoreboard players set @e[tag=engine-r,tag=plane-init] offsetX -3000
scoreboard players set @e[tag=engine-r,tag=plane-init] offsetY 250
scoreboard players set @e[tag=engine-r,tag=plane-init] offsetZ 6800
scoreboard players set @e[tag=aileron-r,tag=plane-init] offsetX -7400
scoreboard players set @e[tag=aileron-r,tag=plane-init] offsetY 700
scoreboard players set @e[tag=aileron-r,tag=plane-init] offsetZ 3000
scoreboard players set @e[tag=aileron-l,tag=plane-init] offsetX 7300
scoreboard players set @e[tag=aileron-l,tag=plane-init] offsetY 700
scoreboard players set @e[tag=aileron-l,tag=plane-init] offsetZ 3000
scoreboard players set @e[tag=elevator-r,tag=plane-init] offsetX -2300
scoreboard players set @e[tag=elevator-r,tag=plane-init] offsetY 600
scoreboard players set @e[tag=elevator-r,tag=plane-init] offsetZ -6500
scoreboard players set @e[tag=elevator-l,tag=plane-init] offsetX 2300
scoreboard players set @e[tag=elevator-l,tag=plane-init] offsetY 600
scoreboard players set @e[tag=elevator-l,tag=plane-init] offsetZ -6500
scoreboard players set @e[tag=radder,tag=plane-init] offsetX 0
scoreboard players set @e[tag=radder,tag=plane-init] offsetY 2400
scoreboard players set @e[tag=radder,tag=plane-init] offsetZ -6800
scoreboard players set @e[tag=cockpit,tag=plane-init] offsetX 0
scoreboard players set @e[tag=cockpit,tag=plane-init] offsetY 1600
scoreboard players set @e[tag=cockpit,tag=plane-init] offsetZ 6600

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init] remove plane-init
