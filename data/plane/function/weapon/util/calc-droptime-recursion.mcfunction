#> plane:weapon/util/calc-droptime-recursion
#
# 
#
# @within
#   function plane:weapon/util/calc-droptime
#   function plane:weapon/util/calc-droptime-recursion

scoreboard players add #drop-speed vp.input 1
scoreboard players add #drop-time vp.return 1

scoreboard players operation #altitude vp.return -= #drop-speed vp.input

execute if score #altitude vp.return matches 0.. run function plane:weapon/util/calc-droptime-recursion
