#> plane-data:fw190d-9/fw190d9-equip
#
# 装備の変更処理
# @input
#   executer @e[tag=plane-root]
#
# @within function plane:equip/equip-manager

#> private
# @private
    #declare score_holder #50kg #50kg爆弾アイテムを装備していることを示す
    #declare score_holder #500kg #500kg爆弾アイテムを装備していることを示す
    #declare score_holder #remove-50kg #現在装備中の50kg爆弾を消すべきであるとのフラグ
    #declare score_holder #remove-500kg #現在装備中の500kg爆弾を消すべきであるとのフラグ


#装備品チェック
execute store success score #500kg vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:500kg-bomb}}]},distance=..30]
execute store success score #50kg vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:50kg-bomb}}]},distance=..30]

#初期タグ設定
tag @s remove 500kg
tag @s remove has-bomb
tag @s remove has-weapon3
tag @s remove main-weapon3

#装備
execute if score #500kg vp.reg1 matches 1.. run tag @s add has-bomb
execute if score #500kg vp.reg1 matches 1.. run tag @s add has-weapon3
execute if score #500kg vp.reg1 matches 1.. run tag @s add main-weapon3
execute if score #500kg vp.reg1 matches 1.. run tag @s add 500kg

#装備種別変更
scoreboard players set @s vp.weapon-types 6
scoreboard players operation @s[tag=has-bomb] vp.weapon-types *= #5 vp.Num
#weapon-id
# 2: 20mm gun
# 3: 13mm gun
# 5: bomb

#装備済み爆弾削除
scoreboard players set #remove-500kg vp.reg1 0
execute if entity @s[tag=!500kg] if entity @e[tag=target-parts,tag=500kg,tag=bomb-normal] run scoreboard players set #remove-500kg vp.reg1 1
execute if score #remove-500kg vp.reg1 matches 1.. run kill @e[tag=target-parts,tag=500kg,tag=plane-bomb]

#弾薬リセット
scoreboard players set @s vp.max-ammo3 0
scoreboard players add @s[tag=has-bomb,tag=500kg] vp.max-ammo3 1
scoreboard players operation @s[tag=has-bomb] vp.ammunition3 = @s vp.max-ammo3

scoreboard players set @s[tag=!has-bomb] vp.ammunition3 0

#ステータス変更
#装備に応じて右記ステータス変更：最高速度　巡航速度　旋回力
