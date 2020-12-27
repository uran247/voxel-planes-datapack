#> plane:controll/weapon
#
# 武器使用操作を検知し、機体に応じてweaponfunctionを呼び分け
# 実行者：プレイヤー
# 入力：エンティティ：プレイヤー　座標：機体
# 利用可能タグ controll-target:機体
#
# @within plane-data:**
    #declare tag weapon-user

#武器使用者にタグ付け
tag @s[nbt={Inventory:[{Slot:-106b,tag:{item-type:controll-rod}}]}] add weapon-user

#使用武器選択判定
execute if entity @s[nbt=!{Inventory:[{Slot:-106b,tag:{item-type:controll-rod}}]}] at @s run function plane:controll/weapon/switch-weapon

#右クリック判定
execute if score @s vp.rightClick matches 2.. run scoreboard players set @s vp.rightClick 0

#weaponfunctionを実行
execute as @e[tag=controll-target,distance=..1] at @s run function plane:weapon/weapon-manager

#使用者タグ削除
tag @s remove weapon-user
