#実行条件無し

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[d4y2-root,d4y2,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,bombed,60kg-normal,250kg-normal,has-weapon1,has-weapon2,has-weapon3,main-weapon1,main-weapon2,tier2],CustomName:"{\"text\":\"d4y2\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256,NoGravity:0b,HandItems:[{id:"snowball",Count:1b,tag:{CustomModelData:1,weapons:["7.7mm gun","bomb","rocket"]}},{}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[d4y2,plane-init,plane,entity-nohit,plane-seat],CustomName:"{\"text\":\"seat\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:donkey,Health:13f,Attributes:[{Name:generic.maxHealth,Base:13}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1,NoAI:1,Silent:1,ChestedHorse:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:1000000,ShowParticles:0b}],Tags:[d4y2,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256,NoGravity:0b}
summon armor_stand ~ ~ ~ {Tags:["d4y2-body","d4y2",plane-init,plane,has-model,model-changeable,plane-parts,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:27,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}

#hitbox召喚
summon armor_stand ~ ~ ~ {Tags:["d4y2-hitbox","d4y2",plane-init,has-offset,plane,plane-hitbox,body,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"body\"}",Health:120f,Attributes:[{Name:generic.maxHealth,Base:120}]}
summon armor_stand ~ ~ ~ {Tags:["d4y2-hitbox","d4y2",plane-init,has-offset,plane,plane-hitbox,engine,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"engine\"}",Health:90f,Attributes:[{Name:generic.maxHealth,Base:90}]}
summon armor_stand ~ ~ ~ {Tags:["d4y2-hitbox","d4y2",plane-init,has-offset,plane,plane-hitbox,aileron-r,aileron,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-right\"}",Health:100f,Attributes:[{Name:generic.maxHealth,Base:100}]}
summon armor_stand ~ ~ ~ {Tags:["d4y2-hitbox","d4y2",plane-init,has-offset,plane,plane-hitbox,aileron-l,aileron,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-left\"}",Health:100f,Attributes:[{Name:generic.maxHealth,Base:100}]}
summon armor_stand ~ ~ ~ {Tags:["d4y2-hitbox","d4y2",plane-init,has-offset,plane,plane-hitbox,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-right\"}",Health:80f,Attributes:[{Name:generic.maxHealth,Base:80}]}
summon armor_stand ~ ~ ~ {Tags:["d4y2-hitbox","d4y2",plane-init,has-offset,plane,plane-hitbox,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-left\"}",Health:80f,Attributes:[{Name:generic.maxHealth,Base:80}]}
summon armor_stand ~ ~ ~ {Tags:["d4y2-hitbox","d4y2",plane-init,has-offset,plane,plane-hitbox,radder,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"radder\"}",Health:80f,Attributes:[{Name:generic.maxHealth,Base:80}]}
summon armor_stand ~ ~ ~ {Tags:["d4y2-hitbox","d4y2",plane-init,has-offset,plane,plane-hitbox,cockpit,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"cockpit\"}",Health:80f,Attributes:[{Name:generic.maxHealth,Base:80}]}

#ID付与
execute as @e[tag=plane-init,tag=plane-root,limit=1] at @s run function plane:summon/set-plane-id

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
scoreboard players set @e[tag=plane-init,tag=d4y2-root] speed 0
scoreboard players set @e[tag=plane-init,tag=d4y2-root] rolling 0
scoreboard players set @e[tag=plane-init,tag=d4y2-root] accelerate 53
scoreboard players set @e[tag=plane-init,tag=d4y2-root] resistance 39
scoreboard players set @e[tag=plane-init,tag=d4y2-root] energy-loss 20
scoreboard players set @e[tag=plane-init,tag=d4y2-root] deaccelerate 103
scoreboard players set @e[tag=plane-init,tag=d4y2-root] max-speed 20100
scoreboard players set @e[tag=plane-init,tag=d4y2-root] cruise-speed 14800
scoreboard players set @e[tag=plane-init,tag=d4y2-root] takeoff-speed 5000
scoreboard players set @e[tag=plane-init,tag=d4y2-root] stall-speed 4800
scoreboard players set @e[tag=plane-init,tag=d4y2-root] plpr-start-min 1500
scoreboard players set @e[tag=plane-init,tag=d4y2-root] plpr-start-max 1530
scoreboard players set @e[tag=plane-init,tag=d4y2-root] plpr-stop-min 1400
scoreboard players set @e[tag=plane-init,tag=d4y2-root] plpr-stop-max 1430
scoreboard players set @e[tag=plane-init,tag=d4y2-root] gear-retract-min 6300
scoreboard players set @e[tag=plane-init,tag=d4y2-root] gear-retract-max 6500
scoreboard players set @e[tag=plane-init,tag=d4y2-root] gear-pullout-min 6000
scoreboard players set @e[tag=plane-init,tag=d4y2-root] gear-pullout-max 6200

scoreboard players set @e[tag=plane-init,tag=d4y2-root] landing-pitch -1300
scoreboard players set @e[tag=plane-init,tag=d4y2-root] AngX -1300
scoreboard players set @e[tag=plane-init,tag=d4y2-root] AngY 0
scoreboard players set @e[tag=plane-init,tag=d4y2-root] AngZ 0
scoreboard players set @e[tag=plane-init,tag=d4y2-root] AngY-old 0
scoreboard players set @e[tag=plane-init,tag=d4y2-root] pitch-speed 160
scoreboard players set @e[tag=plane-init,tag=d4y2-root] yaw-speed 100
scoreboard players set @e[tag=plane-init,tag=d4y2-root] roll-speed 600

scoreboard players set @e[tag=plane-init,tag=d4y2-body] parking-udvm 27
scoreboard players set @e[tag=plane-init,tag=d4y2-body] rolling-udvm 28
scoreboard players set @e[tag=plane-init,tag=d4y2-body] flying-udvm 29

scoreboard players set @e[tag=plane-init,tag=d4y2-root] w1-reload 0
scoreboard players set @e[tag=plane-init,tag=d4y2-root] w2-reload 0
scoreboard players set @e[tag=plane-init,tag=d4y2-root] w3-reload 0
scoreboard players set @e[tag=plane-init,tag=d4y2-root] w4-reload 0
scoreboard players set @e[tag=plane-init,tag=d4y2-root] ammunition1 400
scoreboard players set @e[tag=plane-init,tag=d4y2-root] ammunition2 3
scoreboard players set @e[tag=plane-init,tag=d4y2-root] ammunition3 500
scoreboard players set @e[tag=plane-init,tag=d4y2-root] ammunition4 4
scoreboard players set @e[tag=plane-init,tag=d4y2-root] max-ammunition1 400
scoreboard players set @e[tag=plane-init,tag=d4y2-root] max-ammunition2 3
scoreboard players set @e[tag=plane-init,tag=d4y2-root] max-ammunition3 500
scoreboard players set @e[tag=plane-init,tag=d4y2-root] max-ammunition4 4
scoreboard players set @e[tag=plane-init,tag=d4y2-root] max-ammo-reload1 140
scoreboard players set @e[tag=plane-init,tag=d4y2-root] max-ammo-reload2 500
scoreboard players set @e[tag=plane-init,tag=d4y2-root] max-ammo-reload3 140
scoreboard players set @e[tag=plane-init,tag=d4y2-root] max-ammo-reload4 140
scoreboard players set @e[tag=plane-init,tag=d4y2-root] plane-weapon 1
scoreboard players set @e[tag=plane-init,tag=d4y2-root] weapon-types 6

scoreboard players set @e[tag=plane-init,tag=d4y2-root] max-engine 1

execute store result score @e[tag=plane-init,tag=d4y2-root,limit=1] PosX run data get entity @e[tag=plane-init,tag=d4y2-root,limit=1] Pos[0] 10000
execute store result score @e[tag=plane-init,tag=d4y2-root,limit=1] PosY run data get entity @e[tag=plane-init,tag=d4y2-root,limit=1] Pos[1] 10000
execute store result score @e[tag=plane-init,tag=d4y2-root,limit=1] PosZ run data get entity @e[tag=plane-init,tag=d4y2-root,limit=1] Pos[2] 10000

#hitboxのスコア設定
scoreboard players set @e[tag=body,tag=plane-init] offsetX 0
scoreboard players set @e[tag=body,tag=plane-init] offsetY 0
scoreboard players set @e[tag=body,tag=plane-init] offsetZ 0
scoreboard players set @e[tag=engine,tag=plane-init] offsetX 0
scoreboard players set @e[tag=engine,tag=plane-init] offsetY -100
scoreboard players set @e[tag=engine,tag=plane-init] offsetZ 5700
scoreboard players set @e[tag=aileron-r,tag=plane-init] offsetX -4000
scoreboard players set @e[tag=aileron-r,tag=plane-init] offsetY -300
scoreboard players set @e[tag=aileron-r,tag=plane-init] offsetZ 2900
scoreboard players set @e[tag=aileron-l,tag=plane-init] offsetX 4000
scoreboard players set @e[tag=aileron-l,tag=plane-init] offsetY -300
scoreboard players set @e[tag=aileron-l,tag=plane-init] offsetZ 2900
scoreboard players set @e[tag=elevator-r,tag=plane-init] offsetX -1500
scoreboard players set @e[tag=elevator-r,tag=plane-init] offsetY 0
scoreboard players set @e[tag=elevator-r,tag=plane-init] offsetZ -2500
scoreboard players set @e[tag=elevator-l,tag=plane-init] offsetX 1500
scoreboard players set @e[tag=elevator-l,tag=plane-init] offsetY 0
scoreboard players set @e[tag=elevator-l,tag=plane-init] offsetZ -2500
scoreboard players set @e[tag=radder,tag=plane-init] offsetX 0
scoreboard players set @e[tag=radder,tag=plane-init] offsetY 1000
scoreboard players set @e[tag=radder,tag=plane-init] offsetZ -2900
scoreboard players set @e[tag=cockpit,tag=plane-init] offsetX 0
scoreboard players set @e[tag=cockpit,tag=plane-init] offsetY 700
scoreboard players set @e[tag=cockpit,tag=plane-init] offsetZ 3100

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init] remove plane-init
