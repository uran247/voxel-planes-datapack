#爆弾投下 d4y2
#実行者：機体

#実行者タグ付け
tag @s add rocket-launting-executer

#投下対象判定
scoreboard players operation #plane-id reg1 = @s plane-id
execute as @e[tag=plane-rocket,tag=plane,distance=..10,limit=1] if score @s plane-id = #plane-id reg1 run tag @s add rocket-init
tag @e[tag=rocket-init,distance=..10] add rocket-moving

#d4y2タグ削除
tag @e[tag=rocket-init,distance=..10] remove plane
tag @e[tag=rocket-init,distance=..10] remove plane-parts
tag @e[tag=rocket-init,distance=..10] remove has-offset
tag @e[tag=rocket-init,distance=..10] remove has-model

#スコア付与
scoreboard players operation @e[tag=rocket-init,distance=..10] speed = @s speed
scoreboard players operation @e[tag=rocket-init,distance=..10] speed /= #1000 Num
scoreboard players set @e[tag=rocket-init,distance=..10] age 1200
scoreboard players set @e[tag=rocket-init,distance=..10] fall-speed 0

#角度代入
function math:get-rand
scoreboard players operation #AngX reg1 = #rand return
scoreboard players operation #AngX reg1 %= #200 Num
scoreboard players remove #AngX reg1 100
scoreboard players operation #AngX reg1 += @s AngX
function math:get-rand
scoreboard players operation #AngY reg1 = #rand return
scoreboard players operation #AngY reg1 %= #200 Num
scoreboard players remove #AngY reg1 100
scoreboard players operation #AngY reg1 += @s AngY
execute store result entity @e[tag=rocket-init,distance=..10,limit=1] Rotation[1] float 0.01 run scoreboard players get #AngX reg1
execute store result entity @e[tag=rocket-init,distance=..10,limit=1] Rotation[0] float 0.01 run scoreboard players get #AngY reg1
execute as @e[tag=rocket-init,distance=..10,limit=1] at @s run tp @s ~ ~ ~ ~90 ~

#tellraw @p [{"score" : {"name":"@e[tag=rocket-init,distance=..5,limit=1]", "objective":"speed"}}, {"text":" "}, {"score" : {"name":"@e[tag=rocket-init,distance=..5,limit=1]", "objective":"age"}}]

#発射したならreload時間設定
execute if entity @e[tag=rocket-init,distance=..20] run scoreboard players set @s w4-reload 2

#残弾数減算
scoreboard players remove @s ammunition4 1

#音
#playsound minecraft:block.piston.contract ambient @a ~ ~ ~ 1 1.5
playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 1 1.5

#x,y,z方向の速度スコア化
scoreboard players operation @e[tag=rocket-init,distance=..20] speedX = @s speedX
scoreboard players operation @e[tag=rocket-init,distance=..20] speedY = @s speedY
scoreboard players operation @e[tag=rocket-init,distance=..20] speedZ = @s speedZ
#execute as @e[tag=rocket-init,distance=..20] run scoreboard players operation @s speedX *= @s speed
#execute as @e[tag=rocket-init,distance=..20] run scoreboard players operation @s speedY *= @s speed
#execute as @e[tag=rocket-init,distance=..20] run scoreboard players operation @s speedZ *= @s speed
#scoreboard players operation @e[tag=rocket-init,distance=..20] speedX /= #10 Num
#scoreboard players operation @e[tag=rocket-init,distance=..20] speedY /= #10 Num
#scoreboard players operation @e[tag=rocket-init,distance=..20] speedZ /= #10 Num
#tellraw @p [{"score" : {"name":"@s", "objective":"speedX"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedY"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedZ"}}]
#execute as @e[tag=rocket-init,distance=..20] run tellraw @p [{"score" : {"name":"@s", "objective":"speedX"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedY"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"speedZ"}}]

#終了処理
tag @s remove rocket-launting-executer
tag @e[tag=rocket-init,distance=..10] remove rocket-init
scoreboard players set @p[scores={rightClick=1..}] rightClick 0
