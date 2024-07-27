#> plane:weapon/util/summon-missile
#
# @input 
#   executer @e[tag=plane-root]
#   position @s
#   storage minecraft:plane-datapack temporary.weapon
#   oh_my_dat @e[tag=plane-root]
#
# @public

#> private
#
# @private
    #declare tag missile-init #初期化中の爆弾であることを示す

#ロケット召喚
summon item_display ~ ~ ~ {Tags:[weapon-init,plane,has-offset,has-model,plane-parts,entity-nohit,missile-init,plane-missile],NoGravity:1b,item:{id:"minecraft:diamond_sword",Count:1b,components:{"minecraft:custom_model_data":0}},interpolation_duration:0,teleport_duration:1,view_range:4.0f,transformation:{right_rotation:{angle:0f,axis:[0f,1f,0f]},left_rotation:{angle:0f,axis:[0f,0f,1f]},scale:[1f,1f,1f],translation:[0f,0f,0f]},item_display:"thirdperson_righthand",brightness:{block:0,sky:15}}

#データセット
execute store result score @e[type=item_display,tag=missile-init,distance=..1,limit=1] vp.offsetX run data get storage minecraft:plane-datapack temporary.weapon.offset[0] 1000
execute store result score @e[type=item_display,tag=missile-init,distance=..1,limit=1] vp.offsetY run data get storage minecraft:plane-datapack temporary.weapon.offset[1] 1000
execute store result score @e[type=item_display,tag=missile-init,distance=..1,limit=1] vp.offsetZ run data get storage minecraft:plane-datapack temporary.weapon.offset[2] 1000
execute store result score @e[type=item_display,tag=missile-init,distance=..1,limit=1] vp.damage run data get storage minecraft:plane-datapack temporary.weapon.damage
execute store result score @e[type=item_display,tag=missile-init,distance=..1,limit=1] vp.weight run data get storage minecraft:plane-datapack temporary.weapon.weight
execute store result score @e[type=item_display,tag=missile-init,distance=..1,limit=1] vp.launched-cmd run data get storage minecraft:plane-datapack temporary.weapon.launched-cmd
execute store result score @e[type=item_display,tag=missile-init,distance=..1,limit=1] vp.turn-rate run data get storage minecraft:plane-datapack temporary.weapon.turn-rate 100
execute store result score @e[type=item_display,tag=missile-init,distance=..1,limit=1] vp.max-speed run data get storage minecraft:plane-datapack temporary.weapon.max-speed 10
data modify entity @e[type=item_display,tag=missile-init,distance=..1,limit=1] Tags append from storage minecraft:plane-datapack temporary.weapon.kind
data modify entity @e[type=item_display,tag=missile-init,distance=..1,limit=1] Tags append from storage minecraft:plane-datapack temporary.weapon.type
execute store result entity @e[type=item_display,tag=missile-init,distance=..1,limit=1] item.components.minecraft:custom_model_data int 1 run data get storage minecraft:plane-datapack temporary.weapon.cmd
execute as @e[type=item_display,tag=missile-init,distance=..1,limit=1] run function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].data.seeker-sight-chord set from storage minecraft:plane-datapack temporary.weapon.seeker-sight-chord 
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].data.missile-target-angle-chord set from storage minecraft:plane-datapack temporary.weapon.missile-target-angle-chord
function oh_my_dat:please

#rootに紐づけ
ride @e[type=item_display,tag=missile-init,distance=..1,limit=1] mount @s

#初期化タグ削除
tag @e[type=item_display,tag=missile-init,distance=..1,limit=1] remove missile-init
