#実行条件無し

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[j2m3-root,j2m3,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,has-weapon1,has-weapon2,main-weapon1,main-weapon2,tier2],CustomName:"{\"text\":\"j2m3\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256,NoGravity:0b,HandItems:[{id:"snowball",Count:1b,tag:{CustomModelData:1,weapons:["Model1 20mm gun","Model2 20mm gun"]}},{}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[j2m3,plane-init,plane,entity-nohit,plane-seat],CustomName:"{\"text\":\"seat\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:donkey,Health:13f,Attributes:[{Name:generic.maxHealth,Base:13}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1,NoAI:1,Silent:1,ChestedHorse:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:1000000,ShowParticles:0b}],Tags:[j2m3,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256,NoGravity:0b}
summon armor_stand ~ ~ ~ {Tags:["j2m3-body","j2m3",plane-init,plane,has-model,model-changeable,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:93,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[-12f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["j2m3-hitbox","j2m3",plane-init,plane,plane-hitbox,has-offset,body,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"body\"}",Health:110f,Attributes:[{Name:generic.maxHealth,Base:110}]}
summon armor_stand ~ ~ ~ {Tags:["j2m3-hitbox","j2m3",plane-init,plane,plane-hitbox,has-offset,engine,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"engine\"}",Health:90f,Attributes:[{Name:generic.maxHealth,Base:90}]}
summon armor_stand ~ ~ ~ {Tags:["j2m3-hitbox","j2m3",plane-init,plane,plane-hitbox,has-offset,aileron-r,aileron,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-right\"}",Health:100f,Attributes:[{Name:generic.maxHealth,Base:100}]}
summon armor_stand ~ ~ ~ {Tags:["j2m3-hitbox","j2m3",plane-init,plane,plane-hitbox,has-offset,aileron-l,aileron,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-left\"}",Health:100f,Attributes:[{Name:generic.maxHealth,Base:100}]}
summon armor_stand ~ ~ ~ {Tags:["j2m3-hitbox","j2m3",plane-init,plane,plane-hitbox,has-offset,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-right\"}",Health:80f,Attributes:[{Name:generic.maxHealth,Base:80}]}
summon armor_stand ~ ~ ~ {Tags:["j2m3-hitbox","j2m3",plane-init,plane,plane-hitbox,has-offset,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-left\"}",Health:80f,Attributes:[{Name:generic.maxHealth,Base:80}]}
summon armor_stand ~ ~ ~ {Tags:["j2m3-hitbox","j2m3",plane-init,plane,plane-hitbox,has-offset,radder,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"radder\"}",Health:90f,Attributes:[{Name:generic.maxHealth,Base:90}]}
summon armor_stand ~ ~ ~ {Tags:["j2m3-hitbox","j2m3",plane-init,plane,plane-hitbox,has-offset,cockpit,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"cockpit\"}",Health:150f,Attributes:[{Name:generic.maxHealth,Base:150}]}

#ID付与
execute as @e[tag=plane-init,tag=plane-root,limit=1] at @s run function plane:summon/set-plane-id

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
scoreboard players set @e[tag=plane-init,tag=j2m3-root] rolling 0
scoreboard players set @e[tag=plane-init,tag=j2m3-root] speed 0
scoreboard players set @e[tag=plane-init,tag=j2m3-root] accelerate 77
scoreboard players set @e[tag=plane-init,tag=j2m3-root] resistance 46
scoreboard players set @e[tag=plane-init,tag=j2m3-root] energy-loss 19
scoreboard players set @e[tag=plane-init,tag=j2m3-root] deaccelerate 86
scoreboard players set @e[tag=plane-init,tag=j2m3-root] max-speed 20700
scoreboard players set @e[tag=plane-init,tag=j2m3-root] cruise-speed 12500
scoreboard players set @e[tag=plane-init,tag=j2m3-root] takeoff-speed 5625
scoreboard players set @e[tag=plane-init,tag=j2m3-root] stall-speed 5425
scoreboard players set @e[tag=plane-init,tag=j2m3-root] plpr-start-min 1600
scoreboard players set @e[tag=plane-init,tag=j2m3-root] plpr-start-max 1700
scoreboard players set @e[tag=plane-init,tag=j2m3-root] plpr-stop-min 1400
scoreboard players set @e[tag=plane-init,tag=j2m3-root] plpr-stop-max 1500
scoreboard players set @e[tag=plane-init,tag=j2m3-root] gear-retract-min 7400
scoreboard players set @e[tag=plane-init,tag=j2m3-root] gear-retract-max 7600
scoreboard players set @e[tag=plane-init,tag=j2m3-root] gear-pullout-min 7100
scoreboard players set @e[tag=plane-init,tag=j2m3-root] gear-pullout-max 7300

scoreboard players set @e[tag=plane-init,tag=j2m3-root] landing-pitch -1150
scoreboard players set @e[tag=plane-init,tag=j2m3-root] AngX -1150
scoreboard players set @e[tag=plane-init,tag=j2m3-root] AngY 0
scoreboard players set @e[tag=plane-init,tag=j2m3-root] AngZ 0
scoreboard players set @e[tag=plane-init,tag=j2m3-root] AngY-old 0
scoreboard players set @e[tag=plane-init,tag=j2m3-root] pitch-speed 190
scoreboard players set @e[tag=plane-init,tag=j2m3-root] yaw-speed 190
scoreboard players set @e[tag=plane-init,tag=j2m3-root] roll-speed 710

scoreboard players set @e[tag=plane-init,tag=j2m3-body] parking-udvm 93
scoreboard players set @e[tag=plane-init,tag=j2m3-body] rolling-udvm 94
scoreboard players set @e[tag=plane-init,tag=j2m3-body] flying-udvm 95

scoreboard players set @e[tag=plane-init,tag=j2m3-root] w1-reload 0
scoreboard players set @e[tag=plane-init,tag=j2m3-root] w2-reload 0
scoreboard players set @e[tag=plane-init,tag=j2m3-root] ammunition1 100
scoreboard players set @e[tag=plane-init,tag=j2m3-root] ammunition2 100
scoreboard players set @e[tag=plane-init,tag=j2m3-root] max-ammunition1 100
scoreboard players set @e[tag=plane-init,tag=j2m3-root] max-ammunition2 100
scoreboard players set @e[tag=plane-init,tag=j2m3-root] max-ammo-reload1 280
scoreboard players set @e[tag=plane-init,tag=j2m3-root] max-ammo-reload2 280
scoreboard players set @e[tag=plane-init,tag=j2m3-root] plane-weapon 1
scoreboard players set @e[tag=plane-init,tag=j2m3-root] weapon-types 6

scoreboard players set @e[tag=plane-init,tag=j2m3-root] max-engine 1

execute store result score @e[tag=plane-init,tag=j2m3-root,limit=1] PosX run data get entity @e[tag=plane-init,tag=j2m3-root,limit=1] Pos[0] 10000
execute store result score @e[tag=plane-init,tag=j2m3-root,limit=1] PosY run data get entity @e[tag=plane-init,tag=j2m3-root,limit=1] Pos[1] 10000
execute store result score @e[tag=plane-init,tag=j2m3-root,limit=1] PosZ run data get entity @e[tag=plane-init,tag=j2m3-root,limit=1] Pos[2] 10000

#hitboxのスコア設定
scoreboard players set @e[tag=body,tag=plane-init] offsetX 0
scoreboard players set @e[tag=body,tag=plane-init] offsetY 0
scoreboard players set @e[tag=body,tag=plane-init] offsetZ 0
scoreboard players set @e[tag=engine,tag=plane-init] offsetX -50
scoreboard players set @e[tag=engine,tag=plane-init] offsetY 0
scoreboard players set @e[tag=engine,tag=plane-init] offsetZ 3800
scoreboard players set @e[tag=aileron-r,tag=plane-init] offsetX -3200
scoreboard players set @e[tag=aileron-r,tag=plane-init] offsetY -300
scoreboard players set @e[tag=aileron-r,tag=plane-init] offsetZ 1800
scoreboard players set @e[tag=aileron-l,tag=plane-init] offsetX 3150
scoreboard players set @e[tag=aileron-l,tag=plane-init] offsetY -300
scoreboard players set @e[tag=aileron-l,tag=plane-init] offsetZ 1800
scoreboard players set @e[tag=elevator-r,tag=plane-init] offsetX -1300
scoreboard players set @e[tag=elevator-r,tag=plane-init] offsetY 200
scoreboard players set @e[tag=elevator-r,tag=plane-init] offsetZ -3300
scoreboard players set @e[tag=elevator-l,tag=plane-init] offsetX 1250
scoreboard players set @e[tag=elevator-l,tag=plane-init] offsetY 200
scoreboard players set @e[tag=elevator-l,tag=plane-init] offsetZ -3300
scoreboard players set @e[tag=radder,tag=plane-init] offsetX -50
scoreboard players set @e[tag=radder,tag=plane-init] offsetY 1200
scoreboard players set @e[tag=radder,tag=plane-init] offsetZ -3900
scoreboard players set @e[tag=cockpit,tag=plane-init] offsetX 0
scoreboard players set @e[tag=cockpit,tag=plane-init] offsetY 900
scoreboard players set @e[tag=cockpit,tag=plane-init] offsetZ 1100

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init] remove plane-init
