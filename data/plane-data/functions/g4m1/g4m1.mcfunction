#実行条件無し

#機体召喚
summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[g4m1-root,g4m1,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,bombed,normal,250kg,has-weapon1,has-weapon2,has-weapon3,has-weapon4,has-weapon5,has-weapon6,main-weapon1,tier2],CustomName:"{\"text\":\"g4m1\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256,NoGravity:0b,HandItems:[{id:"snowball",Count:1b,tag:{CustomModelData:1,weapons:["bomb"]}},{}]}
summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[g4m1,plane-init,plane,entity-nohit,plane-seat],CustomName:"{\"text\":\"seat\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:donkey,Health:14f,Attributes:[{Name:"generic.max_health",Base:14}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1,NoAI:1,Silent:1,ChestedHorse:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:1000000,ShowParticles:0b}],Tags:[g4m1,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256,NoGravity:0b}
summon armor_stand ~ ~ ~ {Tags:["g4m1-body","g4m1",plane-init,plane,has-model,model-changeable,plane-parts,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:96,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["g4m1-tail","g4m1",plane-init,plane,has-model,plane-parts,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:99,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["g4m1-rightwing","g4m1",plane-init,plane,has-model,has-offset,plane-parts,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:100,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["g4m1-leftwing","g4m1",plane-init,plane,has-model,has-offset,plane-parts,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:101,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}

#hitbox召喚
summon armor_stand ~ ~ ~ {Tags:["g4m1-hitbox","g4m1",plane-init,plane,has-offset,plane-hitbox,body,offset-base,has-size,size30],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"body\"}",Health:110f,Attributes:[{Name:"generic.max_health",Base:110}]}
summon armor_stand ~ ~ ~ {Tags:["g4m1-hitbox","g4m1",plane-init,plane,has-offset,plane-hitbox,engine-r,engine,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"engine\"}",Health:100f,Attributes:[{Name:"generic.max_health",Base:100}]}
summon armor_stand ~ ~ ~ {Tags:["g4m1-hitbox","g4m1",plane-init,plane,has-offset,plane-hitbox,engine-l,engine,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"engine\"}",Health:100f,Attributes:[{Name:"generic.max_health",Base:100}]}
summon armor_stand ~ ~ ~ {Tags:["g4m1-hitbox","g4m1",plane-init,plane,has-offset,plane-hitbox,aileron-r,aileron,offset-base,has-size,size30],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-right\"}",Health:90f,Attributes:[{Name:"generic.max_health",Base:90}]}
summon armor_stand ~ ~ ~ {Tags:["g4m1-hitbox","g4m1",plane-init,plane,has-offset,plane-hitbox,aileron-l,aileron,offset-base,has-size,size30],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-left\"}",Health:90f,Attributes:[{Name:"generic.max_health",Base:90}]}
summon armor_stand ~ ~ ~ {Tags:["g4m1-hitbox","g4m1",plane-init,plane,has-offset,plane-hitbox,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-right\"}",Health:70f,Attributes:[{Name:"generic.max_health",Base:70}]}
summon armor_stand ~ ~ ~ {Tags:["g4m1-hitbox","g4m1",plane-init,plane,has-offset,plane-hitbox,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-left\"}",Health:70f,Attributes:[{Name:"generic.max_health",Base:70}]}
summon armor_stand ~ ~ ~ {Tags:["g4m1-hitbox","g4m1",plane-init,plane,has-offset,plane-hitbox,radder,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"radder\"}",Health:70f,Attributes:[{Name:"generic.max_health",Base:70}]}
summon armor_stand ~ ~ ~ {Tags:["g4m1-hitbox","g4m1",plane-init,plane,has-offset,plane-hitbox,cockpit,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"cockpit\"}",Health:80f,Attributes:[{Name:"generic.max_health",Base:80}]}

#武装種別変更
execute if entity @e[tag=g4m1-spawner,distance=..0.1,tag=torpedo] run tag @e[tag=plane-init,tag=g4m1-root] remove 250kg
execute if entity @e[tag=g4m1-spawner,distance=..0.1,tag=torpedo] run tag @e[tag=plane-init,tag=g4m1-root] add has-torpedo
execute if entity @e[tag=g4m1-spawner,distance=..0.1,tag=torpedo] run data modify entity @e[tag=plane-init,tag=g4m1-root,limit=1] HandItems[0].tag.weapons[0] set value "torpedo"

#ID付与
execute as @e[tag=plane-init,tag=plane-root,limit=1] at @s run function plane:summon/set-plane-id

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
scoreboard players set @e[tag=plane-init,tag=g4m1-root] speed 0
scoreboard players set @e[tag=plane-init,tag=g4m1-root] rolling 0
scoreboard players set @e[tag=plane-init,tag=g4m1-root] accelerate 33
scoreboard players set @e[tag=plane-init,tag=g4m1-root] resistance 23
scoreboard players set @e[tag=plane-init,tag=g4m1-root] energy-loss 14
scoreboard players set @e[tag=plane-init,tag=g4m1-root] deaccelerate 62
scoreboard players set @e[tag=plane-init,tag=g4m1-root] max-speed 15800
scoreboard players set @e[tag=plane-init,tag=g4m1-root] cruise-speed 10900
scoreboard players set @e[tag=plane-init,tag=g4m1-root] takeoff-speed 4100
scoreboard players set @e[tag=plane-init,tag=g4m1-root] stall-speed 3900
scoreboard players set @e[tag=plane-init,tag=g4m1-root] plpr-start-min 1500
scoreboard players set @e[tag=plane-init,tag=g4m1-root] plpr-start-max 1530
scoreboard players set @e[tag=plane-init,tag=g4m1-root] plpr-stop-min 1400
scoreboard players set @e[tag=plane-init,tag=g4m1-root] plpr-stop-max 1430
scoreboard players set @e[tag=plane-init,tag=g4m1-root] gear-retract-min 5400
scoreboard players set @e[tag=plane-init,tag=g4m1-root] gear-retract-max 5600
scoreboard players set @e[tag=plane-init,tag=g4m1-root] gear-pullout-min 5100
scoreboard players set @e[tag=plane-init,tag=g4m1-root] gear-pullout-max 5300

scoreboard players set @e[tag=plane-init,tag=g4m1-root] landing-pitch -500
scoreboard players set @e[tag=plane-init,tag=g4m1-root] AngX -500
scoreboard players set @e[tag=plane-init,tag=g4m1-root] AngY 0
scoreboard players set @e[tag=plane-init,tag=g4m1-root] AngZ 0
scoreboard players set @e[tag=plane-init,tag=g4m1-root] AngY-old 0
scoreboard players set @e[tag=plane-init,tag=g4m1-root] pitch-speed 150
scoreboard players set @e[tag=plane-init,tag=g4m1-root] yaw-speed 113
scoreboard players set @e[tag=plane-init,tag=g4m1-root] roll-speed 195

scoreboard players set @e[tag=plane-init,tag=g4m1-body] parking-udvm 96
scoreboard players set @e[tag=plane-init,tag=g4m1-body] rolling-udvm 97
scoreboard players set @e[tag=plane-init,tag=g4m1-body] flying-udvm 98

scoreboard players set @e[tag=plane-init,tag=g4m1-root] w1-reload 0
scoreboard players set @e[tag=plane-init,tag=g4m1-root] w2-reload 0
scoreboard players set @e[tag=plane-init,tag=g4m1-root] w3-reload 0
scoreboard players set @e[tag=plane-init,tag=g4m1-root] w4-reload 0
scoreboard players set @e[tag=plane-init,tag=g4m1-root] w5-reload 0
scoreboard players set @e[tag=plane-init,tag=g4m1-root] w6-reload 0
scoreboard players set @e[tag=plane-init,tag=g4m1-root,tag=250kg] ammunition1 4
scoreboard players set @e[tag=plane-init,tag=g4m1-root,tag=has-torpedo] ammunition1 1
scoreboard players set @e[tag=plane-init,tag=g4m1-root] ammunition2 500
scoreboard players set @e[tag=plane-init,tag=g4m1-root] ammunition3 500
scoreboard players set @e[tag=plane-init,tag=g4m1-root] ammunition4 500
scoreboard players set @e[tag=plane-init,tag=g4m1-root] ammunition5 500
scoreboard players set @e[tag=plane-init,tag=g4m1-root] ammunition6 500
scoreboard players set @e[tag=plane-init,tag=g4m1-root,tag=250kg] max-ammunition1 4
scoreboard players set @e[tag=plane-init,tag=g4m1-root,tag=has-torpedo] max-ammunition1 1
scoreboard players set @e[tag=plane-init,tag=g4m1-root] max-ammunition2 500
scoreboard players set @e[tag=plane-init,tag=g4m1-root] max-ammunition3 500
scoreboard players set @e[tag=plane-init,tag=g4m1-root] max-ammunition4 500
scoreboard players set @e[tag=plane-init,tag=g4m1-root] max-ammunition5 500
scoreboard players set @e[tag=plane-init,tag=g4m1-root] max-ammunition6 500
scoreboard players set @e[tag=plane-init,tag=g4m1-root] max-ammo-reload1 600
scoreboard players set @e[tag=plane-init,tag=g4m1-root] max-ammo-reload2 140
scoreboard players set @e[tag=plane-init,tag=g4m1-root] max-ammo-reload3 140
scoreboard players set @e[tag=plane-init,tag=g4m1-root] max-ammo-reload4 140
scoreboard players set @e[tag=plane-init,tag=g4m1-root] max-ammo-reload5 140
scoreboard players set @e[tag=plane-init,tag=g4m1-root] max-ammo-reload6 140
scoreboard players set @e[tag=plane-init,tag=g4m1-root] plane-weapon 1
scoreboard players set @e[tag=plane-init,tag=g4m1-root] weapon-types 2

scoreboard players set @e[tag=plane-init,tag=g4m1-root] max-engine 2

execute store result score @e[tag=plane-init,tag=g4m1-root,limit=1] PosX run data get entity @e[tag=plane-init,tag=g4m1-root,limit=1] Pos[0] 10000
execute store result score @e[tag=plane-init,tag=g4m1-root,limit=1] PosY run data get entity @e[tag=plane-init,tag=g4m1-root,limit=1] Pos[1] 10000
execute store result score @e[tag=plane-init,tag=g4m1-root,limit=1] PosZ run data get entity @e[tag=plane-init,tag=g4m1-root,limit=1] Pos[2] 10000

#offset設定
scoreboard players set @e[tag=body,tag=plane-init] offsetX 0
scoreboard players set @e[tag=body,tag=plane-init] offsetY 0
scoreboard players set @e[tag=body,tag=plane-init] offsetZ 0
scoreboard players set @e[tag=g4m1-rightwing,tag=plane-init] offsetX -6500
scoreboard players set @e[tag=g4m1-rightwing,tag=plane-init] offsetY 0
scoreboard players set @e[tag=g4m1-rightwing,tag=plane-init] offsetZ 0
scoreboard players set @e[tag=g4m1-leftwing,tag=plane-init] offsetX 6500
scoreboard players set @e[tag=g4m1-leftwing,tag=plane-init] offsetY 0
scoreboard players set @e[tag=g4m1-leftwing,tag=plane-init] offsetZ 0
scoreboard players set @e[tag=engine-l,tag=plane-init] offsetX 3000
scoreboard players set @e[tag=engine-l,tag=plane-init] offsetY 250
scoreboard players set @e[tag=engine-l,tag=plane-init] offsetZ 8000
scoreboard players set @e[tag=engine-r,tag=plane-init] offsetX -3000
scoreboard players set @e[tag=engine-r,tag=plane-init] offsetY 250
scoreboard players set @e[tag=engine-r,tag=plane-init] offsetZ 8000
scoreboard players set @e[tag=aileron-r,tag=plane-init] offsetX -7400
scoreboard players set @e[tag=aileron-r,tag=plane-init] offsetY 1000
scoreboard players set @e[tag=aileron-r,tag=plane-init] offsetZ 4200
scoreboard players set @e[tag=aileron-l,tag=plane-init] offsetX 7300
scoreboard players set @e[tag=aileron-l,tag=plane-init] offsetY 1000
scoreboard players set @e[tag=aileron-l,tag=plane-init] offsetZ 4200
scoreboard players set @e[tag=elevator-r,tag=plane-init] offsetX -2300
scoreboard players set @e[tag=elevator-r,tag=plane-init] offsetY 1200
scoreboard players set @e[tag=elevator-r,tag=plane-init] offsetZ -6100
scoreboard players set @e[tag=elevator-l,tag=plane-init] offsetX 2300
scoreboard players set @e[tag=elevator-l,tag=plane-init] offsetY 1200
scoreboard players set @e[tag=elevator-l,tag=plane-init] offsetZ -6100
scoreboard players set @e[tag=radder,tag=plane-init] offsetX 0
scoreboard players set @e[tag=radder,tag=plane-init] offsetY 3000
scoreboard players set @e[tag=radder,tag=plane-init] offsetZ -6500
scoreboard players set @e[tag=cockpit,tag=plane-init] offsetX 0
scoreboard players set @e[tag=cockpit,tag=plane-init] offsetY 1900
scoreboard players set @e[tag=cockpit,tag=plane-init] offsetZ 7500

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init] remove plane-init
