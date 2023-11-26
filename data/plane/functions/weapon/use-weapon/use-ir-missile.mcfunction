#> plane:weapon/use-weapon/use-ir-missile
#
# ミサイル発射
#
# @input
#   execute @e[tag=plane-root]
#
# @within function plane:weapon/use-weapon

#> private
# @private
    #declare tag use-weapon-executer #爆撃実行機体を示す
    #declare tag weapon-init #初期化処理中の爆弾であることを示す
    #
    #declare score_holder #plane-id #実行者のplane-idを示す
    #declare score_holder #AngX #ロケットのピッチ角を示す
    #declare score_holder #AngY #ロケットのヨー角を示す

#実行者タグ付け
tag @s add use-weapon-executer

#使用対象判定
#scoreboard players operation #plane-id vp.reg1 = @s vp.plane-id
#execute as @e[tag=plane-missile,tag=plane,distance=..10,limit=1] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add weapon-init
#tag @e[tag=weapon-init,distance=..10] add missile-moving
scoreboard players set #init-tag-add vp.reg1 0
execute on passengers if entity @s[tag=plane-missile] run function plane:weapon/use-weapon/tags-first-weapon

#機体タグ削除
tag @e[tag=use-init,distance=..10] remove plane
tag @e[tag=use-init,distance=..10] add missile-moving

#スコア/データ付与
scoreboard players operation @e[tag=use-init,distance=..1] vp.speed = @s vp.speed
scoreboard players operation @e[tag=use-init,distance=..1] vp.speed /= #1000 vp.Num
scoreboard players set @e[tag=use-init,distance=..1] vp.age 200
scoreboard players set @e[tag=use-init,distance=..1] vp.fall-speed 0
data modify storage minecraft:plane-datapack temporary.target-uuid set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.target-uuid
execute as @e[tag=use-init,distance=..1] run function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].data.target-uuid set from storage minecraft:plane-datapack temporary.target-uuid 
function oh_my_dat:please

#飛翔モデルに変更
execute as @e[tag=use-init,distance=..10,limit=1] if score @s vp.launched-cmd matches 1.. store result entity @s item.tag.CustomModelData int 1 run scoreboard players get @s vp.launched-cmd

#角度代入
execute store result entity @e[tag=use-init,distance=..1,limit=1] Rotation[1] float 0.01 run scoreboard players get @s vp.AngX
execute store result entity @e[tag=use-init,distance=..1,limit=1] Rotation[0] float 0.01 run scoreboard players get @s vp.AngY
#execute as @e[tag=weapon-init,distance=..10,limit=1] at @s run tp @s ~ ~ ~ ~90 ~
    #tellraw @p [{"nbt":"Rotation","entity":"@e[tag=weapon-init,distance=..10,limit=1]"}] 

#x,y,z方向の速度スコア化
scoreboard players operation @e[tag=use-init,distance=..1] vp.speedX = @s vp.speedX
scoreboard players operation @e[tag=use-init,distance=..1] vp.speedY = @s vp.speedY
scoreboard players operation @e[tag=use-init,distance=..1] vp.speedZ = @s vp.speedZ

#displayの表示上の位置へ移動
ride @e[tag=use-init,distance=..1,limit=1] dismount
execute as @e[tag=use-init,distance=..1,limit=1] store result score @s vp.new-offsetX run data get entity @s transformation.translation[0] 1000
execute as @e[tag=use-init,distance=..1,limit=1] store result score @s vp.new-offsetY run data get entity @s transformation.translation[1] 1000
execute as @e[tag=use-init,distance=..1,limit=1] store result score @s vp.offsetZ run scoreboard players get @s vp.offsetZ
#アマスタにライドしてマウントポイントが2ブロック上にずれているので補正
execute as @e[tag=use-init,distance=..1,limit=1] run scoreboard players add @s vp.new-offsetY 2000

data modify entity @e[tag=use-init,distance=..1,limit=1] transformation.translation set value [0f,0f,0f]
execute at @s as @e[tag=use-init,distance=..1,limit=1] run function plane:position/move-to-offset

#音
playsound minecraft:entity.firework_rocket.launch ambient @a ~ ~ ~ 1 0.5
#tellraw @p [{"score" : {"name":"@e[tag=weapon-init,distance=..5,limit=1]", "objective":"speed"}}, {"text":" "}, {"score" : {"name":"@e[tag=weapon-init,distance=..5,limit=1]", "objective":"age"}}]

#cooltime時間設定
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.current-cooltime set value 4

#残弾数減算
scoreboard players remove #ammunition vp.reg1 1
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[{current-weapon:1b}].data.current-ammunition int 1 run scoreboard players get #ammunition vp.reg1

#終了処理
tag @s remove use-weapon-executer
tag @e[tag=use-init,distance=..50] remove use-init
scoreboard players set @p[scores={vp.rightClick=1..}] vp.rightClick 0
scoreboard players reset #target-uuid vp.reg1
scoreboard players reset @s vp.lockon-time