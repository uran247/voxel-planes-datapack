#> plane:controll/weapon
#
# 武器使用操作を検知し、機体に応じてweaponfunctionを呼び分け
# 利用可能タグ controll-target:機体
#
# @input
#   executer @p
#   position @e[tag=plane-root]
#
# @within plane:controll/plane-controll
    #declare tag weapon-user

#武器使用者にタグ付け
tag @s[nbt={Inventory:[{Slot:-106b,tag:{item-type:controll-rod}}]}] add weapon-user

#使用武器変更判定
execute if entity @s[nbt=!{Inventory:[{Slot:-106b,tag:{item-type:controll-rod}}]}] at @s run function plane:controll/weapon/switch-weapon

#右クリック判定
execute if score @s vp.rightClick matches 2.. run scoreboard players set @s vp.rightClick 0

#weaponfunctionを実行
execute if score @s vp.rightClick matches 1 run tag @e[tag=controll-target,distance=..1] add need-use-weapon

#使用者タグ削除
tag @s remove weapon-user
