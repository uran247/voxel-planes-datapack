#> plane:weapon/util/summon-bullet
#
# @input 
#   executer @e[tag=plane-root]
#   position @s
#   storage minecraft:plane-datapack temporary.weapon
#   score_holder #is-tracer #曳光弾かどうか,0のときtrue
#
# @within function plane:weapon/use-weapon/use-gun

#> private
#
# @private
    #declare tag bullet-init #初期化中の爆弾であることを示す
    #declare score_holder #is-tracer #曳光弾を発射すべきかどうかを示す

#銃弾召喚
execute if score #is-tracer vp.reg1 matches 0 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Tags:[gun,gun-init,bullet-init,entity-nohit,offset-base,tracer]}
execute unless score #is-tracer vp.reg1 matches 0 run summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:[gun,gun-init,bullet-init,entity-nohit,offset-base],Duration:20}

#データセット
execute store result score @e[type=armor_stand,tag=bullet-init,distance=..1,limit=1] vp.offsetX run data get storage minecraft:plane-datapack temporary.weapon.offset[0]
execute store result score @e[type=armor_stand,tag=bullet-init,distance=..1,limit=1] vp.offsetY run data get storage minecraft:plane-datapack temporary.weapon.offset[1]
execute store result score @e[type=armor_stand,tag=bullet-init,distance=..1,limit=1] vp.offsetZ run data get storage minecraft:plane-datapack temporary.weapon.offset[2]

#初期化タグ削除
tag @e[type=armor_stand,tag=bullet-init,distance=..1,limit=1] remove bullet-init