#7.7mm機銃を使用 phantom1
#使えるタグ　ai-target-plane　ai-target
#実行者：機体

#召喚
summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,7p7mm,gun-init,tracer-red,mob-gun,entity-nohit],Duration:20,CustomName:"{\"text\":\"gun-l\",\"color\":\"aqua\"}"}

#スコア付与
scoreboard players set @e[tag=gun-init,distance=..5] speed 70
scoreboard players set @e[tag=gun-init,distance=..5] damage 5
scoreboard players operation @e[tag=gun-init,distance=..5] plane-id = @s plane-id
scoreboard players set @e[tag=gun-init,distance=..5] offsetX 0
scoreboard players set @e[tag=gun-init,distance=..5] offsetY 0
scoreboard players set @e[tag=gun-init,distance=..5] offsetZ 0

#10発目の弾なら曳光弾化
scoreboard players operation #ammo-num reg1 = @s ammunition1
scoreboard players operation #ammo-num reg1 %= #10 Num
execute if score #ammo-num reg1 matches 0 run tag @e[tag=gun-init,distance=..10] add enemy-tracer

#発射位置に移動
#scoreboard players set #sin reg1 0
#scoreboard players set #cos reg1 1000
#execute as @e[tag=gun-init,distance=..5] run function plane:position/util/calc-displacement
#execute as @e[tag=gun-init,distance=..5] at @s rotated ~-90 ~ run function plane:position/calc-offset
#execute as @e[tag=gun-init,distance=..5] run function plane:position/util/move-parts

#向きを自機方向に向ける
execute if entity @e[tag=ai-target-plane,limit=1,sort=nearest] as @e[tag=gun-init,limit=2,distance=..20] facing entity @e[tag=ai-target-plane,limit=1,sort=nearest] eyes positioned as @s run tp @s ~ ~ ~ ~ ~
execute unless entity @e[tag=ai-target-plane,limit=1,sort=nearest] as @e[tag=gun-init,limit=2,distance=..20] facing entity @p[tag=ai-target] feet positioned as @s run tp @s ~ ~ ~ ~ ~

####ランダムに角度変更####

###Y軸###
#乱数取得
function math:get-rand
#現在の角度取得
execute as @e[tag=gun-init,distance=..5] store result score #ang-y reg1 run data get entity @s Rotation[0] 10
#-20 - 20
execute as @e[tag=gun-init,distance=..5] run scoreboard players operation #random reg1 = #rand return
execute as @e[tag=gun-init,distance=..5] run scoreboard players operation #random reg1 %= #41 Num
execute as @e[tag=gun-init,distance=..5] run scoreboard players remove #random reg1 20
#元々の角度に乱数を足す
execute as @e[tag=gun-init,distance=..5] run scoreboard players operation #ang-y reg1 += #random reg1
#-360 - 360に補正
execute as @e[tag=gun-init,distance=..5,scores={reg1=..-3600}] run scoreboard players add #ang-y reg1 3600
execute as @e[tag=gun-init,distance=..5,scores={reg1=3600..}] run scoreboard players remove #ang-y reg1 3600
#代入
execute as @e[tag=gun-init,distance=..5] store result entity @s Rotation[0] float 0.1 run scoreboard players get #ang-y reg1

###X軸###
#乱数取得
function math:get-rand
#現在の角度取得
execute as @e[tag=gun-init,distance=..5] store result score #ang-x reg1 run data get entity @s Rotation[1] 10
#-20 - 20
execute as @e[tag=gun-init,distance=..5] run scoreboard players operation #random reg1 = #rand return
execute as @e[tag=gun-init,distance=..5] run scoreboard players operation #random reg1 %= #41 Num
execute as @e[tag=gun-init,distance=..5] run scoreboard players remove #random reg1 20
#元々の角度に乱数を足す
execute as @e[tag=gun-init,distance=..5] run scoreboard players operation #ang-x reg1 += #random reg1
#-360 - 360に補正
execute as @e[tag=gun-init,distance=..5,scores={reg1=..-3600}] run scoreboard players add #ang-x reg1 3600
execute as @e[tag=gun-init,distance=..5,scores={reg1=3600..}] run scoreboard players remove #ang-x reg1 3600
#代入
execute as @e[tag=gun-init,distance=..5] store result entity @s Rotation[1] float 0.1 run scoreboard players get #ang-x reg1

#x,y,z方向の速度スコア化
execute as @e[tag=gun-init,distance=..20] run function math:vector
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation @s speedX *= @s speed
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation @s speedY *= @s speed
execute as @e[tag=gun-init,distance=..20] run scoreboard players operation @s speedZ *= @s speed
scoreboard players operation @e[tag=gun-init,distance=..20] speedX /= #10 Num
scoreboard players operation @e[tag=gun-init,distance=..20] speedY /= #10 Num
scoreboard players operation @e[tag=gun-init,distance=..20] speedZ /= #10 Num

#発射したならreload時間設定
execute if entity @e[tag=gun-init,distance=..20] run scoreboard players set @s w1-reload 3

#弾薬減少
scoreboard players remove @s ammunition1 1

#音
playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1 1 1

#終了処理
tag @e[tag=gun-init,distance=..20] remove gun-init


