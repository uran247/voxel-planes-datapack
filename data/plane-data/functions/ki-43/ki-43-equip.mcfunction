#> plane-data:ki-43/ki-43-equip
#
# 装備の変更処理
# @input
#   executer @e[tag=plane-root]
#
# @within function plane:equip/equip-manager
#

#> private
# @private
    #declare score_holder #12p7mm-gun #12.7mm機銃アイテムを装備していることを示す

#装備品チェック
execute store success score #12p7mm-gun vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:ho-103}}]},distance=..30]

#初期タグ設定
tag @s remove 12p7mm
tag @s add 7p7mm

#装備
execute if score #12p7mm-gun vp.reg1 matches 1.. run tag @s add 12p7mm
execute if score #12p7mm-gun vp.reg1 matches 1.. run tag @s remove 7p7mm

#装備種別変更
#scoreboard players set @s weapon-types 6
#scoreboard players operation @s[tag=has-bomb] weapon-types *= #5 vp.Num
#weapon-id
# 2: gun

#最大弾薬変更
scoreboard players set @s[tag=7p7mm] vp.max-ammo1 500
scoreboard players set @s[tag=12p7mm] vp.max-ammo1 270

#リロード時間変更
scoreboard players set @s[tag=7p7mm] vp.max-w1-reload 140
scoreboard players set @s[tag=12p7mm] vp.max-w1-reload 210

#武器名変更
data modify entity @s[tag=7p7mm] HandItems[0].tag.weapons[0] set value "7.7mm gun"
data modify entity @s[tag=12p7mm] HandItems[0].tag.weapons[0] set value "12.7mm gun"

#弾薬リセット
scoreboard players operation @s vp.ammunition1 = @s vp.max-ammo1

#ステータス変更
#装備に応じて右記ステータス変更：最高速度　巡航速度　旋回力
