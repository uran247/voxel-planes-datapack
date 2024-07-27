#> debug:summon-dummy-plane
# function debug:summon-dummy-plane

function plane-data:mig15bis/mig15bis
tag @e[tag=plane-root,tag=!has-rider,sort=nearest,limit=1] add has-dummy-rider
tag @e[tag=plane-seat,tag=!has-rider,sort=nearest,limit=1] add no-particle
tag @e[tag=plane-root,tag=!has-rider,sort=nearest,limit=1] add has-ai
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ai set value {current-waypoint-index:0,waypoints:[{Pos:[-250d,100d,-200d]},{Pos:[-250d,100d,200d]},{Pos:[150d,115d,200d]},{Pos:[150d,130d,-200d]}]}
#Speed設定(時速/3600/4*1000/20*10000 = 時速*34.72)
scoreboard players set @e[tag=plane-root,tag=has-dummy-rider,sort=nearest,limit=1] vp.speed 13888

