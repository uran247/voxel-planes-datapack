#実行条件無し

#機体召喚
summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[ki21-root,ki21,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,bombed,normal,50kg,has-weapon1,has-weapon2,has-weapon3,has-weapon4,main-weapon1,tier1],CustomName:"{\"text\":\"ki21\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256,NoGravity:0b,HandItems:[{id:"snowball",Count:1b,tag:{CustomModelData:1,weapons:["bomb"]}},{}]}
summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[ki21,plane-init,plane,entity-nohit,plane-seat],CustomName:"{\"text\":\"seat\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:donkey,Health:11f,Attributes:[{Name:"generic.max_health",Base:11}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1,NoAI:1,Silent:1,ChestedHorse:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:1000000,ShowParticles:0b}],Tags:[ki21,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256,NoGravity:0b}
summon armor_stand ~ ~ ~ {Tags:["ki21-body","ki21",plane-init,plane,has-model,model-changeable,plane-parts,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:78,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["ki21-tail","ki21",plane-init,plane,has-model,plane-parts,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:83,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["ki21-rightwing","ki21",plane-init,plane,has-model,has-offset,plane-parts,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:81,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["ki21-leftwing","ki21",plane-init,plane,has-model,has-offset,plane-parts,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:82,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}

#hitbox召喚
summon armor_stand ~ ~ ~ {Tags:["ki21-hitbox","ki21",plane-init,plane,has-offset,plane-hitbox,body,offset-base,has-size,size30],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"body\"}",Health:80f,Attributes:[{Name:"generic.max_health",Base:80}]}
summon armor_stand ~ ~ ~ {Tags:["ki21-hitbox","ki21",plane-init,plane,has-offset,plane-hitbox,engine-r,engine,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"engine\"}",Health:60f,Attributes:[{Name:"generic.max_health",Base:60}]}
summon armor_stand ~ ~ ~ {Tags:["ki21-hitbox","ki21",plane-init,plane,has-offset,plane-hitbox,engine-l,engine,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"engine\"}",Health:60f,Attributes:[{Name:"generic.max_health",Base:60}]}
summon armor_stand ~ ~ ~ {Tags:["ki21-hitbox","ki21",plane-init,plane,has-offset,plane-hitbox,aileron-r,aileron,offset-base,has-size,size30],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-right\"}",Health:70f,Attributes:[{Name:"generic.max_health",Base:70}]}
summon armor_stand ~ ~ ~ {Tags:["ki21-hitbox","ki21",plane-init,plane,has-offset,plane-hitbox,aileron-l,aileron,offset-base,has-size,size30],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-left\"}",Health:70f,Attributes:[{Name:"generic.max_health",Base:70}]}
summon armor_stand ~ ~ ~ {Tags:["ki21-hitbox","ki21",plane-init,plane,has-offset,plane-hitbox,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-right\"}",Health:60f,Attributes:[{Name:"generic.max_health",Base:60}]}
summon armor_stand ~ ~ ~ {Tags:["ki21-hitbox","ki21",plane-init,plane,has-offset,plane-hitbox,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-left\"}",Health:60f,Attributes:[{Name:"generic.max_health",Base:60}]}
summon armor_stand ~ ~ ~ {Tags:["ki21-hitbox","ki21",plane-init,plane,has-offset,plane-hitbox,radder,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"radder\"}",Health:70f,Attributes:[{Name:"generic.max_health",Base:70}]}
summon armor_stand ~ ~ ~ {Tags:["ki21-hitbox","ki21",plane-init,plane,has-offset,plane-hitbox,cockpit,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"cockpit\"}",Health:80f,Attributes:[{Name:"generic.max_health",Base:80}]}

#ID付与
execute as @e[tag=plane-init,tag=plane-root,limit=1] at @s run function plane:summon/set-plane-id

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.speed 0
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.rolling 0
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.accelerate 54
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.resistance 42
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.energy-loss 17
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.deaccelerate 100
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.max-speed 16600
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.cruise-speed 13200
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.takeoff-speed 5200
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.stall-speed 5000
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.prop-strt-min 1500
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.prop-strt-max 1530
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.prop-stop-min 1400
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.prop-stop-max 1430
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.gear-ret-min 5700
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.gear-ret-max 5900
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.gear-po-min 5400
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.gear-po-max 5600

scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.landing-pitch -750
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.AngX -750
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.AngY 0
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.AngZ 0
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.AngY-old 0
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.pitch-speed 300
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.yaw-speed 260
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.roll-speed 240

scoreboard players set @e[tag=plane-init,tag=ki21-body] vp.parking-cmd 78
scoreboard players set @e[tag=plane-init,tag=ki21-body] vp.rolling-cmd 79
scoreboard players set @e[tag=plane-init,tag=ki21-body] vp.flying-cmd 80

scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.w1-cooltime 0
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.w2-cooltime 0
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.w3-cooltime 0
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.w4-cooltime 0
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.ammunition1 20
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.ammunition2 500
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.ammunition3 500
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.ammunition4 500
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.max-ammo1 20
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.max-ammo2 500
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.max-ammo3 500
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.max-ammo4 500
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.max-w1-reload 600
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.max-w2-reload 140
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.max-w3-reload 140
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.max-w4-reload 140
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.plane-weapon 1
scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.weapon-types 2

scoreboard players set @e[tag=plane-init,tag=ki21-root] vp.max-engine 2

data modify storage minecraft:plane-datapack temporary.Pos set from entity @e[tag=plane-init,tag=ki21-root,limit=1] Pos
execute store result score @e[tag=plane-init,tag=ki21-root,limit=1] vp.PosX run data get storage minecraft:plane-datapack temporary.Pos[0] 10000
execute store result score @e[tag=plane-init,tag=ki21-root,limit=1] vp.PosY run data get storage minecraft:plane-datapack temporary.Pos[1] 10000
execute store result score @e[tag=plane-init,tag=ki21-root,limit=1] vp.PosZ run data get storage minecraft:plane-datapack temporary.Pos[2] 10000

#offset設定
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetZ 0
scoreboard players set @e[tag=ki21-rightwing,tag=plane-init] vp.offsetX -5740
scoreboard players set @e[tag=ki21-rightwing,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=ki21-rightwing,tag=plane-init] vp.offsetZ 0
scoreboard players set @e[tag=ki21-leftwing,tag=plane-init] vp.offsetX 5660
scoreboard players set @e[tag=ki21-leftwing,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=ki21-leftwing,tag=plane-init] vp.offsetZ 0
scoreboard players set @e[tag=engine-l,tag=plane-init] vp.offsetX 3000
scoreboard players set @e[tag=engine-l,tag=plane-init] vp.offsetY 250
scoreboard players set @e[tag=engine-l,tag=plane-init] vp.offsetZ 6800
scoreboard players set @e[tag=engine-r,tag=plane-init] vp.offsetX -3000
scoreboard players set @e[tag=engine-r,tag=plane-init] vp.offsetY 250
scoreboard players set @e[tag=engine-r,tag=plane-init] vp.offsetZ 6800
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetX -7400
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetY 700
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetZ 3000
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetX 7300
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetY 700
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetZ 3000
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetX -2300
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetY 600
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetZ -6500
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetX 2300
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetY 600
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetZ -6500
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetY 2400
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetZ -6800
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetY 1600
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetZ 6600

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init] remove plane-init

