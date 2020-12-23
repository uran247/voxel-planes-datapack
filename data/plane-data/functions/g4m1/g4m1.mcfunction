#実行条件無し

#機体召喚
summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[g4m1-root,g4m1,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,bombed,normal,250kg,has-weapon1,has-weapon2,has-weapon3,has-weapon4,has-weapon5,has-weapon6,main-weapon1,tier2],CustomName:"{\"text\":\"g4m1\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256,NoGravity:0b,HandItems:[{id:"snowball",Count:1b,tag:{CustomModelData:1,weapons:["bomb"]}},{}]}
summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[g4m1,plane-init,plane,entity-nohit,plane-seat],CustomName:"{\"text\":\"seat\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:donkey,Health:14f,Attributes:[{Name:"generic.max_health",Base:14}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1,NoAI:1,Silent:1,ChestedHorse:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:1000000,ShowParticles:0b}],Tags:[g4m1,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256,NoGravity:0b}
summon armor_stand ~ ~ ~ {Tags:["g4m1-body","g4m1",plane-init,plane,has-model,model-changeable,plane-parts,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:96,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["g4m1-tail","g4m1",plane-init,plane,has-model,plane-parts,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:99,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["g4m1-rightwing","g4m1",plane-init,plane,has-model,has-offset,plane-parts,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:100,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["g4m1-leftwing","g4m1",plane-init,plane,has-model,has-offset,plane-parts,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:101,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}

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
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.speed 0
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.rolling 0
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.accelerate 33
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.resistance 23
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.energy-loss 14
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.deaccelerate 62
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.max-speed 15800
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.cruise-speed 10900
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.takeoff-speed 4100
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.stall-speed 3900
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.prop-strt-min 1500
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.prop-strt-max 1530
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.prop-stop-min 1400
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.prop-stop-max 1430
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.gear-ret-min 5400
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.gear-ret-max 5600
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.gear-po-min 5100
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.gear-po-max 5300

scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.landing-pitch -500
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.AngX -500
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.AngY 0
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.AngZ 0
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.AngY-old 0
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.pitch-speed 150
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.yaw-speed 113
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.roll-speed 195

scoreboard players set @e[tag=plane-init,tag=g4m1-body] vp.parking-cmd 96
scoreboard players set @e[tag=plane-init,tag=g4m1-body] vp.rolling-cmd 97
scoreboard players set @e[tag=plane-init,tag=g4m1-body] vp.flying-cmd 98

scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.w1-cooltime 0
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.w2-cooltime 0
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.w3-cooltime 0
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.w4-cooltime 0
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.w5-cooltime 0
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.w6-cooltime 0
scoreboard players set @e[tag=plane-init,tag=g4m1-root,tag=250kg] vp.ammunition1 4
scoreboard players set @e[tag=plane-init,tag=g4m1-root,tag=has-torpedo] vp.ammunition1 1
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.ammunition2 500
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.ammunition3 500
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.ammunition4 500
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.ammunition5 500
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.ammunition6 500
scoreboard players set @e[tag=plane-init,tag=g4m1-root,tag=250kg] vp.max-ammo1 4
scoreboard players set @e[tag=plane-init,tag=g4m1-root,tag=has-torpedo] vp.max-ammo1 1
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.max-ammo2 500
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.max-ammo3 500
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.max-ammo4 500
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.max-ammo5 500
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.max-ammo6 500
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.max-w1-reload 600
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.max-w2-reload 140
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.max-w3-reload 140
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.max-w4-reload 140
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.max-w5-reload 140
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.max-w6-reload 140
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.plane-weapon 1
scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.weapon-types 2

scoreboard players set @e[tag=plane-init,tag=g4m1-root] vp.max-engine 2

data modify storage minecraft:plane-datapack temporary.Pos set from entity @e[tag=plane-init,tag=g4m1-root,limit=1] Pos
execute store result score @e[tag=plane-init,tag=g4m1-root,limit=1] vp.PosX run data get storage minecraft:plane-datapack temporary.Pos[0] 10000
execute store result score @e[tag=plane-init,tag=g4m1-root,limit=1] vp.PosY run data get storage minecraft:plane-datapack temporary.Pos[1] 10000
execute store result score @e[tag=plane-init,tag=g4m1-root,limit=1] vp.PosZ run data get storage minecraft:plane-datapack temporary.Pos[2] 10000

#offset設定
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetZ 0
scoreboard players set @e[tag=g4m1-rightwing,tag=plane-init] vp.offsetX -6500
scoreboard players set @e[tag=g4m1-rightwing,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=g4m1-rightwing,tag=plane-init] vp.offsetZ 0
scoreboard players set @e[tag=g4m1-leftwing,tag=plane-init] vp.offsetX 6500
scoreboard players set @e[tag=g4m1-leftwing,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=g4m1-leftwing,tag=plane-init] vp.offsetZ 0
scoreboard players set @e[tag=engine-l,tag=plane-init] vp.offsetX 3000
scoreboard players set @e[tag=engine-l,tag=plane-init] vp.offsetY 250
scoreboard players set @e[tag=engine-l,tag=plane-init] vp.offsetZ 8000
scoreboard players set @e[tag=engine-r,tag=plane-init] vp.offsetX -3000
scoreboard players set @e[tag=engine-r,tag=plane-init] vp.offsetY 250
scoreboard players set @e[tag=engine-r,tag=plane-init] vp.offsetZ 8000
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetX -7400
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetY 1000
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetZ 4200
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetX 7300
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetY 1000
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetZ 4200
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetX -2300
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetY 1200
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetZ -6100
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetX 2300
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetY 1200
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetZ -6100
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetY 3000
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetZ -6500
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetY 1900
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetZ 7500

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init] remove plane-init
