#> plane-data:d4y2/d4y2
#
# @within
#   plane:**
#   weapon:**
        #declare tag d4y2-hitbox
        #declare tag d4y2-body

#> public
# @public
    #declare tag d4y2

#> private
# @private
    #declare tag plane-init #初期化処理中のエンティティであることを示す

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[d4y2-root,d4y2,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,has-bomb,has-weapon1,has-weapon2,has-weapon3,main-weapon1,main-weapon2,tier2],CustomName:'{"text":"d4y2"}',Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256,HandItems:[{id:"snowball",Count:1b,tag:{CustomModelData:1,weapons:["7.7mm gun","bomb","rocket"]}},{}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[d4y2,plane-init,plane,entity-nohit,plane-seat],CustomName:'{"text":"seat"}',Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:"donkey",Health:13f,Attributes:[{Name:"generic.max_health",Base:13d}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1b,NoAI:1b,Silent:1b,ChestedHorse:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:[d4y2,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["d4y2-body","d4y2",plane-init,plane,has-model,model-changeable,plane-parts,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:27,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256}

#hitbox召喚
summon armor_stand ~ ~ ~ {Tags:["d4y2-hitbox","d4y2",plane-init,has-offset,plane,plane-hitbox,body,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"body"}',Health:120f,Attributes:[{Name:"generic.max_health",Base:120d}]}
summon armor_stand ~ ~ ~ {Tags:["d4y2-hitbox","d4y2",plane-init,has-offset,plane,plane-hitbox,engine,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"engine"}',Health:90f,Attributes:[{Name:"generic.max_health",Base:90d}]}
summon armor_stand ~ ~ ~ {Tags:["d4y2-hitbox","d4y2",plane-init,has-offset,plane,plane-hitbox,aileron-r,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"aileron-right"}',Health:100f,Attributes:[{Name:"generic.max_health",Base:100d}]}
summon armor_stand ~ ~ ~ {Tags:["d4y2-hitbox","d4y2",plane-init,has-offset,plane,plane-hitbox,aileron-l,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"aileron-left"}',Health:100f,Attributes:[{Name:"generic.max_health",Base:100d}]}
summon armor_stand ~ ~ ~ {Tags:["d4y2-hitbox","d4y2",plane-init,has-offset,plane,plane-hitbox,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"elevator-right"}',Health:80f,Attributes:[{Name:"generic.max_health",Base:80d}]}
summon armor_stand ~ ~ ~ {Tags:["d4y2-hitbox","d4y2",plane-init,has-offset,plane,plane-hitbox,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"elevator-left"}',Health:80f,Attributes:[{Name:"generic.max_health",Base:80d}]}
summon armor_stand ~ ~ ~ {Tags:["d4y2-hitbox","d4y2",plane-init,has-offset,plane,plane-hitbox,radder,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"radder"}',Health:80f,Attributes:[{Name:"generic.max_health",Base:80d}]}
summon armor_stand ~ ~ ~ {Tags:["d4y2-hitbox","d4y2",plane-init,has-offset,plane,plane-hitbox,cockpit,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"cockpit"}',Health:80f,Attributes:[{Name:"generic.max_health",Base:80d}]}

#ID付与
execute as @e[tag=plane-init,tag=plane-root,limit=1] at @s run function plane:summon/set-plane-id

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.speed 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.rolling 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.accelerate 53
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.resistance 39
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.energy-loss 20
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.deaccelerate 103
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.max-speed 20100
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.cruise-speed 14800
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.takeoff-speed 5000
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.stall-speed 4800
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-strt-min 1500
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-strt-max 1530
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-stop-min 1400
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-stop-max 1430
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-ret-min 6300
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-ret-max 6500
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-po-min 6000
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-po-max 6200

scoreboard players set @e[tag=plane-init,tag=plane-root] vp.landing-pitch -1300
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngX -1300
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngY 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngZ 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngY-old 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.pitch-speed 160
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.yaw-speed 100
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.roll-speed 600

scoreboard players set @e[tag=plane-init,tag=d4y2-body] vp.parking-cmd 27
scoreboard players set @e[tag=plane-init,tag=d4y2-body] vp.rolling-cmd 28
scoreboard players set @e[tag=plane-init,tag=d4y2-body] vp.flying-cmd 29


#ohmydat呼び出し
execute as @e[tag=plane-init,tag=plane-root] run function oh_my_dat:please

#武器データセット
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon set value {current-weapon-index:0}
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list set value []
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon d4y2.base.gun
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list append from storage voxel-planes:weapon d4y2.base.bomb


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
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetY -100
scoreboard players set @e[tag=engine,tag=plane-init] vp.offsetZ 5700
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetX -4000
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetY -300
scoreboard players set @e[tag=aileron-r,tag=plane-init] vp.offsetZ 2900
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetX 4000
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetY -300
scoreboard players set @e[tag=aileron-l,tag=plane-init] vp.offsetZ 2900
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetX -1500
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=elevator-r,tag=plane-init] vp.offsetZ -2500
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetX 1500
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetY 0
scoreboard players set @e[tag=elevator-l,tag=plane-init] vp.offsetZ -2500
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetY 1000
scoreboard players set @e[tag=radder,tag=plane-init] vp.offsetZ -2900
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetX 0
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetY 700
scoreboard players set @e[tag=cockpit,tag=plane-init] vp.offsetZ 3100

#プレイヤーと同じAngYにする
schedule function plane:summon/util/delay-rotation 2

#処理終了
tag @e[tag=plane-init] remove plane-init
