#> plane:controll/detect-interract
#
# itnerractを右クリックしたか検知
#
# @input
#   executer @p
#   position @e[tag=plane-root]
#
# @output
#   tag executer add need-use-weapon
#
# @within function plane:controll/weapon

#> prv
#   @private
    #declare score_holder #right-timestamp #右クリックした時間


execute on vehicle on passengers if entity @s[type=interaction] store result score #right-timestamp vp.reg1 run data get entity @s interaction.timestamp
scoreboard players operation #right-timestamp vp.reg1 -= #ticktime vp.reg1
execute on vehicle on passengers if entity @s[type=interaction] on target if entity @s[tag=weapon-user] if score #right-timestamp vp.reg1 matches -3.. run tag @s add need-use-weapon