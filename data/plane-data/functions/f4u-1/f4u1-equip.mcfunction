#> plane-data:f4u-1/f4u1-equip
#
# 装備の変更処理
# @input
#   executer @e[tag=plane-root]
#
# @within function plane:equip/equip-manager

#> private
# @private
    #declare score_holder #1000lb #1000lb爆弾アイテムを装備していることを示す
    #declare score_holder #ag-rocket #ag-rocket爆弾アイテムを装備していることを示す
    #declare score_holder #kill-weapon #現在装備中の爆弾を消すべきであるとのフラグ

#装備品チェック
execute store success score #1000lb vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:500kg-bomb}}]},distance=..30]
execute store success score #ag-rocket vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:ag-rocket}}]},distance=..30]

#初期タグ設定
tag @s remove 1000lb
tag @s remove has-bomb
tag @s remove has-rocket
tag @s remove has-weapon2
tag @s remove main-weapon2
tag @s remove has-weapon3
tag @s remove main-weapon3

#装備
execute if score #1000lb vp.reg1 matches 1.. run tag @s add has-bomb
execute if score #1000lb vp.reg1 matches 1.. run tag @s add 1000lb
execute if score #1000lb vp.reg1 matches 1.. run tag @s add has-weapon2
execute if score #1000lb vp.reg1 matches 1.. run tag @s add main-weapon2
execute if score #ag-rocket vp.reg1 matches 1.. run tag @s add has-rocket
execute if score #ag-rocket vp.reg1 matches 1.. run tag @s add has-weapon3
execute if score #ag-rocket vp.reg1 matches 1.. run tag @s add main-weapon3

#装備種別変更
scoreboard players set @s vp.weapon-types 2
scoreboard players operation @s[tag=has-bomb] vp.weapon-types *= #3 vp.Num
scoreboard players operation @s[tag=has-rocket] vp.weapon-types *= #5 vp.Num
#weapon-id
# 2: 12.7mm gun
# 3: bomb
# 5: rocket

#装備済み爆弾削除
scoreboard players set #kill-weapon vp.reg1 0
execute if entity @s[tag=!1000lb] if entity @e[tag=target-parts,tag=1000lb,tag=bomb-normal] run scoreboard players set #kill-weapon vp.reg1 1
execute if entity @s[tag=!has-rocket] if entity @e[tag=target-parts,tag=has-rocket] run scoreboard players set #kill-weapon vp.reg1 1
execute if score #kill-weapon vp.reg1 matches 1.. run kill @e[tag=target-parts,tag=plane-bomb]
execute if score #kill-weapon vp.reg1 matches 1.. run kill @e[tag=target-parts,tag=plane-rocket]

#弾薬リセット
scoreboard players operation @s[tag=has-bomb] vp.ammunition2 = @s vp.max-ammo2
scoreboard players set @s[tag=!has-bomb] vp.ammunition2 0
scoreboard players operation @s[tag=has-rocket] vp.ammunition3 = @s vp.max-ammo3
scoreboard players set @s[tag=!has-rocket] vp.ammunition3 0

#ステータス変更
#装備に応じて右記ステータス変更：最高速度　巡航速度　旋回力
