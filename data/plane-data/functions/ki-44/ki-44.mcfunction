#実行条件無し

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[ki44-root,ki44,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,has-weapon1,tier2,main-weapon1],CustomName:"{\"text\":\"ki44\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256,NoGravity:0b,HandItems:[{id:"snowball",Count:1b,tag:{CustomModelData:1,weapons:["12.7mm gun","bomb"]}},{}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[ki44,plane-init,plane,entity-nohit,plane-seat],CustomName:"{\"text\":\"seat\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:donkey,Health:15f,Attributes:[{Name:"generic.max_health",Base:15}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1,NoAI:1,Silent:1,ChestedHorse:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:1000000,ShowParticles:0b}],Tags:[ki44,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256,NoGravity:0b}
summon armor_stand ~ ~ ~ {Tags:["ki44-body","ki44",plane-init,plane,has-model,model-changeable,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:90,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[-12f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["ki44-hitbox","ki44",plane-init,plane,plane-hitbox,has-offset,body,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"body\"}",Health:120f,Attributes:[{Name:"generic.max_health",Base:120}]}
summon armor_stand ~ ~ ~ {Tags:["ki44-hitbox","ki44",plane-init,plane,plane-hitbox,has-offset,engine,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"engine\"}",Health:110f,Attributes:[{Name:"generic.max_health",Base:110}]}
summon armor_stand ~ ~ ~ {Tags:["ki44-hitbox","ki44",plane-init,plane,plane-hitbox,has-offset,aileron-r,aileron,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-right\"}",Health:110f,Attributes:[{Name:"generic.max_health",Base:110}]}
summon armor_stand ~ ~ ~ {Tags:["ki44-hitbox","ki44",plane-init,plane,plane-hitbox,has-offset,aileron-l,aileron,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-left\"}",Health:110f,Attributes:[{Name:"generic.max_health",Base:110}]}
summon armor_stand ~ ~ ~ {Tags:["ki44-hitbox","ki44",plane-init,plane,plane-hitbox,has-offset,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-right\"}",Health:100f,Attributes:[{Name:"generic.max_health",Base:100}]}
summon armor_stand ~ ~ ~ {Tags:["ki44-hitbox","ki44",plane-init,plane,plane-hitbox,has-offset,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-left\"}",Health:100f,Attributes:[{Name:"generic.max_health",Base:100}]}
summon armor_stand ~ ~ ~ {Tags:["ki44-hitbox","ki44",plane-init,plane,plane-hitbox,has-offset,radder,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"radder\"}",Health:100f,Attributes:[{Name:"generic.max_health",Base:100}]}
summon armor_stand ~ ~ ~ {Tags:["ki44-hitbox","ki44",plane-init,plane,plane-hitbox,has-offset,cockpit,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"cockpit\"}",Health:160f,Attributes:[{Name:"generic.max_health",Base:160}]}

#ID付与
execute as @e[tag=plane-init,tag=plane-root,limit=1] at @s run function plane:summon/set-plane-id

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.rolling 0
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.speed 0
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.max-speed 21000
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.cruise-speed 13900
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.takeoff-speed 5800
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.stall-speed 5600
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.accelerate 70
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.resistance 46
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.energy-loss 18
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.deaccelerate 67
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.prop-strt-min 1600
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.prop-strt-max 1700
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.prop-stop-min 1400
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.prop-stop-max 1500
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.gear-ret-min 7100
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.gear-ret-max 7300
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.gear-po-min 6800
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.gear-po-max 7000

scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.landing-pitch -1150
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.AngX -1150
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.AngY 0
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.AngZ 0
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.AngY-old 0
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.pitch-speed 180
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.yaw-speed 100
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.roll-speed 1300

scoreboard players set @e[tag=plane-init,tag=ki44-body] vp.parking-cmd 90
scoreboard players set @e[tag=plane-init,tag=ki44-body] vp.rolling-cmd 91
scoreboard players set @e[tag=plane-init,tag=ki44-body] vp.flying-cmd 92

scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.w1-cooltime 0
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.ammunition1 250
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.max-ammo1 250
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.max-w1-reload 140
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.ammunition2 2
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.max-ammo2 2
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.max-w2-reload 3600
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.plane-weapon 1
scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.weapon-types 2

scoreboard players set @e[tag=plane-init,tag=ki44-root] vp.max-engine 1

data modify storage minecraft:plane-datapack temporary.Pos set from entity @e[tag=plane-init,tag=ki44-root,limit=1] Pos
execute store result score @e[tag=plane-init,tag=ki44-root,limit=1] vp.PosX run data get storage minecraft:plane-datapack temporary.Pos[0] 10000
execute store result score @e[tag=plane-init,tag=ki44-root,limit=1] vp.PosY run data get storage minecraft:plane-datapack temporary.Pos[1] 10000
execute store result score @e[tag=plane-init,tag=ki44-root,limit=1] vp.PosZ run data get storage minecraft:plane-datapack temporary.Pos[2] 10000

#hitboxのスコア設定
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetZ 0
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetZ 2900
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetX -3000
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetY -400
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetZ 1400
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetX 3000
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetY -400
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetZ 1400
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetX -1000
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetY -100
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetZ -3500
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetX 1000
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetY -100
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetZ -3500
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetY 700
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetZ -4300
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetY 700
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetZ 700

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init] remove plane-init
