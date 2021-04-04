#実行条件無し

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[re2005,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,tier3],CustomName:"{\"text\":\"re2005\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256,NoGravity:0b}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[re2005,plane-init,plane,entity-nohit,plane-seat],CustomName:"{\"text\":\"seat\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:donkey,Health:12f,Attributes:[{Name:"generic.max_health",Base:12}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1,NoAI:1,Silent:1,ChestedHorse:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:1000000,ShowParticles:0b}],Tags:[re2005,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256,NoGravity:0b}
summon armor_stand ~ ~ ~ {Tags:["re2005-body","re2005",plane-init,plane,has-model,model-changeable,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:119,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[-12f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["re2005",plane-init,plane,plane-hitbox,has-offset,body,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"body\"}",Health:110f,Attributes:[{Name:"generic.max_health",Base:110}]}
summon armor_stand ~ ~ ~ {Tags:["re2005",plane-init,plane,plane-hitbox,has-offset,engine,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"engine\"}",Health:100f,Attributes:[{Name:"generic.max_health",Base:100}]}
summon armor_stand ~ ~ ~ {Tags:["re2005",plane-init,plane,plane-hitbox,has-offset,aileron-r,aileron,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-right\"}",Health:90f,Attributes:[{Name:"generic.max_health",Base:90}]}
summon armor_stand ~ ~ ~ {Tags:["re2005",plane-init,plane,plane-hitbox,has-offset,aileron-l,aileron,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-left\"}",Health:90f,Attributes:[{Name:"generic.max_health",Base:90}]}
summon armor_stand ~ ~ ~ {Tags:["re2005",plane-init,plane,plane-hitbox,has-offset,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-right\"}",Health:70f,Attributes:[{Name:"generic.max_health",Base:70}]}
summon armor_stand ~ ~ ~ {Tags:["re2005",plane-init,plane,plane-hitbox,has-offset,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-left\"}",Health:70f,Attributes:[{Name:"generic.max_health",Base:70}]}
summon armor_stand ~ ~ ~ {Tags:["re2005",plane-init,plane,plane-hitbox,has-offset,radder,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"radder\"}",Health:70f,Attributes:[{Name:"generic.max_health",Base:70}]}
summon armor_stand ~ ~ ~ {Tags:["re2005",plane-init,plane,plane-hitbox,has-offset,cockpit,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"cockpit\"}",Health:120f,Attributes:[{Name:"generic.max_health",Base:120}]}

#ID付与
execute as @e[tag=plane-init,tag=plane-root,limit=1] at @s run function plane:summon/set-plane-id

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
scoreboard players set @e[tag=plane-init,tag=re2005-root] vp.rolling 0
scoreboard players set @e[tag=plane-init,tag=re2005-root] vp.speed 0
scoreboard players set @e[tag=plane-init,tag=re2005-root] vp.accelerate 62
scoreboard players set @e[tag=plane-init,tag=re2005-root] vp.resistance 35
scoreboard players set @e[tag=plane-init,tag=re2005-root] vp.energy-loss 14
scoreboard players set @e[tag=plane-init,tag=re2005-root] vp.deaccelerate 74
scoreboard players set @e[tag=plane-init,tag=re2005-root] vp.max-speed 22400
scoreboard players set @e[tag=plane-init,tag=re2005-root] vp.cruise-speed 12800
scoreboard players set @e[tag=plane-init,tag=re2005-root] vp.takeoff-speed 5400
scoreboard players set @e[tag=plane-init,tag=re2005-root] vp.stall-speed 5200
scoreboard players set @e[tag=plane-init,tag=re2005-root] vp.prop-strt-min 1600
scoreboard players set @e[tag=plane-init,tag=re2005-root] vp.prop-strt-max 1700
scoreboard players set @e[tag=plane-init,tag=re2005-root] vp.prop-stop-min 1400
scoreboard players set @e[tag=plane-init,tag=re2005-root] vp.prop-stop-max 1500
scoreboard players set @e[tag=plane-init,tag=re2005-root] vp.gear-ret-min 6700
scoreboard players set @e[tag=plane-init,tag=re2005-root] vp.gear-ret-max 6900
scoreboard players set @e[tag=plane-init,tag=re2005-root] vp.gear-po-min 6400
scoreboard players set @e[tag=plane-init,tag=re2005-root] vp.gear-po-max 6600

scoreboard players set @e[tag=plane-init,tag=re2005-root] vp.landing-pitch -1350
scoreboard players set @e[tag=plane-init,tag=re2005-root] vp.AngX -1350
scoreboard players set @e[tag=plane-init,tag=re2005-root] vp.AngY 0
scoreboard players set @e[tag=plane-init,tag=re2005-root] vp.AngZ 0
scoreboard players set @e[tag=plane-init,tag=re2005-root] vp.AngY-old 0
scoreboard players set @e[tag=plane-init,tag=re2005-root] vp.pitch-speed 195
scoreboard players set @e[tag=plane-init,tag=re2005-root] vp.yaw-speed 130
scoreboard players set @e[tag=plane-init,tag=re2005-root] vp.roll-speed 600

scoreboard players set @e[tag=plane-init,tag=re2005-body] vp.parking-cmd 119
scoreboard players set @e[tag=plane-init,tag=re2005-body] vp.rolling-cmd 120
scoreboard players set @e[tag=plane-init,tag=re2005-body] vp.flying-cmd 121

scoreboard players set @e[tag=plane-init,tag=re2005-root] vp.max-engine 1

data modify storage minecraft:plane-datapack temporary.Pos set from entity @e[tag=plane-init,tag=re2005-root,limit=1] Pos
execute store result score @e[tag=plane-init,tag=re2005-root,limit=1] vp.PosX run data get storage minecraft:plane-datapack temporary.Pos[0] 10000
execute store result score @e[tag=plane-init,tag=re2005-root,limit=1] vp.PosY run data get storage minecraft:plane-datapack temporary.Pos[1] 10000
execute store result score @e[tag=plane-init,tag=re2005-root,limit=1] vp.PosZ run data get storage minecraft:plane-datapack temporary.Pos[2] 10000

#hitboxのスコア設定
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetZ 0
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetZ 2700
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetX -3200
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetY -300
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetZ 900
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetX 3200
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetY -300
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetZ 900
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetX -1300
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetZ -3800
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetX 1300
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetZ -3800
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetY 800
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetZ -4200
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetY 700
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetZ 1100

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init] remove plane-init
