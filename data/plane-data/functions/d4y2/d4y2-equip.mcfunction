#> plane-data:d4y2/d4y2-equip
#
# 装備の変更処理
# @input
#   executer @e[tag=plane-root]
#
# @within function plane:equip/equip-manager

#> private
# @private
    #declare score_holder #500kg #500kg爆弾アイテムを装備していることを示す
    #declare score_holder #rocket #ロケットアイテムを装備していることを示す
    #declare score_holder #kill-weapon #現在装備中の武器を消すべきであるとのフラグ

#装備品チェック
execute store success score #500kg vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:500kg-bomb}}]},distance=..30]
execute store success score #rocket vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:aa-rocket}}]},distance=..30]

#初期タグ設定
tag @s remove has-rocket
tag @s remove 500kg
tag @s remove has-rocket
tag @s remove has-weapon4
tag @s remove main-weapon4
tag @s add 250kg
tag @s add 60kg

#装備
execute if score #rocket vp.reg1 matches 1.. run tag @s add has-rocket
execute if score #rocket vp.reg1 matches 1.. run tag @s add has-rocket
execute if score #rocket vp.reg1 matches 1.. run tag @s add has-weapon4
execute if score #rocket vp.reg1 matches 1.. run tag @s add main-weapon4
execute if score #rocket vp.reg1 matches 1.. run tag @s remove 60kg
execute if score #500kg vp.reg1 matches 1.. run tag @s add has-bomb
execute if score #500kg vp.reg1 matches 1.. run tag @s add 500kg
execute if score #500kg vp.reg1 matches 1.. run tag @s remove 250kg

#装備種別変更
scoreboard players set @s vp.weapon-types 2
scoreboard players operation @s[tag=has-bomb] vp.weapon-types *= #3 vp.Num
scoreboard players operation @s[tag=has-rocket] vp.weapon-types *= #5 vp.Num
#weapon-id
# 2: gun
# 3: bomb 
# 5: rocket

#装備済み爆弾削除
scoreboard players set #kill-weapon vp.reg1 0
execute if entity @s[tag=!60kg] if entity @e[tag=target-parts,tag=60kg,tag=bomb-normal] run scoreboard players set #kill-weapon vp.reg1 1
execute if entity @s[tag=!250kg] if entity @e[tag=target-parts,tag=250kg,tag=bomb-normal] run scoreboard players set #kill-weapon vp.reg1 1
execute if entity @s[tag=!500kg] if entity @e[tag=target-parts,tag=500kg,tag=bomb-normal] run scoreboard players set #kill-weapon vp.reg1 1
execute if entity @s[tag=!has-rocket] if entity @e[tag=target-parts,tag=has-rocket] run scoreboard players set #kill-weapon vp.reg1 1
execute if score #kill-weapon vp.reg1 matches 1.. run kill @e[tag=target-parts,tag=plane-bomb]
execute if score #kill-weapon vp.reg1 matches 1.. run kill @e[tag=target-parts,tag=plane-rocket]

#弾薬リセット
execute if score #kill-weapon vp.reg1 matches 1.. run scoreboard players operation @s[tag=has-bomb] vp.ammunition2 = @s vp.max-ammo2
execute if score #kill-weapon vp.reg1 matches 1.. run scoreboard players operation @s[tag=has-rocket] vp.ammunition4 = @s vp.max-ammo4

#ステータス変更
#装備に応じて右記ステータス変更：最高速度　巡航速度　旋回力
