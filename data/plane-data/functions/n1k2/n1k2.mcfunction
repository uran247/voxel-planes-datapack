#> plane-data:n1k2/n1k2
#
# @within
#   plane:**
#   weapon:**
        #declare tag n1k2-hitbox
        #declare tag n1k2-body

#> public
# @public
    #declare tag n1k2

#> private
# @private
    #declare tag plane-init #初期化処理中のエンティティであることを示す

#機体召喚
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[n1k2-root,n1k2,plane-init,plane-root,plane,entity-nohit,need-calc-offset,delay-rotation,has-weapon1,has-weapon2,main-weapon1,main-weapon2,tier3],CustomName:'{"text":"n1k2"}',Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},DisabledSlots:256,HandItems:[{id:"snowball",Count:1b,tag:{CustomModelData:1,weapons:["20mm gun","bomb"]}},{}]}
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:0b,Tags:[n1k2,plane-init,plane,entity-nohit,plane-seat],CustomName:'{"text":"seat"}',Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Passengers:[{id:"donkey",Health:12f,Attributes:[{Name:"generic.max_health",Base:12d}],Invulnerable:1b,DeathLootTable:"minecraft:entities/bat",SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1b,NoAI:1b,Silent:1b,ChestedHorse:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:[n1k2,plane-init,plane,plane-seat,entity-nohit]}],DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["n1k2-body","n1k2",plane-init,plane,has-model,model-changeable,entity-nohit],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:107,Unbreakable:1b}},{}],Pose:{LeftArm:[0f,0f,0f],RightArm:[-12f,0f,0f]},DisabledSlots:256}
summon armor_stand ~ ~ ~ {Tags:["n1k2-hitbox","n1k2",plane-init,plane,plane-hitbox,has-offset,body,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"body"}',Health:110f,Attributes:[{Name:"generic.max_health",Base:110d}]}
summon armor_stand ~ ~ ~ {Tags:["n1k2-hitbox","n1k2",plane-init,plane,plane-hitbox,has-offset,engine,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"engine"}',Health:100f,Attributes:[{Name:"generic.max_health",Base:100d}]}
summon armor_stand ~ ~ ~ {Tags:["n1k2-hitbox","n1k2",plane-init,plane,plane-hitbox,has-offset,aileron-r,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"aileron-right"}',Health:90f,Attributes:[{Name:"generic.max_health",Base:90d}]}
summon armor_stand ~ ~ ~ {Tags:["n1k2-hitbox","n1k2",plane-init,plane,plane-hitbox,has-offset,aileron-l,aileron,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"aileron-left"}',Health:90f,Attributes:[{Name:"generic.max_health",Base:90d}]}
summon armor_stand ~ ~ ~ {Tags:["n1k2-hitbox","n1k2",plane-init,plane,plane-hitbox,has-offset,elevator-r,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"elevator-right"}',Health:70f,Attributes:[{Name:"generic.max_health",Base:70d}]}
summon armor_stand ~ ~ ~ {Tags:["n1k2-hitbox","n1k2",plane-init,plane,plane-hitbox,has-offset,elevator-l,elevetor,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"elevator-left"}',Health:70f,Attributes:[{Name:"generic.max_health",Base:70d}]}
summon armor_stand ~ ~ ~ {Tags:["n1k2-hitbox","n1k2",plane-init,plane,plane-hitbox,has-offset,radder,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"radder"}',Health:70f,Attributes:[{Name:"generic.max_health",Base:70d}]}
summon armor_stand ~ ~ ~ {Tags:["n1k2-hitbox","n1k2",plane-init,plane,plane-hitbox,has-offset,cockpit,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Glowing:0b,CustomName:'{"text":"cockpit"}',Health:120f,Attributes:[{Name:"generic.max_health",Base:120d}]}

#ID付与
execute as @e[tag=plane-init,tag=plane-root,limit=1] at @s run function plane:summon/set-plane-id

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.rolling 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.speed 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.accelerate 62
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.resistance 35
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.energy-loss 14
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.deaccelerate 74
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.max-speed 22400
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.cruise-speed 12800
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.takeoff-speed 5400
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.stall-speed 5200
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-strt-min 1600
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-strt-max 1700
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-stop-min 1400
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.prop-stop-max 1500
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-ret-min 6700
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-ret-max 6900
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-po-min 6400
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.gear-po-max 6600

scoreboard players set @e[tag=plane-init,tag=plane-root] vp.landing-pitch -1400
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngX -1400
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngY 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngZ 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.AngY-old 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.pitch-speed 195
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.yaw-speed 130
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.roll-speed 600

scoreboard players set @e[tag=plane-init,tag=n1k2-body] vp.parking-cmd 107
scoreboard players set @e[tag=plane-init,tag=n1k2-body] vp.rolling-cmd 108
scoreboard players set @e[tag=plane-init,tag=n1k2-body] vp.flying-cmd 109

scoreboard players set @e[tag=plane-init,tag=plane-root] vp.w1-cooltime 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.ammunition1 225
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.max-ammo1 225
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.max-w1-reload 280
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.w2-cooltime 0
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.ammunition2 2
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.max-ammo2 2
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.max-w2-reload 3600
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.curr-weapon 1
scoreboard players set @e[tag=plane-init,tag=plane-root] vp.weapon-types 2

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
