#> plane-data:d3a/d3a
#
# @within
#   plane:**
#   weapon:**
        #declare tag d3a-hitbox
        #declare tag d3a-body

#> public
# @public
    #declare tag d3a

#> private
# @private
    #declare tag plane-init #初期化処理中のエンティティであることを示す

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[d3a-root,d3a,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,has-bomb,normal,250kg,60kg,has-weapon1,has-weapon2,has-weapon3,main-weapon1,main-weapon2,tier1],CustomName:'{"text":"d3a"}',Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256,HandItems:[{id:"snowball",Count:1b,tag:{CustomModelData:1,weapons:["7.7mm gun","bomb"]}},{}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[d3a,plane-init,plane,entity-nohit,plane-seat],CustomName:'{"text":"seat"}',Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:"donkey",Health:6f,Attributes:[{Name:"generic.max_health",Base:6d}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1b,NoAI:1b,Silent:1b,ChestedHorse:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:[d3a,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:[d3a-body,d3a,plane-init,plane,has-model,model-changeable,plane-parts,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:73,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:[d3a-rightwing,d3a,plane-init,plane,has-model,plane-parts,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:75,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}

#hitbox召喚
summon armor_stand ~ ~ ~ {Tags:["d3a-hitbox","d3a",plane-init,has-offset,plane,plane-hitbox,body,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"body"}',Health:50f,Attributes:[{Name:"generic.max_health",Base:50d}]}
summon armor_stand ~ ~ ~ {Tags:["d3a-hitbox","d3a",plane-init,has-offset,plane,plane-hitbox,engine,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"engine"}',Health:50f,Attributes:[{Name:"generic.max_health",Base:50d}]}
summon armor_stand ~ ~ ~ {Tags:["d3a-hitbox","d3a",plane-init,has-offset,plane,plane-hitbox,aileron-r,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"aileron-right"}',Health:50f,Attributes:[{Name:"generic.max_health",Base:50d}]}
summon armor_stand ~ ~ ~ {Tags:["d3a-hitbox","d3a",plane-init,has-offset,plane,plane-hitbox,aileron-l,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"aileron-left"}',Health:50f,Attributes:[{Name:"generic.max_health",Base:50d}]}
summon armor_stand ~ ~ ~ {Tags:["d3a-hitbox","d3a",plane-init,has-offset,plane,plane-hitbox,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"elevator-right"}',Health:40f,Attributes:[{Name:"generic.max_health",Base:40d}]}
summon armor_stand ~ ~ ~ {Tags:["d3a-hitbox","d3a",plane-init,has-offset,plane,plane-hitbox,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"elevator-left"}',Health:40f,Attributes:[{Name:"generic.max_health",Base:40d}]}
summon armor_stand ~ ~ ~ {Tags:["d3a-hitbox","d3a",plane-init,has-offset,plane,plane-hitbox,radder,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"radder"}',Health:40f,Attributes:[{Name:"generic.max_health",Base:40d}]}
summon armor_stand ~ ~ ~ {Tags:["d3a-hitbox","d3a",plane-init,has-offset,plane,plane-hitbox,cockpit,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"cockpit"}',Health:50f,Attributes:[{Name:"generic.max_health",Base:50d}]}

#ID付与
execute as @e[tag=plane-init,tag=plane-root,limit=1] at @s run function plane:summon/set-plane-id

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.speed 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.rolling 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.accelerate 45
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.resistance 28
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.energy-loss 10
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.deaccelerate 65

scoreboard players set @e[tag=plane-init,tag=plane-root] vp.max-speed 13200
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.cruise-speed 8300
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.takeoff-speed 3800
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.stall-speed 3600
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-strt-min 1500
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-strt-max 1530
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-stop-min 1400
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-stop-max 1430
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-ret-min 6100
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-ret-max 6300
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-po-min 5800
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-po-max 6000

scoreboard players set @e[tag=plane-init,tag=plane-root] vp.landing-pitch -1250
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngX -1250
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngY 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngZ 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngY-old 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.pitch-speed 130
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.yaw-speed 100
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.roll-speed 390

scoreboard players set @e[tag=plane-init,tag=d3a-body] vp.parking-cmd 73
scoreboard players set @e[tag=plane-init,tag=d3a-body] vp.rolling-cmd 74
scoreboard players set @e[tag=plane-init,tag=d3a-body] vp.flying-cmd 74

scoreboard players set @e[tag=plane-init,tag=plane-root] vp.w1-cooltime 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.w2-cooltime 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.w3-cooltime 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.ammunition1 500
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.ammunition2 3
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.ammunition3 500
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.max-ammo1 500
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.max-ammo2 3
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.max-ammo3 500
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.max-w1-reload 140
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.max-w2-reload 500
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.max-w3-reload 140
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.curr-weapon 1
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.weapon-types 6

scoreboard players set @e[tag=plane-init,tag=plane-root] vp.max-engine 1

data modify storage minecraft:plane-datapack temporary.Pos set from entity @e[tag=plane-init,tag=plane-root,limit=1] Pos
execute store result score @e[tag=plane-init,tag=plane-root,limit=1] vp.PosX run data get storage minecraft:plane-datapack temporary.Pos[0] 10000
execute store result score @e[tag=plane-init,tag=plane-root,limit=1] vp.PosY run data get storage minecraft:plane-datapack temporary.Pos[1] 10000
execute store result score @e[tag=plane-init,tag=plane-root,limit=1] vp.PosZ run data get storage minecraft:plane-datapack temporary.Pos[2] 10000

#hitboxのスコア設定
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetZ 0
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetZ 3000
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetX -4000
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetY -100
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetZ 1000
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetX 4000
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetY -100
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetZ 1000
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetX -1200
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetY 100
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetZ -4900
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetX 1200
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetY 100
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetZ -4900
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetY 1100
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetZ -4900
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetY 900
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetZ 900

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init] remove plane-init

