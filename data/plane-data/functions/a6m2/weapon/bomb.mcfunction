#爆弾投下 a6m2
#実行者：機体

#実行者タグ付け
tag @s add bombing-executer

#投下対象判定
scoreboard players operation #plane-id reg1 = @s plane-id
execute as @e[tag=plane-bomb,tag=plane,distance=..20,limit=1] if score @s plane-id = #plane-id reg1 run tag @s add drop-init
tag @e[tag=drop-init,distance=..20] add dropping

#a6m2タグ削除
tag @e[tag=drop-init,distance=..20] remove plane
tag @e[tag=drop-init,distance=..20] remove plane-parts
tag @e[tag=drop-init,distance=..20] remove has-offset
tag @e[tag=drop-init,distance=..20] remove has-model

#スコア付与
scoreboard players operation @e[tag=drop-init,distance=..20] speed = @s speed
scoreboard players operation @e[tag=drop-init,distance=..20] speed /= #1000 Num
scoreboard players set @e[tag=drop-init,distance=..20] age 1200

#角度代入
execute store result entity @e[tag=drop-init,distance=..20,limit=1] Rotation[1] float 0.01 run scoreboard players get @s AngX
execute store result entity @e[tag=drop-init,distance=..20,limit=1] Rotation[0] float 0.01 run scoreboard players get @s AngY
execute as @e[tag=drop-init,distance=..20,limit=1] at @s run tp @s ~ ~ ~ ~90 ~

#tellraw @p [{"score" : {"name":"@e[tag=drop-init,distance=..5,limit=1]", "objective":"speed"}}, {"text":" "}, {"score" : {"name":"@e[tag=drop-init,distance=..5,limit=1]", "objective":"age"}}]

#発射したならreload時間設定
execute if entity @e[tag=drop-init,distance=..20] run scoreboard players set @s w3-reload 2

#残弾数減算
scoreboard players remove @s ammunition3 1

#音
playsound minecraft:block.piston.contract ambient @a ~ ~ ~ 1 1.5

#x,y,z方向の速度スコア化
scoreboard players operation @e[tag=drop-init,distance=..20] speedX = @s speedX
scoreboard players operation @e[tag=drop-init,distance=..20] speedY = @s speedY
scoreboard players operation @e[tag=drop-init,distance=..20] speedZ = @s speedZ
execute as @e[tag=drop-init,distance=..20] run scoreboard players operation @s speedX *= @s speed
execute as @e[tag=drop-init,distance=..20] run scoreboard players operation @s speedY *= @s speed
execute as @e[tag=drop-init,distance=..20] run scoreboard players operation @s speedZ *= @s speed
scoreboard players operation @e[tag=drop-init,distance=..20] speedX /= #10 Num
scoreboard players operation @e[tag=drop-init,distance=..20] speedY /= #10 Num
scoreboard players operation @e[tag=drop-init,distance=..20] speedZ /= #10 Num

#終了処理
tag @s remove bombing-executer
tag @e[tag=drop-init,distance=..20] remove drop-init
scoreboard players set @p[scores={rightClick=1..}] rightClick 0

