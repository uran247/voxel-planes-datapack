#> plane:summon/spawner-manager
#
# スポナーから召喚されたコウモリを検知して飛行機召喚
#
# @input
#   executer @e[type=bat,tag=plane-spawner]
#
# @within plane:**
#

function plane:summon/summon-plane

kill @s
