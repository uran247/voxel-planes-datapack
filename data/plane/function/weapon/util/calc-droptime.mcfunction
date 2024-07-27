#> plane:weapon/util/calc-droptime
#
# @input
#   as @e[tag=plane-root]
#   at @e[tag=plane-root]
#
# @within function plane:weapon/util/display-aim/**


scoreboard players set #drop-time vp.return 0
scoreboard players operation #altitude vp.return *= #100 vp.Num

function plane:weapon/util/calc-droptime-recursion


