#実行条件無し

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[ki43-root,ki43,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,"7p7mm",has-weapon1,tier1,main-weapon1],CustomName:"{\"text\":\"ki43\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256,NoGravity:0b,HandItems:[{id:"snowball",Count:1b,tag:{CustomModelData:1,weapons:["7.7mm gun"]}},{}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[ki43,plane-init,plane,entity-nohit,plane-seat],CustomName:"{\"text\":\"seat\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:donkey,Health:8f,Attributes:[{Name:"generic.max_health",Base:8}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1,NoAI:1,Silent:1,ChestedHorse:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:1000000,ShowParticles:0b}],Tags:[ki43,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256,NoGravity:0b}
summon armor_stand ~ ~ ~ {Tags:["ki43-body","ki43",plane-init,plane,has-model,model-changeable,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:67,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[-12f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["ki43-hitbox","ki43",plane-init,plane,plane-hitbox,has-offset,body,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"body\"}",Health:60f,Attributes:[{Name:"generic.max_health",Base:60}]}
summon armor_stand ~ ~ ~ {Tags:["ki43-hitbox","ki43",plane-init,plane,plane-hitbox,has-offset,engine,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"engine\"}",Health:60f,Attributes:[{Name:"generic.max_health",Base:60}]}
summon armor_stand ~ ~ ~ {Tags:["ki43-hitbox","ki43",plane-init,plane,plane-hitbox,has-offset,aileron-r,aileron,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-right\"}",Health:60f,Attributes:[{Name:"generic.max_health",Base:60}]}
summon armor_stand ~ ~ ~ {Tags:["ki43-hitbox","ki43",plane-init,plane,plane-hitbox,has-offset,aileron-l,aileron,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-left\"}",Health:60f,Attributes:[{Name:"generic.max_health",Base:60}]}
summon armor_stand ~ ~ ~ {Tags:["ki43-hitbox","ki43",plane-init,plane,plane-hitbox,has-offset,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-right\"}",Health:50f,Attributes:[{Name:"generic.max_health",Base:50}]}
summon armor_stand ~ ~ ~ {Tags:["ki43-hitbox","ki43",plane-init,plane,plane-hitbox,has-offset,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-left\"}",Health:50f,Attributes:[{Name:"generic.max_health",Base:50}]}
summon armor_stand ~ ~ ~ {Tags:["ki43-hitbox","ki43",plane-init,plane,plane-hitbox,has-offset,radder,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"radder\"}",Health:50f,Attributes:[{Name:"generic.max_health",Base:50}]}
summon armor_stand ~ ~ ~ {Tags:["ki43-hitbox","ki43",plane-init,plane,plane-hitbox,has-offset,cockpit,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"cockpit\"}",Health:80f,Attributes:[{Name:"generic.max_health",Base:80}]}

#武装種別変更
execute if entity @e[tag=ki43-spawner,distance=..0.1,tag=12p7mm] run tag @e[tag=plane-init,tag=ki43-root] remove 7p7mm
execute if entity @e[tag=ki43-spawner,distance=..0.1,tag=12p7mm] run tag @e[tag=plane-init,tag=ki43-root] add 12p7mm
execute if entity @e[tag=ki43-spawner,distance=..0.1,tag=12p7mm] run data modify entity @e[tag=plane-init,tag=ki43-root,limit=1] HandItems[0].tag.weapons[0] set value "12.7mm gun"

#ID付与
execute as @e[tag=plane-init,tag=plane-root,limit=1] at @s run function plane:summon/set-plane-id

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.rolling 0
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.speed 0
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.max-speed 17200
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.cruise-speed 12300
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.takeoff-speed 3800
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.stall-speed 3600
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.accelerate 68
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.resistance 49
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.energy-loss 11
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.deaccelerate 62
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.prop-strt-min 1600
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.prop-strt-max 1700
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.prop-stop-min 1400
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.prop-stop-max 1500
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.gear-ret-min 5600
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.gear-ret-max 5800
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.gear-po-min 5300
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.gear-po-max 5500

scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.landing-pitch -1250
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.AngX -1250
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.AngY 0
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.AngZ 0
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.AngY-old 0
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.pitch-speed 230
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.yaw-speed 260
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.roll-speed 650

scoreboard players set @e[tag=plane-init,tag=ki43-body] vp.parking-cmd 67
scoreboard players set @e[tag=plane-init,tag=ki43-body] vp.rolling-cmd 68
scoreboard players set @e[tag=plane-init,tag=ki43-body] vp.flying-cmd 69

scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.w1-cooltime 0
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.w2-cooltime 0
scoreboard players set @e[tag=plane-init,tag=ki43-root,tag=7p7mm] vp.ammunition1 500
scoreboard players set @e[tag=plane-init,tag=ki43-root,tag=12p7mm] vp.ammunition1 270
scoreboard players set @e[tag=plane-init,tag=ki43-root,tag=7p7mm] vp.max-ammo1 500
scoreboard players set @e[tag=plane-init,tag=ki43-root,tag=12p7mm] vp.max-ammo1 270
scoreboard players set @e[tag=plane-init,tag=ki43-root,tag=7p7mm] vp.max-w1-reload 140
scoreboard players set @e[tag=plane-init,tag=ki43-root,tag=12p7mm] vp.max-w1-reload 210
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.plane-weapon 1
scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.weapon-types 2

scoreboard players set @e[tag=plane-init,tag=ki43-root] vp.max-engine 1

data modify storage minecraft:plane-datapack temporary.Pos set from entity @e[tag=plane-init,tag=ki43-root,limit=1] Pos
execute store result score @e[tag=plane-init,tag=ki43-root,limit=1] vp.PosX run data get storage minecraft:plane-datapack temporary.Pos[0] 10000
execute store result score @e[tag=plane-init,tag=ki43-root,limit=1] vp.PosY run data get storage minecraft:plane-datapack temporary.Pos[1] 10000
execute store result score @e[tag=plane-init,tag=ki43-root,limit=1] vp.PosZ run data get storage minecraft:plane-datapack temporary.Pos[2] 10000

#hitbocのスコア設定
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetZ 0
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetY 100
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetZ 1500
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetX -3000
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetZ 100
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetX 3000
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetZ 100
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetX -900
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetY 300
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetZ -5400
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetX 900
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetY 300
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetZ -5400
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetY 1000
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetZ -5600
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetY 800
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetZ -200

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init] remove plane-init
