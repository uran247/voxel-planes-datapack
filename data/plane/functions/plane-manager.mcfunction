#move, positionを実行
#入力 entity:plane-root

#パーツにタグ付け
scoreboard players operation #plane-id vp.reg1 = @s vp.plane-id
execute at @s as @e[tag=plane,tag=!plane-root,tag=!position-processed] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add target-parts

#移動、位置補正実行
execute as @s[tag=!no-move] at @s run function plane:move/plane-move
execute as @s at @s run function plane:position/position

#装備管理
execute if score @s vp.speed matches ..0 as @a[tag=plane-rider,tag=change-inventory] if score #plane-id vp.reg1 = @s vp.plane-id run tag @s add check-plane-equip
execute if entity @a[tag=plane-rider,tag=check-plane-equip] at @s[scores={vp.speed=..0}] run function plane:equip/equip-manager
tag @a[tag=check-plane-equip] remove change-inventory
tag @a[tag=check-plane-equip] remove check-plane-equip

#タグ削除
tag @e[tag=target-parts] remove target-parts

