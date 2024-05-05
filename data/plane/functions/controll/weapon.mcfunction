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
execute if items entity @s weapon.offhand *[minecraft:custom_data~{item-type:controll-rod}] run tag @s add weapon-user

#使用武器変更判定
execute unless items entity @s weapon.offhand *[minecraft:custom_data~{item-type:controll-rod}] at @s run function plane:controll/weapon/switch-weapon

#右クリック判定
function plane:controll/detect-interract

#weaponfunctionを実行フラグを立てる
execute if entity @s[tag=need-use-weapon] run tag @e[tag=controll-target,distance=..1] add need-use-weapon

#使用者タグ削除
tag @s remove weapon-user
tag @s remove need-use-weapon
