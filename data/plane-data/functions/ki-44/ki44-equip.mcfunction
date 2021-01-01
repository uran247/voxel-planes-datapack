#> plane-data:ki-44/ki44-equip
#
# 装備の変更処理
# @input
#   executer @e[tag=plane-root]
#
# @within function plane:equip/equip-manager

#> private
# @private
    #declare score_holder #100kg #100kg爆弾アイテムを装備していることを示す
    #declare score_holder #kill-weapon #現在装備中の爆弾を消すべきであるとのフラグ

#装備品チェック
execute store success score #100kg vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:100kg-bomb}}]},distance=..30]

#初期タグ設定
tag @s remove 100kg
tag @s remove has-bomb
tag @s remove has-weapon2
tag @s remove main-weapon2

#装備
execute if score #100kg vp.reg1 matches 1.. run tag @s add has-bomb
execute if score #100kg vp.reg1 matches 1.. run tag @s add 100kg
execute if score #100kg vp.reg1 matches 1.. run tag @s add has-weapon2
execute if score #100kg vp.reg1 matches 1.. run tag @s add main-weapon2

#装備種別変更
scoreboard players set @s vp.weapon-types 2
scoreboard players operation @s[tag=has-bomb] vp.weapon-types *= #3 vp.Num
#weapon-id
# 2: 12.7mm gun
# 3: bomb

#装備済み爆弾削除
scoreboard players set #kill-weapon vp.reg1 0
execute if entity @s[tag=!100kg] if entity @e[tag=target-parts,tag=100kg,tag=bomb-normal] run scoreboard players set #kill-weapon vp.reg1 1
execute if score #kill-weapon vp.reg1 matches 1.. run kill @e[tag=target-parts,tag=plane-bomb]

#弾薬リセット
scoreboard players operation @s[tag=has-bomb] vp.ammunition2 = @s vp.max-ammo2
scoreboard players set @s[tag=!has-bomb] vp.ammunition2 0

#ステータス変更
#装備に応じて右記ステータス変更：最高速度　巡航速度　旋回力
