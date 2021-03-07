#> plane-data:ki-43/ki-43
#
# @within
#   plane:**
#   weapon:**
        #declare tag ki43-hitbox
        #declare tag ki43-body

#> public
# @public
    #declare tag ki43

#> private
# @private
    #declare tag plane-init #初期化処理中のエンティティであることを示す

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[ki43-root,ki43,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,7p7mm,has-weapon1,tier1,main-weapon1],CustomName:'{"text":"ki43"}',Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256,HandItems:[{id:"snowball",Count:1b,tag:{CustomModelData:1,weapons:["7.7mm gun"]}},{}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[ki43,plane-init,plane,entity-nohit,plane-seat],CustomName:'{"text":"seat"}',Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:"donkey",Health:8f,Attributes:[{Name:"generic.max_health",Base:8d}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1b,NoAI:1b,Silent:1b,ChestedHorse:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:[ki43,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["ki43-body","ki43",plane-init,plane,has-model,model-changeable,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:67,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[-12f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["ki43-hitbox","ki43",plane-init,plane,plane-hitbox,has-offset,body,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"body"}',Health:60f,Attributes:[{Name:"generic.max_health",Base:60d}]}
summon armor_stand ~ ~ ~ {Tags:["ki43-hitbox","ki43",plane-init,plane,plane-hitbox,has-offset,engine,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"engine"}',Health:60f,Attributes:[{Name:"generic.max_health",Base:60d}]}
summon armor_stand ~ ~ ~ {Tags:["ki43-hitbox","ki43",plane-init,plane,plane-hitbox,has-offset,aileron-r,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"aileron-right"}',Health:60f,Attributes:[{Name:"generic.max_health",Base:60d}]}
summon armor_stand ~ ~ ~ {Tags:["ki43-hitbox","ki43",plane-init,plane,plane-hitbox,has-offset,aileron-l,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"aileron-left"}',Health:60f,Attributes:[{Name:"generic.max_health",Base:60d}]}
summon armor_stand ~ ~ ~ {Tags:["ki43-hitbox","ki43",plane-init,plane,plane-hitbox,has-offset,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"elevator-right"}',Health:50f,Attributes:[{Name:"generic.max_health",Base:50d}]}
summon armor_stand ~ ~ ~ {Tags:["ki43-hitbox","ki43",plane-init,plane,plane-hitbox,has-offset,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"elevator-left"}',Health:50f,Attributes:[{Name:"generic.max_health",Base:50d}]}
summon armor_stand ~ ~ ~ {Tags:["ki43-hitbox","ki43",plane-init,plane,plane-hitbox,has-offset,radder,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"radder"}',Health:50f,Attributes:[{Name:"generic.max_health",Base:50d}]}
summon armor_stand ~ ~ ~ {Tags:["ki43-hitbox","ki43",plane-init,plane,plane-hitbox,has-offset,cockpit,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"cockpit"}',Health:80f,Attributes:[{Name:"generic.max_health",Base:80d}]}

#ID付与
execute as @e[tag=plane-init,tag=plane-root,limit=1] at @s run function plane:summon/set-plane-id

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.rolling 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.speed 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.max-speed 17200
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.cruise-speed 12300
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.takeoff-speed 3800
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.stall-speed 3600
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.accelerate 68
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.resistance 49
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.energy-loss 11
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.deaccelerate 62
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-strt-min 1600
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-strt-max 1700
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-stop-min 1400
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-stop-max 1500
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-ret-min 5600
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-ret-max 5800
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-po-min 5300
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-po-max 5500

scoreboard players set @e[tag=plane-init,tag=plane-root] vp.landing-pitch -1250
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngX -1250
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngY 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngZ 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngY-old 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.pitch-speed 230
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.yaw-speed 260
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.roll-speed 650

scoreboard players set @e[tag=plane-init,tag=ki43-body] vp.parking-cmd 67
scoreboard players set @e[tag=plane-init,tag=ki43-body] vp.rolling-cmd 68
scoreboard players set @e[tag=plane-init,tag=ki43-body] vp.flying-cmd 69

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
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon ki43.base.7p7mm

#hitboxのスコア設定
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
