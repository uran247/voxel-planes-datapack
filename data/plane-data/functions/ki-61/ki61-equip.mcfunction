#> plane-data:ki-61/ki61-equip
#
# 装備の変更処理
# @input
#   executer @e[tag=plane-root]
#
# @within function plane:equip/equip-manager
#

#> within
# @within
#   plane-data:ki-61/ki61-equip
#   plane-data:ki-61/ki61-weapon-manager
       #declare tag mg151 #mg151機銃を装備していることを示す
       #declare tag has-bomb #爆弾を装備していることを示す
       #declare tag 250kg #250kg通常爆弾を装備していることを示す

#> private
# @private
    #declare score_holder #250kg #250kg爆弾アイテムを装備していることを示す
    #declare score_holder #mg151 #mg151アイテムを装備していることを示す
    #declare score_holder #kill-weapon #現在装備中の爆弾を消すべきであるとのフラグ

#装備品チェック
execute store success score #250kg vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:250kg-bomb}}]},distance=..30]
execute store success score #mg151 vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:mg151}}]},distance=..30]

#初期タグ設定
tag @s remove 250kg
tag @s remove has-bomb
tag @s remove has-weapon3
tag @s remove main-weapon3
tag @s remove mg151

#装備
execute if score #250kg vp.reg1 matches 1.. run tag @s add has-bomb
execute if score #250kg vp.reg1 matches 1.. run tag @s add 250kg
execute if score #250kg vp.reg1 matches 1.. run tag @s add has-weapon3
execute if score #250kg vp.reg1 matches 1.. run tag @s add main-weapon3
execute if score #mg151 vp.reg1 matches 1.. run tag @s add mg151

#装備種別変更
scoreboard players set @s vp.weapon-types 6
scoreboard players operation @s[tag=has-bomb] vp.weapon-types *= #5 vp.Num
#weapon-id
# 2: 20mm gun
# 3: 12.7mm gun
# 5: bomb

#装備済み爆弾削除
scoreboard players set #kill-weapon vp.reg1 0
execute if entity @s[tag=!250kg] if entity @e[tag=target-parts,tag=250kg,tag=bomb-normal] run scoreboard players set #kill-weapon vp.reg1 1
execute if score #kill-weapon vp.reg1 matches 1.. run kill @e[tag=target-parts,tag=plane-bomb]

#弾薬リセット
scoreboard players operation @s[tag=has-bomb] vp.ammunition3 = @s vp.max-ammo3
scoreboard players set @s[tag=!has-bomb] vp.ammunition3 0

#ステータス変更
#装備に応じて右記ステータス変更：最高速度　巡航速度　旋回力
