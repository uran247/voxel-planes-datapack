#7.7mm機銃を使用 a6m
#実行者：機体

#曳光弾判定
scoreboard players operation #tracer reg1 = @s ammunition2
scoreboard players operation #tracer reg1 %= #5 Num

#召喚
execute if score #tracer reg1 matches 0 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:[projectile,gun,7p7mm,gun-init,right,tracer-lightblue,entity-nohit,offset-base,tracer],Duration:25}
execute if score #tracer reg1 matches 0 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:[projectile,gun,7p7mm,gun-init,left,tracer-lightblue,entity-nohit,offset-base,tracer],Duration:25}
execute unless score #tracer reg1 matches 0 run summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,7p7mm,gun-init,right,tracer-lightblue,entity-nohit,offset-base],Duration:25}
execute unless score #tracer reg1 matches 0 run summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,7p7mm,gun-init,left,tracer-lightblue,entity-nohit,offset-base],Duration:25}

#スコア付与
scoreboard players set @e[tag=gun-init] speed 95
scoreboard players set @e[tag=gun-init] damage 3
scoreboard players set @e[tag=gun-init,type=armor_stand] max-age 25
scoreboard players operation @e[tag=gun-init] plane-id = @s plane-id
scoreboard players set @e[tag=gun-init,tag=left] offsetX 220
scoreboard players set @e[tag=gun-init,tag=left] offsetY 550
scoreboard players set @e[tag=gun-init,tag=left] offsetZ 2500
scoreboard players set @e[tag=gun-init,tag=right] offsetX -260
scoreboard players set @e[tag=gun-init,tag=right] offsetY 550
scoreboard players set @e[tag=gun-init,tag=right] offsetZ 2500

#5発目の弾なら曳光弾化
scoreboard players operation @s reg1 = @s ammunition2
scoreboard players operation @s reg1 %= #5 Num
execute if score @s reg1 matches 0 run tag @e[tag=gun-init,distance=..10] add tracer

#発射位置に移動
function plane:position/util/calc-triangle-ratio
scoreboard players operation #sin reg1 = #sin return
scoreboard players operation #cos reg1 = #cos return
execute at @s as @e[tag=gun-init] run function plane:position/util/calc-displacement
execute at @s as @e[tag=gun-init] run function plane:position/calc-offset
execute at @s as @e[tag=gun-init] run function plane:position/util/move-parts

#銃弾の向きを機体方向に向ける
#execute as @e[tag=gun-init,tag=right] run tellraw @p [{"nbt":"Rotation","entity":"@s"},{"nbt":"Tags","entity":"@s"}] 
execute at @s positioned ^ ^ ^200 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Tags:[gun-indicator,entity-nohit]}
execute as @e[tag=gun-init,limit=2] at @s facing entity @e[tag=gun-indicator,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~
#execute as @e[tag=gun-init,tag=right] run tellraw @p [{"nbt":"Rotation","entity":"@s"},{"nbt":"Pos","entity":"@e[tag=gun-indicator,limit=1]"}]
#execute as @s run tellraw @p [{"nbt":"Rotation","entity":"@s"},{"nbt":"Pos","entity":"@e[tag=gun-indicator,limit=1]"}] 
#kill @e[tag=gun-indicator]

#発射したならreload時間設定
execute if entity @e[tag=gun-init] run scoreboard players set @s w2-reload 2

#音
playsound minecraft:weapon.gun-7p7m.fire master @a ~ ~ ~ 1 1 1

#発射炎
#execute as @e[tag=gun-init,distance=..10] at @s run particle minecraft:cloud ^ ^ ^ 0.1 0.1 0.1 0.1 1 force

#残弾数減算
scoreboard players remove @s ammunition2 1

#x,y,z方向の速度スコア化
execute as @e[tag=gun-init] run function math:vector
#tellraw @p [{"score" : {"name":"@e[tag=gun-init,limit=1]", "objective":"speedX"}}, {"text":" "}, {"score" : {"name":"@e[tag=gun-init,limit=1]", "objective":"speedZ"}}]
execute as @e[tag=gun-init] run scoreboard players operation @s speedX *= @s speed
execute as @e[tag=gun-init] run scoreboard players operation @s speedY *= @s speed
execute as @e[tag=gun-init] run scoreboard players operation @s speedZ *= @s speed
scoreboard players operation @e[tag=gun-init] speedX /= #10 Num
scoreboard players operation @e[tag=gun-init] speedY /= #10 Num
scoreboard players operation @e[tag=gun-init] speedZ /= #10 Num

#終了処理
tag @e[tag=gun-init] remove gun-init
#scoreboard players set @p rightClick 0


