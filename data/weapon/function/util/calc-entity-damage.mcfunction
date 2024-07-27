#> weapon:util/calc-entity-damage
#
# プレイヤー以外のエンティティに対してダメージ/防御率分HPをへらす
#
# @input
#   executer @e
#       ダメージを与えたいエンティティ
#   score vp.reg1
#       現在のHP
#   score vp.input
#       与えたいダメージ
#
# @output
#   score: @s vp.reg1
#       新しい体力を示す
#
# @within function weapon:**
#

#execute as @s[scores={defence=1..}] run scoreboard players operation @s vp.input /= @s defence
scoreboard players operation @s vp.reg1 -= @s vp.input
execute as @s[scores={vp.reg1=..-1}] run scoreboard players set @s vp.reg1 0
