#実行条件無し

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[a5m-root,a5m,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,has-weapon1,tier1,main-weapon1],CustomName:"{\"text\":\"a5m\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256,HandItems:[{id:"snowball",Count:1b,tag:{CustomModelData:1,weapons:["7.7mm gun"]}},{}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[a5m,plane-init,plane,entity-nohit,plane-seat],CustomName:"{\"text\":\"seat\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:donkey,Health:6f,Attributes:[{Name:"generic.max_health",Base:6}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1,NoAI:1,Silent:1,ChestedHorse:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:1000000,ShowParticles:0b}],Tags:[a5m,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256,NoGravity:0b}
summon armor_stand ~ ~ ~ {Tags:["a5m-body","a5m",plane-init,plane,has-model,model-changeable,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:85,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[-12f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["a5m-hitbox","a5m",plane-init,plane,plane-hitbox,has-offset,body,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"body\"}",Health:50f,Attributes:[{Name:"generic.max_health",Base:50}]}
summon armor_stand ~ ~ ~ {Tags:["a5m-hitbox","a5m",plane-init,plane,plane-hitbox,has-offset,engine,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"engine\"}",Health:50f,Attributes:[{Name:"generic.max_health",Base:50}]}
summon armor_stand ~ ~ ~ {Tags:["a5m-hitbox","a5m",plane-init,plane,plane-hitbox,has-offset,aileron-r,aileron,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-right\"}",Health:50f,Attributes:[{Name:"generic.max_health",Base:50}]}
summon armor_stand ~ ~ ~ {Tags:["a5m-hitbox","a5m",plane-init,plane,plane-hitbox,has-offset,aileron-l,aileron,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-left\"}",Health:50f,Attributes:[{Name:"generic.max_health",Base:50}]}
summon armor_stand ~ ~ ~ {Tags:["a5m-hitbox","a5m",plane-init,plane,plane-hitbox,has-offset,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-right\"}",Health:40f,Attributes:[{Name:"generic.max_health",Base:40}]}
summon armor_stand ~ ~ ~ {Tags:["a5m-hitbox","a5m",plane-init,plane,plane-hitbox,has-offset,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-left\"}",Health:40f,Attributes:[{Name:"generic.max_health",Base:40}]}
summon armor_stand ~ ~ ~ {Tags:["a5m-hitbox","a5m",plane-init,plane,plane-hitbox,has-offset,radder,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"radder\"}",Health:40f,Attributes:[{Name:"generic.max_health",Base:40}]}
summon armor_stand ~ ~ ~ {Tags:["a5m-hitbox","a5m",plane-init,plane,plane-hitbox,has-offset,cockpit,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"cockpit\"}",Health:50f,Attributes:[{Name:"generic.max_health",Base:50}]}

#ID付与
execute as @e[tag=plane-init,tag=plane-root,limit=1] at @s run function plane:summon/set-plane-id

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.rolling 0
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.speed 0
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.max-speed 15700
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.cruise-speed 9375
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.takeoff-speed 3500
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.stall-speed 3300
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.accelerate 35
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.resistance 21
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.energy-loss 4
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.deaccelerate 41
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.prop-strt-min 1600
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.prop-strt-max 1700
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.prop-stop-min 1400
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.prop-stop-max 1500
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.gear-ret-min 5900
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.gear-ret-max 6100
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.gear-po-min 5600
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.gear-po-max 5800

scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.landing-pitch -1400
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.AngX -1400
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.AngY 0
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.AngZ 0
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.AngX-old 0
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.AngY-old 0
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.pitch-speed 250
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.yaw-speed 290
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.roll-speed 480

scoreboard players set @e[tag=plane-init,tag=a5m-body] vp.parking-cmd 85
scoreboard players set @e[tag=plane-init,tag=a5m-body] vp.rolling-cmd 86
scoreboard players set @e[tag=plane-init,tag=a5m-body] vp.flying-cmd 86

scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.w1-reload 0
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.w2-reload 0
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.ammunition1 500
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.max-ammo1 500
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.max-ammo-rel1 140
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.plane-weapon 1
scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.weapon-types 2

scoreboard players set @e[tag=plane-init,tag=a5m-root] vp.max-engine 1

data modify storage minecraft:plane-datapack temporary.Pos set from entity @e[tag=plane-init,tag=a5m-root,limit=1] Pos
execute store result score @e[tag=plane-init,tag=a5m-root,limit=1] vp.PosX run data get storage minecraft:plane-datapack temporary.Pos[0] 10000
execute store result score @e[tag=plane-init,tag=a5m-root,limit=1] vp.PosY run data get storage minecraft:plane-datapack temporary.Pos[1] 10000
execute store result score @e[tag=plane-init,tag=a5m-root,limit=1] vp.PosZ run data get storage minecraft:plane-datapack temporary.Pos[2] 10000

#hitbocのスコア設定
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetZ 0
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetY -200
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetZ 2700
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetX -3000
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetY -400
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetZ 1400
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetX 3000
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetY -400
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetZ 1400
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetX -900
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetY -300
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetZ -3100
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetX 900
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetY -300
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetZ -3100
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetY 500
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetZ -3500
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetY 500
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetZ 1300

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init] remove plane-init
