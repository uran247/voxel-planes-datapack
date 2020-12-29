#> plane-data:fw190d-9/fw190d9
#
# 実行条件無し
#
# @within
#   plane:**
#   weapon:**
        #declare tag fw190d9-hitbox
        #declare tag fw190d9-body

#> public
# @public
    #declare tag fw190d9

#> private
# @private
    #declare tag fw190d9
    #declare tag plane-init #初期化処理中のエンティティであることを示す


#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[fw190d9-root,fw190d9,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,has-weapon1,has-weapon2,main-weapon1,main-weapon2,main-weapon3,tier4],CustomName:'{"text":"fw190d9"}',Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256,HandItems:[{id:"snowball",Count:1b,tag:{CustomModelData:1,weapons:["20mm gun","13mm gun","bomb"]}},{}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[fw190d9,plane-init,plane,entity-nohit,plane-seat],CustomName:'{"text":"seat"}',Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:"donkey",Health:35f,Attributes:[{Name:"generic.max_health",Base:35d}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1,NoAI:1,Silent:1,ChestedHorse:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:[fw190d9,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["fw190d9-body","fw190d9",plane-init,plane,has-model,model-changeable,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:4,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[-12f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["fw190d9-hitbox","fw190d9",plane-init,plane,plane-hitbox,has-offset,body,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"body"}',Health:330f,Attributes:[{Name:"generic.max_health",Base:330d}]}
summon armor_stand ~ ~ ~ {Tags:["fw190d9-hitbox","fw190d9",plane-init,plane,plane-hitbox,has-offset,engine,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"engine"}',Health:300f,Attributes:[{Name:"generic.max_health",Base:300d}]}
summon armor_stand ~ ~ ~ {Tags:["fw190d9-hitbox","fw190d9",plane-init,plane,plane-hitbox,has-offset,aileron-r,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"aileron-right"}',Health:240f,Attributes:[{Name:"generic.max_health",Base:240d}]}
summon armor_stand ~ ~ ~ {Tags:["fw190d9-hitbox","fw190d9",plane-init,plane,plane-hitbox,has-offset,aileron-l,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"aileron-left"}',Health:240f,Attributes:[{Name:"generic.max_health",Base:240d}]}
summon armor_stand ~ ~ ~ {Tags:["fw190d9-hitbox","fw190d9",plane-init,plane,plane-hitbox,has-offset,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"elevator-right"}',Health:210f,Attributes:[{Name:"generic.max_health",Base:210d}]}
summon armor_stand ~ ~ ~ {Tags:["fw190d9-hitbox","fw190d9",plane-init,plane,plane-hitbox,has-offset,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"elevator-left"}',Health:210f,Attributes:[{Name:"generic.max_health",Base:210d}]}
summon armor_stand ~ ~ ~ {Tags:["fw190d9-hitbox","fw190d9",plane-init,plane,plane-hitbox,has-offset,radder,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"radder"}',Health:210f,Attributes:[{Name:"generic.max_health",Base:210d}]}
summon armor_stand ~ ~ ~ {Tags:["fw190d9-hitbox","fw190d9",plane-init,plane,plane-hitbox,has-offset,cockpit,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"cockpit"}',Health:360f,Attributes:[{Name:"generic.max_health",Base:360d}]}

#ID付与
execute as @e[tag=plane-init,tag=plane-root,limit=1] at @s run function plane:summon/set-plane-id

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
scoreboard players set @e[tag=plane-init] vp.rolling 0
scoreboard players set @e[tag=plane-init] vp.speed 0
scoreboard players set @e[tag=plane-init] vp.accelerate 62
scoreboard players set @e[tag=plane-init] vp.resistance 40
scoreboard players set @e[tag=plane-init] vp.energy-loss 16
scoreboard players set @e[tag=plane-init] vp.deaccelerate 87
scoreboard players set @e[tag=plane-init] vp.max-speed 24200
scoreboard players set @e[tag=plane-init] vp.cruise-speed 15600
scoreboard players set @e[tag=plane-init] vp.stall-speed 6300
scoreboard players set @e[tag=plane-init] vp.takeoff-speed 6500
scoreboard players set @e[tag=plane-init] vp.gear-ret-min 7800
scoreboard players set @e[tag=plane-init] vp.gear-ret-max 8000
scoreboard players set @e[tag=plane-init] vp.gear-po-min 7500
scoreboard players set @e[tag=plane-init] vp.gear-po-max 7700
scoreboard players set @e[tag=plane-init] vp.prop-strt-min 1600
scoreboard players set @e[tag=plane-init] vp.prop-strt-max 1700
scoreboard players set @e[tag=plane-init] vp.prop-stop-min 1400
scoreboard players set @e[tag=plane-init] vp.prop-stop-max 1500

scoreboard players set @e[tag=plane-init] vp.landing-pitch -1200
scoreboard players set @e[tag=plane-init] vp.AngX -1200
scoreboard players set @e[tag=plane-init] vp.AngY 0
scoreboard players set @e[tag=plane-init] vp.AngZ 0
scoreboard players set @e[tag=plane-init] vp.AngY-old 0
scoreboard players set @e[tag=plane-init] vp.pitch-speed 190
scoreboard players set @e[tag=plane-init] vp.yaw-speed 110
scoreboard players set @e[tag=plane-init] vp.roll-speed 1300

scoreboard players set @e[tag=plane-init] vp.parking-cmd 4
scoreboard players set @e[tag=plane-init] vp.rolling-cmd 5
scoreboard players set @e[tag=plane-init] vp.flying-cmd 6

scoreboard players set @e[tag=plane-init] vp.w1-cooltime 0
scoreboard players set @e[tag=plane-init] vp.w2-cooltime 0
scoreboard players set @e[tag=plane-init] vp.w3-cooltime 0
scoreboard players set @e[tag=plane-init] vp.ammunition1 250
scoreboard players set @e[tag=plane-init] vp.ammunition2 450
scoreboard players set @e[tag=plane-init] vp.ammunition3 0
scoreboard players set @e[tag=plane-init] vp.max-ammo1 250
scoreboard players set @e[tag=plane-init] vp.max-ammo2 450
scoreboard players set @e[tag=plane-init] vp.max-ammo3 1
scoreboard players set @e[tag=plane-init] vp.max-w1-reload 280
scoreboard players set @e[tag=plane-init] vp.max-w2-reload 220
scoreboard players set @e[tag=plane-init] vp.max-w3-reload 3600
scoreboard players set @e[tag=plane-init] vp.curr-weapon 1
scoreboard players set @e[tag=plane-init] vp.weapon-types 6

scoreboard players set @e[tag=plane-init] vp.max-engine 1

data modify storage minecraft:plane-datapack temporary.Pos set from entity @e[tag=plane-init,tag=plane-root,limit=1] Pos
execute store result score @e[tag=plane-init,limit=1] vp.PosX run data get storage minecraft:plane-datapack temporary.Pos[0] 10000
execute store result score @e[tag=plane-init,limit=1] vp.PosY run data get storage minecraft:plane-datapack temporary.Pos[1] 10000
execute store result score @e[tag=plane-init,limit=1] vp.PosZ run data get storage minecraft:plane-datapack temporary.Pos[2] 10000

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
