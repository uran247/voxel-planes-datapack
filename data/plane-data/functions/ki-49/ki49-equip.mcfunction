#> plane-data:ki-49/ki49-equip
#
# 装備の変更処理
# @input
#   executer @e[tag=plane-root]
#
# @within function plane:equip/equip-manager

#> private
# @private
    #declare score_holder #500kg #500kg爆弾アイテムを装備していることを示す
    #declare score_holder #kill-weapon #現在装備中の爆弾を消すべきであるとのフラグ
    #declare score_holder #remove-500kg #800kg爆弾を外したことを示す
    #declare score_holder #remove-250kg #250kg爆弾を外したことを示す

#装備品チェック
execute store success score #500kg vp.reg1 if entity @e[type=minecraft:donkey,tag=target-parts,nbt={Items:[{tag:{item-type:500kg-bomb}}]},distance=..30]

#初期タグ設定
execute store success score #remove-500kg vp.reg1 run tag @s remove 500kg
tag @s add 250kg

#装備
execute if score #500kg vp.reg1 matches 1.. run tag @s add 500kg
execute if score #500kg vp.reg1 matches 1.. store success score #remove-250kg vp.reg1 run tag @s remove 250kg

#装備種別変更
#weapon-id
# 2: bomb

#装備済み爆弾削除 爆弾召喚無しのためキルはしない
#scoreboard players set #kill-weapon vp.reg1 0
#execute if entity @s[tag=!250kg] run scoreboard players set #kill-weapon vp.reg1 1
#execute if entity @s[tag=!500kg] run scoreboard players set #kill-weapon vp.reg1 1
#execute if score #kill-weapon vp.reg1 matches 1.. run kill @e[tag=target-parts,tag=plane-bomb]
#execute if score #kill-weapon vp.reg1 matches 1.. run kill @e[tag=target-parts,tag=plane-rocket]

#最大弾薬変更
scoreboard players set @s[tag=250kg] vp.max-ammo1 4
scoreboard players set @s[tag=500kg] vp.max-ammo1 1

#弾薬リセット
execute if score #remove-500kg vp.reg1 matches 1.. run scoreboard players operation @s[tag=has-bomb] vp.ammunition1 = @s vp.max-ammo1
execute if score #remove-250kg vp.reg1 matches 1.. run scoreboard players operation @s[tag=has-bomb] vp.ammunition1 = @s vp.max-ammo1

#ステータス変更
#装備に応じて右記ステータス変更：最高速度　巡航速度　旋回力

