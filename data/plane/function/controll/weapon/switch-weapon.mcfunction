#> plane:controll/weapon/switch-weapon
#
# 武器使用操作を検知し、機体に応じてweaponfunctionを呼び分け
# 利用可能タグ controll-target:機体
#
# @input
#   executer @p
#
# @within plane:controll/weapon

#オフハンド入れ直し
execute if items entity @s weapon.offhand * unless items entity @s weapon.offhand *[minecraft:custom_data~{item-type:indicator}] run item replace block 0 1 0 container.1 from entity @s weapon.offhand

clear @s minecraft:crossbow[minecraft:custom_data~{item-type:controll-rod}]
loot replace entity @s weapon.offhand loot item:tools/controll-stick
loot give @s mine 0 1 0 stick[minecraft:custom_data={"load":"1b"}]
item replace block 0 1 0 container.1 with minecraft:air

#武装変更フラグを立てる
tag @e[type=armor_stand,tag=controll-target,distance=..20,sort=nearest,limit=1] add need-change-weapon
#run  function plane:controll/weapon/change-current-weapon

