#> plane:weapon/use-weapon/use-bomb
#
# 爆弾投下
#
# @input
#   execute @e[tag=plane-root]
#
# @within function plane:weapon/use-weapon

#> private
# @private
    #declare tag bombing-executer #爆撃実行機体を示す
    #declare tag use-init #土台AECが初期化中であることを示す
    #declare score_holder #plane-id #実行者のplane-idを示す

# 実行者タグ付け
tag @s add bombing-executer

# 投下対象判定
scoreboard players set #init-tag-add vp.reg1 0
execute on passengers if entity @s[tag=plane-bomb] run function plane:weapon/use-weapon/tags-first-weapon

# 機体との位置関連付け無効
tag @e[tag=use-init,distance=..1] remove plane
tag @e[tag=use-init,distance=..1] add dropping

# 速度、寿命、機体ID付与
scoreboard players operation @e[tag=use-init,distance=..1] vp.speed = @s vp.speed
scoreboard players operation @e[tag=use-init,distance=..1] vp.speed /= #1000 vp.Num
scoreboard players set @e[tag=use-init,distance=..1] vp.age 1200
scoreboard players operation @e[tag=use-init,distance=..1] vp.plane-id = @s vp.plane-id

# 角度代入
execute store result entity @e[tag=use-init,distance=..1,limit=1] Rotation[1] float 0.01 run scoreboard players get @s vp.AngX
execute store result entity @e[tag=use-init,distance=..1,limit=1] Rotation[0] float 0.01 run scoreboard players get @s vp.AngY

# x,y,z方向の速度スコア化
scoreboard players operation @e[tag=use-init,distance=..1] vp.speedX = @s vp.speedX
scoreboard players operation @e[tag=use-init,distance=..1] vp.speedY = @s vp.speedY
scoreboard players operation @e[tag=use-init,distance=..1] vp.speedZ = @s vp.speedZ
execute as @e[tag=use-init,distance=..1] run scoreboard players operation @s vp.speedX *= @s vp.speed
execute as @e[tag=use-init,distance=..1] run scoreboard players operation @s vp.speedY *= @s vp.speed
execute as @e[tag=use-init,distance=..1] run scoreboard players operation @s vp.speedZ *= @s vp.speed
scoreboard players operation @e[tag=use-init,distance=..1] vp.speedX /= #10 vp.Num
scoreboard players operation @e[tag=use-init,distance=..1] vp.speedY /= #10 vp.Num
scoreboard players operation @e[tag=use-init,distance=..1] vp.speedZ /= #10 vp.Num

# displayの表示上の位置へ移動
ride @e[tag=use-init,distance=..1,limit=1] dismount
execute as @e[tag=use-init,distance=..1,limit=1] store result score @s vp.new-offsetX run data get entity @s transformation.translation[0] 1000
execute as @e[tag=use-init,distance=..1,limit=1] store result score @s vp.new-offsetY run data get entity @s transformation.translation[1] 1000
execute as @e[tag=use-init,distance=..1,limit=1] store result score @s vp.offsetZ run scoreboard players get @s vp.offsetZ
# アマスタにライドしてマウントポイントが2ブロック上にずれているので補正
execute as @e[tag=use-init,distance=..1,limit=1] run scoreboard players add @s vp.new-offsetY 2000

data modify entity @e[tag=use-init,distance=..1,limit=1] transformation.translation set value [0f,0f,0f]
execute at @s as @e[tag=use-init,distance=..1,limit=1] run function plane:position/move-to-offset
    #tellraw @p [{"score" : {"name":"@e[tag=use-init,distance=..5,limit=1]", "objective":"speed"}}, {"text":" "}, {"score" : {"name":"@e[tag=use-init,distance=..5,limit=1]", "objective":"age"}}]
    #execute as @e[tag=use-init,limit=1] run tellraw @p [{"nbt":"Pos","entity": "@s"}]
    
# cooltime時間設定
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.current-cooltime set value 4

# 音
playsound minecraft:block.piston.contract ambient @a ~ ~ ~ 1 1.5

# 残弾数減算
scoreboard players remove #ammunition vp.reg1 1
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.current-ammunition int 1 run scoreboard players get #ammunition vp.reg1

# 終了処理
tag @s remove bombing-executer
tag @e[tag=use-init,distance=..50] remove use-init
scoreboard players set @p[scores={vp.rightClick=1..}] vp.rightClick 0

