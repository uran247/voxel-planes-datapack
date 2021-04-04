#> plane-data:j2m3/j2m3
#
# @within
#   plane:**
#   weapon:**
        #declare tag j2m3-hitbox
        #declare tag j2m3-body

#> public
# @public
    #declare tag j2m3

#> private
# @private
    #declare tag plane-init #初期化処理中のエンティティであることを示す

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[j2m3,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,tier2],CustomName:'{"text":"j2m3"}',Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[j2m3,plane-init,plane,entity-nohit,plane-seat],CustomName:'{"text":"seat"}',Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:"donkey",Health:13f,Attributes:[{Name:"generic.max_health",Base:13d}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1b,NoAI:1b,Silent:1b,ChestedHorse:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:[j2m3,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:[j2m3-body,j2m3,plane-init,plane,has-model,model-changeable,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:93,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[-12f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:[j2m3,plane-init,plane,plane-hitbox,has-offset,body,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"body"}',Health:110f,Attributes:[{Name:"generic.max_health",Base:110d}]}
summon armor_stand ~ ~ ~ {Tags:[j2m3,plane-init,plane,plane-hitbox,has-offset,engine,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"engine"}',Health:90f,Attributes:[{Name:"generic.max_health",Base:90d}]}
summon armor_stand ~ ~ ~ {Tags:[j2m3,plane-init,plane,plane-hitbox,has-offset,aileron-r,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"aileron-right"}',Health:100f,Attributes:[{Name:"generic.max_health",Base:100d}]}
summon armor_stand ~ ~ ~ {Tags:[j2m3,plane-init,plane,plane-hitbox,has-offset,aileron-l,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"aileron-left"}',Health:100f,Attributes:[{Name:"generic.max_health",Base:100d}]}
summon armor_stand ~ ~ ~ {Tags:[j2m3,plane-init,plane,plane-hitbox,has-offset,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"elevator-right"}',Health:80f,Attributes:[{Name:"generic.max_health",Base:80d}]}
summon armor_stand ~ ~ ~ {Tags:[j2m3,plane-init,plane,plane-hitbox,has-offset,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"elevator-left"}',Health:80f,Attributes:[{Name:"generic.max_health",Base:80d}]}
summon armor_stand ~ ~ ~ {Tags:[j2m3,plane-init,plane,plane-hitbox,has-offset,radder,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"radder"}',Health:90f,Attributes:[{Name:"generic.max_health",Base:90d}]}
summon armor_stand ~ ~ ~ {Tags:[j2m3,plane-init,plane,plane-hitbox,has-offset,cockpit,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"cockpit"}',Health:150f,Attributes:[{Name:"generic.max_health",Base:150d}]}

#ID付与
execute as @e[tag=plane-init,tag=plane-root,limit=1] at @s run function plane:summon/set-plane-id

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.rolling 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.speed 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.accelerate 77
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.resistance 46
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.energy-loss 19
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.deaccelerate 86
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.max-speed 20700
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.cruise-speed 12500
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.takeoff-speed 5625
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.stall-speed 5425
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-strt-min 1600
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-strt-max 1700
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-stop-min 1400
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-stop-max 1500
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-ret-min 7400
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-ret-max 7600
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-po-min 7100
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-po-max 7300

scoreboard players set @e[tag=plane-init,tag=plane-root] vp.landing-pitch -1150
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngX -1150
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngY 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngZ 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngY-old 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.pitch-speed 190
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.yaw-speed 190
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.roll-speed 710

scoreboard players set @e[tag=plane-init,tag=j2m3-body] vp.parking-cmd 93
scoreboard players set @e[tag=plane-init,tag=j2m3-body] vp.rolling-cmd 94
scoreboard players set @e[tag=plane-init,tag=j2m3-body] vp.flying-cmd 95

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
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon j2m3.base.model1-20mm
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon j2m3.base.model2-20mm

#hitboxのスコア設定
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=body,tag=plane-init] vp.offsetZ 0
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetX -50
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetZ 3800
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetX -3200
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetY -300
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetZ 1800
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetX 3150
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetY -300
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetZ 1800
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetX -1300
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetY 200
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetZ -3300
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetX 1250
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetY 200
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetZ -3300
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetX -50
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetY 1200
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetZ -3900
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetY 900
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetZ 1100

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init] remove plane-init
