#> plane-data:util/set-plane-score
#
# @input
#   executer @s[tag=plane-root,tag=plane-init]
#   storage voxel-planes:input
#
# @within function plane-data:**
#

#> private
#
# @private
    #declare tag plane-init
    #declare tag plane-body
    #declare tag plane-rightwing
    #declare tag plane-leftwing
    #declare tag plane-tail

#最高、巡航、失速、離陸速度設定
execute store result score @s vp.max-speed run data get storage voxel-planes:input input.flight-model.speed.max-speed 34.72
execute store result score @s vp.cruise-speed run data get storage voxel-planes:input input.flight-model.speed.cruise-speed 34.72
execute store result score @s vp.stall-speed run data get storage voxel-planes:input input.flight-model.speed.stall-speed 34.72
execute as @s store result score @s vp.takeoff-speed run scoreboard players get @s vp.stall-speed
scoreboard players add @s vp.takeoff-speed 200

#ギア引き込み速度、プロペラ回転速度設定
execute as @s store result score @s vp.gear-ret run scoreboard players get @s vp.stall-speed
scoreboard players add @s vp.gear-ret 1500
scoreboard players set @s vp.prop-strt 1700

#抵抗、上昇時減速、エネルギーロス設定
function plane-data:util/culc-resistance
scoreboard players operation @s vp.resistance = #resistance vp.return

execute store result storage voxel-planes:input input.resistance int 1 run scoreboard players get #resistance vp.return
function plane-data:util/culc-deaccelerate
scoreboard players operation @s vp.deaccelerate = #deaccelerate vp.return

function plane-data:util/culc-energy-loss
scoreboard players operation @s vp.energy-loss = #energy-loss vp.return

#旋回速度設定
execute store result score @s vp.pitch-speed run data get storage voxel-planes:input input.flight-model.turn-rate.pitch 5
execute store result score @s vp.yaw-speed run data get storage voxel-planes:input input.flight-model.turn-rate.yaw 5
execute store result score @s vp.roll-speed run data get storage voxel-planes:input input.flight-model.turn-rate.roll 5

#着陸時の角度設定
execute store result score @s vp.landing-pitch run data get storage voxel-planes:input input.model-data.landing-pitch 100

#モデル番号設定
execute store result score @e[tag=plane-init,tag=plane-body,tag=model-changeable,distance=..1] vp.parking-cmd run data get storage voxel-planes:input input.model-data.body.parking-cmd
execute store result score @e[tag=plane-init,tag=plane-body,tag=model-changeable,distance=..1] vp.rolling-cmd run data get storage voxel-planes:input input.model-data.body.rolling-cmd
execute store result score @e[tag=plane-init,tag=plane-body,tag=model-changeable,distance=..1] vp.flying-cmd run data get storage voxel-planes:input input.model-data.body.flying-cmd
execute store result score @e[tag=plane-init,tag=plane-rightwing,tag=model-changeable,distance=..1] vp.parking-cmd run data get storage voxel-planes:input input.model-data.rightwing.parking-cmd
execute store result score @e[tag=plane-init,tag=plane-rightwing,tag=model-changeable,distance=..1] vp.rolling-cmd run data get storage voxel-planes:input input.model-data.rightwing.rolling-cmd
execute store result score @e[tag=plane-init,tag=plane-rightwing,tag=model-changeable,distance=..1] vp.flying-cmd run data get storage voxel-planes:input input.model-data.rightwing.flying-cmd
execute store result score @e[tag=plane-init,tag=plane-leftwing,tag=model-changeable,distance=..1] vp.parking-cmd run data get storage voxel-planes:input input.model-data.leftwing.parking-cmd
execute store result score @e[tag=plane-init,tag=plane-leftwing,tag=model-changeable,distance=..1] vp.rolling-cmd run data get storage voxel-planes:input input.model-data.leftwing.rolling-cmd
execute store result score @e[tag=plane-init,tag=plane-leftwing,tag=model-changeable,distance=..1] vp.flying-cmd run data get storage voxel-planes:input input.model-data.leftwing.flying-cmd
execute store result score @e[tag=plane-init,tag=plane-tail,tag=model-changeable,distance=..1] vp.parking-cmd run data get storage voxel-planes:input input.model-data.tail.parking-cmd
execute store result score @e[tag=plane-init,tag=plane-tail,tag=model-changeable,distance=..1] vp.rolling-cmd run data get storage voxel-planes:input input.model-data.tail.rolling-cmd
execute store result score @e[tag=plane-init,tag=plane-tail,tag=model-changeable,distance=..1] vp.flying-cmd run data get storage voxel-planes:input input.model-data.tail.flying-cmd

#エンジン数、馬力、推力設定
execute store result score @s vp.max-engine run data get storage voxel-planes:input input.flight-model.engine.number
execute store result score @s vp.horse-power run data get storage voxel-planes:input input.flight-model.engine.horse-power
execute store result score @s vp.thrust run data get storage voxel-planes:input input.flight-model.engine.thrust

#機体重量設定
execute store result score @s vp.weight run data get storage voxel-planes:input input.flight-model.weight

#スピード、角度の初期スコア、データ設定
execute as @e[tag=plane-init,tag=model-changeable,distance=..1] store result entity @s item.tag.CustomModelData int 1 run scoreboard players get @s vp.parking-cmd
scoreboard players operation @s vp.AngX = @s vp.landing-pitch
scoreboard players set @s vp.AngY 0
scoreboard players set @s vp.AngZ 0
scoreboard players set @s vp.AngY-old 0
scoreboard players set @s vp.rolling 0
scoreboard players set @s vp.speed 0

#召喚座標スコア設定
data modify storage minecraft:plane-datapack temporary.Pos set from entity @e[tag=plane-init,tag=plane-root,distance=..1,limit=1] Pos
execute store result score @e[tag=plane-init,tag=plane-root,distance=..1,limit=1] vp.PosX run data get storage minecraft:plane-datapack temporary.Pos[0] 10000
execute store result score @e[tag=plane-init,tag=plane-root,distance=..1,limit=1] vp.PosY run data get storage minecraft:plane-datapack temporary.Pos[1] 10000
execute store result score @e[tag=plane-init,tag=plane-root,distance=..1,limit=1] vp.PosZ run data get storage minecraft:plane-datapack temporary.Pos[2] 10000
