#> plane-data:ki-61/ki-61
#
# @within
#   plane:**
#   weapon:**
        #declare tag ki61-hitbox
        #declare tag ki61-body

#> public
# @public
    #declare tag ki61

#> private
# @private
    #declare tag plane-init #初期化処理中のエンティティであることを示す

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[ki61-root,ki61,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,has-weapon1,has-weapon2,tier3,main-weapon1,main-weapon2],CustomName:'{"text":"ki61"}',Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256,HandItems:[{id:"snowball",Count:1b,tag:{CustomModelData:1,weapons:["20mm gun","12.7mm gun","bomb"]}},{}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[ki61,plane-init,plane,entity-nohit,plane-seat],CustomName:'{"text":"seat"}',Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:"donkey",Health:15f,Attributes:[{Name:"generic.max_health",Base:15d}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1b,NoAI:1b,Silent:1b,ChestedHorse:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:[ki61,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["ki61-body","ki61",plane-init,plane,has-model,model-changeable,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:102,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[-12f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["ki61-hitbox","ki61",plane-init,plane,plane-hitbox,has-offset,body,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"body"}',Health:120f,Attributes:[{Name:"generic.max_health",Base:120d}]}
summon armor_stand ~ ~ ~ {Tags:["ki61-hitbox","ki61",plane-init,plane,plane-hitbox,has-offset,engine,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"engine"}',Health:110f,Attributes:[{Name:"generic.max_health",Base:110d}]}
summon armor_stand ~ ~ ~ {Tags:["ki61-hitbox","ki61",plane-init,plane,plane-hitbox,has-offset,aileron-r,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"aileron-right"}',Health:110f,Attributes:[{Name:"generic.max_health",Base:110d}]}
summon armor_stand ~ ~ ~ {Tags:["ki61-hitbox","ki61",plane-init,plane,plane-hitbox,has-offset,aileron-l,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"aileron-left"}',Health:110f,Attributes:[{Name:"generic.max_health",Base:110d}]}
summon armor_stand ~ ~ ~ {Tags:["ki61-hitbox","ki61",plane-init,plane,plane-hitbox,has-offset,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"elevator-right"}',Health:100f,Attributes:[{Name:"generic.max_health",Base:100d}]}
summon armor_stand ~ ~ ~ {Tags:["ki61-hitbox","ki61",plane-init,plane,plane-hitbox,has-offset,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"elevator-left"}',Health:100f,Attributes:[{Name:"generic.max_health",Base:100d}]}
summon armor_stand ~ ~ ~ {Tags:["ki61-hitbox","ki61",plane-init,plane,plane-hitbox,has-offset,radder,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"radder"}',Health:100f,Attributes:[{Name:"generic.max_health",Base:100d}]}
summon armor_stand ~ ~ ~ {Tags:["ki61-hitbox","ki61",plane-init,plane,plane-hitbox,has-offset,cockpit,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"cockpit"}',Health:160f,Attributes:[{Name:"generic.max_health",Base:160d}]}

#ID付与
execute as @e[tag=plane-init,tag=plane-root,limit=1] at @s run function plane:summon/set-plane-id

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.rolling 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.speed 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.max-speed 19400
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.cruise-speed 11500
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.takeoff-speed 5800
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.stall-speed 5600
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.accelerate 60
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.resistance 36
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.energy-loss 14
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.deaccelerate 54
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-strt-min 1600
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-strt-max 1700
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-stop-min 1400
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-stop-max 1500
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-ret-min 7100
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-ret-max 7300
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-po-min 6800
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-po-max 7000

scoreboard players set @e[tag=plane-init,tag=plane-root] vp.landing-pitch -1400
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngX -1400
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngY 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngZ 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngY-old 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.pitch-speed 180
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.yaw-speed 120
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.roll-speed 560

scoreboard players set @e[tag=plane-init,tag=ki61-body] vp.parking-cmd 102
scoreboard players set @e[tag=plane-init,tag=ki61-body] vp.rolling-cmd 103
scoreboard players set @e[tag=plane-init,tag=ki61-body] vp.flying-cmd 104

scoreboard players set @e[tag=plane-init,tag=plane-root] vp.w1-cooltime 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.ammunition1 250
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.max-ammo1 250
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.max-w1-reload 140
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.w2-cooltime 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.ammunition2 120
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.max-ammo2 120
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.max-w2-reload 240
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.w3-cooltime 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.ammunition3 2
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.max-ammo3 2
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.max-w3-reload 3600
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.curr-weapon 1
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.weapon-types 6

scoreboard players set @e[tag=plane-init,tag=plane-root] vp.max-engine 1

data modify storage minecraft:plane-datapack temporary.Pos set from entity @e[tag=plane-init,tag=plane-root,limit=1] Pos
execute store result score @e[tag=plane-init,tag=plane-root,limit=1] vp.PosX run data get storage minecraft:plane-datapack temporary.Pos[0] 10000
execute store result score @e[tag=plane-init,tag=plane-root,limit=1] vp.PosY run data get storage minecraft:plane-datapack temporary.Pos[1] 10000
execute store result score @e[tag=plane-init,tag=plane-root,limit=1] vp.PosZ run data get storage minecraft:plane-datapack temporary.Pos[2] 10000

#ohmydat呼び出し
execute as @e[tag=plane-init,tag=plane-root] run function oh_my_dat:please

#武器データセット
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon set value {current-weapon-index:0}
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list set value []
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon ki61.base.20mm
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon ki61.base.12p7mm

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
