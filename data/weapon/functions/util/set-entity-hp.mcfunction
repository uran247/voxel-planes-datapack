#> weapon:util/set-entity-hp
#
# hpスコア化
#
# @input
#   executer @e
#       HPを取得したいエンティティ
#
# @output
#   score @s vp.reg1
#       体力を示す
#
# @within function weapon:**
#

execute store result score @s[type=spawner_minecart] vp.reg1 run data get entity @s MaxNearbyEntities
execute store result score @s[type=!spawner_minecart] vp.reg1 run data get entity @s Health
execute store result score @s[type=player] vp.taken-damage run data get entity @s Health
