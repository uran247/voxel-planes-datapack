#実行条件無し

#機体召喚
summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[ki49-root,ki49,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,bombed,normal,250kg,has-weapon1,has-weapon2,has-weapon3,has-weapon4,main-weapon1,tier3],CustomName:"{\"text\":\"ki49\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256,NoGravity:0b,HandItems:[{id:"snowball",Count:1b,tag:{CustomModelData:1,weapons:["bomb"]}},{}]}
summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:0,Tags:[ki49,plane-init,plane,entity-nohit,plane-seat],CustomName:"{\"text\":\"seat\"}",Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:donkey,Health:11f,Attributes:[{Name:"generic.max_health",Base:11}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1,NoAI:1,Silent:1,ChestedHorse:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:1000000,ShowParticles:0b}],Tags:[ki49,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256,NoGravity:0b}
summon armor_stand ~ ~ ~ {Tags:["ki49-body","ki49",plane-init,plane,has-model,model-changeable,plane-parts,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:110,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["ki49-tail","ki49",plane-init,plane,has-model,plane-parts,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:113,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["ki49-rightwing","ki49",plane-init,plane,has-model,model-changeable,has-offset,plane-parts,entity-nohit],NoGravity:1b,Invisible:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:114,Unbreakable:1}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}

#hitbox召喚
summon armor_stand ~ ~ ~ {Tags:["ki49-hitbox","ki49",plane-init,plane,has-offset,plane-hitbox,body,offset-base,has-size,size30],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"body\"}",Health:80f,Attributes:[{Name:"generic.max_health",Base:80}]}
summon armor_stand ~ ~ ~ {Tags:["ki49-hitbox","ki49",plane-init,plane,has-offset,plane-hitbox,engine-r,engine,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"engine\"}",Health:60f,Attributes:[{Name:"generic.max_health",Base:60}]}
summon armor_stand ~ ~ ~ {Tags:["ki49-hitbox","ki49",plane-init,plane,has-offset,plane-hitbox,engine-l,engine,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"engine\"}",Health:60f,Attributes:[{Name:"generic.max_health",Base:60}]}
summon armor_stand ~ ~ ~ {Tags:["ki49-hitbox","ki49",plane-init,plane,has-offset,plane-hitbox,aileron-r,aileron,offset-base,has-size,size30],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-right\"}",Health:70f,Attributes:[{Name:"generic.max_health",Base:70}]}
summon armor_stand ~ ~ ~ {Tags:["ki49-hitbox","ki49",plane-init,plane,has-offset,plane-hitbox,aileron-l,aileron,offset-base,has-size,size30],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"aileron-left\"}",Health:70f,Attributes:[{Name:"generic.max_health",Base:70}]}
summon armor_stand ~ ~ ~ {Tags:["ki49-hitbox","ki49",plane-init,plane,has-offset,plane-hitbox,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-right\"}",Health:60f,Attributes:[{Name:"generic.max_health",Base:60}]}
summon armor_stand ~ ~ ~ {Tags:["ki49-hitbox","ki49",plane-init,plane,has-offset,plane-hitbox,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"elevator-left\"}",Health:60f,Attributes:[{Name:"generic.max_health",Base:60}]}
summon armor_stand ~ ~ ~ {Tags:["ki49-hitbox","ki49",plane-init,plane,has-offset,plane-hitbox,radder,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"radder\"}",Health:70f,Attributes:[{Name:"generic.max_health",Base:70}]}
summon armor_stand ~ ~ ~ {Tags:["ki49-hitbox","ki49",plane-init,plane,has-offset,plane-hitbox,cockpit,offset-base],NoGravity:1b,Invisible:1,Marker:1,Glowing:1,CustomName:"{\"text\":\"cockpit\"}",Health:80f,Attributes:[{Name:"generic.max_health",Base:80}]}

#ID付与
execute as @e[tag=plane-init,tag=plane-root,limit=1] at @s run function plane:summon/set-plane-id

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.speed 0
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.rolling 0
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.accelerate 43
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.resistance 30
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.energy-loss 19
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.deaccelerate 49
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.max-speed 17000
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.cruise-speed 12200
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.takeoff-speed 6100
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.stall-speed 5900
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.prop-strt-min 1500
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.prop-strt-max 1530
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.prop-stop-min 1400
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.prop-stop-max 1430
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.gear-ret-min 7400
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.gear-ret-max 7600
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.gear-po-min 7100
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.gear-po-max 7300

scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.landing-pitch -600
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.AngX -600
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.AngY 0
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.AngZ 0
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.AngY-old 0
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.pitch-speed 124
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.yaw-speed 95
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.roll-speed 90

scoreboard players set @e[tag=plane-init,tag=ki49-body] vp.parking-cmd 110
scoreboard players set @e[tag=plane-init,tag=ki49-body] vp.rolling-cmd 111
scoreboard players set @e[tag=plane-init,tag=ki49-body] vp.flying-cmd 112
scoreboard players set @e[tag=plane-init,tag=ki49-rightwing] vp.parking-cmd 114
scoreboard players set @e[tag=plane-init,tag=ki49-rightwing] vp.rolling-cmd 115
scoreboard players set @e[tag=plane-init,tag=ki49-rightwing] vp.flying-cmd 116

scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.w1-reload 0
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.w2-reload 0
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.w3-reload 0
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.w4-reload 0
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.w5-reload 0
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.w6-reload 0
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.w7-reload 0
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.ammunition1 4
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.ammunition2 500
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.ammunition3 500
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.ammunition4 500
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.ammunition5 500
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.ammunition6 500
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.ammunition7 500
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.max-ammo1 4
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.max-ammo2 500
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.max-ammo3 500
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.max-ammo4 500
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.max-ammo5 500
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.max-ammo6 500
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.max-ammo7 500
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.max-ammo-rel1 60
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.max-ammo-rel2 140
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.max-ammo-rel3 140
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.max-ammo-rel4 140
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.max-ammo-rel5 140
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.max-ammo-rel6 140
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.max-ammo-rel7 140
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.plane-weapon 1
scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.weapon-types 2

scoreboard players set @e[tag=plane-init,tag=ki49-root] vp.max-engine 2

execute store result score @e[tag=plane-init,tag=ki49-root,limit=1] vp.PosX run data get entity @e[tag=plane-init,tag=ki49-root,limit=1] Pos[0] 10000
execute store result score @e[tag=plane-init,tag=ki49-root,limit=1] vp.PosY run data get entity @e[tag=plane-init,tag=ki49-root,limit=1] Pos[1] 10000
execute store result score @e[tag=plane-init,tag=ki49-root,limit=1] vp.PosZ run data get entity @e[tag=plane-init,tag=ki49-root,limit=1] Pos[2] 10000

#offset設定
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetZ 0
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
