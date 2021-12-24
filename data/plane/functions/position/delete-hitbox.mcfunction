#> plane:position/delete-hitbox
#
# @input
#   executer @e[tag=plane-root]
#
# @within function plane:position/position
#
#> private
   #declare score_holder #difficulty
   #declare score_holder #plane-id

#HPが0のパーツをキル
#body
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.body{hp:0d} as @e[tag=plane-hitbox,tag=body,tag=target-parts,distance=..30] run kill @s

#engine
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine{hp:0d} as @e[tag=plane-hitbox,tag=engine,tag=target-parts,distance=..30] run kill @s
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-r{hp:0d} as @e[tag=plane-hitbox,tag=engine-r,tag=target-parts,distance=..30] run kill @s
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-l{hp:0d} as @e[tag=plane-hitbox,tag=engine-l,tag=target-parts,distance=..30] run kill @s
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-r2{hp:0d} as @e[tag=plane-hitbox,tag=engine-r2,tag=target-parts,distance=..30] run kill @s
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-l2{hp:0d} as @e[tag=plane-hitbox,tag=engine-l2,tag=target-parts,distance=..30] run kill @s

#elevator
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator{hp:0d} as @e[tag=plane-hitbox,tag=elevator,tag=target-parts,distance=..30] run kill @s
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-r{hp:0d} as @e[tag=plane-hitbox,tag=elevator-r,tag=target-parts,distance=..30] run kill @s
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-l{hp:0d} as @e[tag=plane-hitbox,tag=elevator-l,tag=target-parts,distance=..30] run kill @s

#aileron
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-r{hp:0d} as @e[tag=plane-hitbox,tag=aileron-r,tag=target-parts,distance=..30] run kill @s
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-l{hp:0d} as @e[tag=plane-hitbox,tag=aileron-l,tag=target-parts,distance=..30] run kill @s
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-r2{hp:0d} as @e[tag=plane-hitbox,tag=aileron-r2,tag=target-parts,distance=..30] run kill @s
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-l2{hp:0d} as @e[tag=plane-hitbox,tag=aileron-l2,tag=target-parts,distance=..30] run kill @s

#radder
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder{hp:0d} as @e[tag=plane-hitbox,tag=radder,tag=target-parts,distance=..30] run kill @s
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder-r{hp:0d} as @e[tag=plane-hitbox,tag=radder-r,tag=target-parts,distance=..30] run kill @s
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder-l{hp:0d} as @e[tag=plane-hitbox,tag=radder-l,tag=target-parts,distance=..30] run kill @s
