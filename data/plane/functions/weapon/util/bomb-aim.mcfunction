#> plane:weapon/util/bomb-aim
#
# 照準点を表示
#
# @input
#   entity 0-0-0-0-a{Rotation:[~,任意の角度]}
#   executer @e[tag=plane-root]
#
# @within
#   plane-data:**
#   plane:weapon/util/display-aim

#> prv
#
# @private
    #declare tag aim-viewer #aimを見る人を示す


tag @p[tag=plane-rider] add aim-viewer

execute positioned as @e[tag=plane-bomb,tag=plane,tag=target-parts,distance=..20,limit=1] rotated as 0-0-0-0-a run tp 0-0-0-0-4 ^ ^ ^200 ~ ~
#tellraw @p [{"nbt":"Pos[1]","entity":"0-0-0-0-4"}] 
execute at 0-0-0-0-4 as @s run function plane:weapon/util/check-ground
execute at 0-0-0-0-a run particle minecraft:dust 1 1 1 200 ~ ~2 ~ 5 0 0.01 0 10 force @p[tag=aim-viewer]
execute at 0-0-0-0-a run particle minecraft:dust 1 1 1 200 ~ ~2 ~ 0.01 0 5 0 10 force @p[tag=aim-viewer]
#tellraw @p [{"nbt":"Pos[1]","entity":"0-0-0-0-a"}] 
execute as 0-0-0-0-4 run tp @s 0 1 0
execute as 0-0-0-0-a run tp @s 0 1 0

tag @p[tag=aim-viewer] remove aim-viewer
