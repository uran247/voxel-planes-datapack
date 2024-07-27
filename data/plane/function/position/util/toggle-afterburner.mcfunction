#> plane:position/util/toggle-afterburner
#
# @input
#    executer 
#
# @within function plane:position/position

#> prv
#   @private
    #declare tag afterburner-off
    #declare tag afterburner-on

execute if entity @s[tag=!use-wep] on passengers if entity @s[tag=plane-afterburner,tag=!afterburner-off] run data modify entity @s block_state.Name set value "minecraft:air"
execute if entity @s[tag=!use-wep] on passengers if entity @s[tag=plane-afterburner,tag=!afterburner-off] run tag @s remove afterburner-on
execute if entity @s[tag=!use-wep] on passengers if entity @s[tag=plane-afterburner,tag=!afterburner-off] run tag @s add afterburner-off

execute if entity @s[tag=use-wep] on passengers if entity @s[tag=plane-afterburner,tag=!afterburner-on] run data modify entity @s block_state.Name set value "minecraft:fire"
execute if entity @s[tag=use-wep] on passengers if entity @s[tag=plane-afterburner,tag=!afterburner-on] run tag @s remove afterburner-off
execute if entity @s[tag=use-wep] on passengers if entity @s[tag=plane-afterburner,tag=!afterburner-on] run tag @s add afterburner-on

    #execute if entity @s[tag=use-wep] on passengers if entity @s[tag=plane-afterburner,tag=afterburner-on] run say on
    #execute if entity @s[tag=!use-wep] on passengers if entity @s[tag=plane-afterburner,tag=afterburner-off] run say off