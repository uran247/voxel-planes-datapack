#> plane:position/summon-controll-entity
#
# @input
#   executer @e[tag=plane-root]
#
# @within function plane:position/position
#
#> private
   #declare score_holder #plane-id

# HPがあるが存在しないパーツを召喚
# body
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.body unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.body{hp:0d} unless entity @e[tag=plane-hitbox,tag=body,tag=target-parts,distance=..30] run summon interaction ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,body,has-offset],NoGravity:1b,width:1f,height:1f,response:0b}

# engine
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine{hp:0d} unless entity @e[tag=plane-hitbox,tag=engine,tag=target-parts,distance=..30] run summon interaction ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,engine,has-offset],NoGravity:1b,width:1f,height:1f,response:0b}
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-r unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-r{hp:0d} unless entity @e[tag=plane-hitbox,tag=engine-r,tag=target-parts,distance=..30] run summon interaction ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,engine-r,has-offset],NoGravity:1b,width:1f,height:1f,response:0b}
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-l unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-l{hp:0d} unless entity @e[tag=plane-hitbox,tag=engine-l,tag=target-parts,distance=..30] run summon interaction ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,engine-l,has-offset],NoGravity:1b,width:1f,height:1f,response:0b}
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-r2 unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-r2{hp:0d} unless entity @e[tag=plane-hitbox,tag=engine-r2,tag=target-parts,distance=..30] run summon interaction ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,engine-r2,has-offset],NoGravity:1b,width:1f,height:1f,response:0b}
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-l2 unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-l2{hp:0d} unless entity @e[tag=plane-hitbox,tag=engine-l2,tag=target-parts,distance=..30] run summon interaction ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,engine-l2,has-offset],NoGravity:1b,width:1f,height:1f,response:0b}

# elevator
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator{hp:0d} unless entity @e[tag=plane-hitbox,tag=elevator,tag=target-parts,distance=..30] run summon interaction ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,elevator,has-offset],NoGravity:1b,width:1f,height:1f,response:0b}
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-r unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-r{hp:0d} unless entity @e[tag=plane-hitbox,tag=elevator-r,tag=target-parts,distance=..30] run summon interaction ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,elevator-r,has-offset],NoGravity:1b,width:1f,height:1f,response:0b}
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-l unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-l{hp:0d} unless entity @e[tag=plane-hitbox,tag=elevator-l,tag=target-parts,distance=..30] run summon interaction ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,elevator-l,has-offset],NoGravity:1b,width:1f,height:1f,response:0b}

# aileron
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-r unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-r{hp:0d} unless entity @e[tag=plane-hitbox,tag=aileron-r,tag=target-parts,distance=..30] run summon interaction ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,aileron-r,has-offset],NoGravity:1b,width:1f,height:1f,response:0b}
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-l unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-l{hp:0d} unless entity @e[tag=plane-hitbox,tag=aileron-l,tag=target-parts,distance=..30] run summon interaction ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,aileron-l,has-offset],NoGravity:1b,width:1f,height:1f,response:0b}
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-r2 unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-r2{hp:0d} unless entity @e[tag=plane-hitbox,tag=aileron-r2,tag=target-parts,distance=..30] run summon interaction ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,aileron-r2,has-offset],NoGravity:1b,width:1f,height:1f,response:0b}
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-l2 unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-l2{hp:0d} unless entity @e[tag=plane-hitbox,tag=aileron-l2,tag=target-parts,distance=..30] run summon interaction ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,aileron-l2,has-offset],NoGravity:1b,width:1f,height:1f,response:0b}

# radder
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder{hp:0d} unless entity @e[tag=plane-hitbox,tag=radder,tag=target-parts,distance=..30] run summon interaction ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,radder,has-offset],NoGravity:1b,width:1f,height:1f,response:0b}
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder-r unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder-r{hp:0d} unless entity @e[tag=plane-hitbox,tag=radder-r,tag=target-parts,distance=..30] run summon interaction ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,radder-r,has-offset],NoGravity:1b,width:1f,height:1f,response:0b}
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder-l unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder-l{hp:0d} unless entity @e[tag=plane-hitbox,tag=radder-l,tag=target-parts,distance=..30] run summon interaction ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,radder-l,has-offset],NoGravity:1b,width:1f,height:1f,response:0b}

# cockpit
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.cockpit unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.cockpit{hp:0d} unless entity @e[tag=plane-hitbox,tag=cockpit,tag=target-parts,distance=..30] run summon interaction ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,cockpit,has-offset],NoGravity:1b,width:1f,height:1f,response:0b}

# click detector
execute unless entity @e[tag=plane-click-detector,tag=target-parts,distance=..30] run summon interaction ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-click-detector],NoGravity:1b,width:1.1f,height:2.1f,response:0b}

# display entity
execute unless entity @e[tag=plane-display-base,tag=target-parts,distance=..30] run summon armor_stand ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-display-base,plane-display],NoGravity:1b,Small:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute unless entity @e[tag=plane-display-lockon,tag=target-parts,distance=..30] run summon text_display ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-display-lockon,plane-display],NoGravity:1b,background:0,view_range:0.05f,teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-10f],scale:[5f,5f,5f]}}

# ステータスセット
# body
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.body
execute as @e[tag=plane-init,tag=body,distance=..1,limit=1] run function plane:position/util/set-hitbox-data
# engine
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine
execute as @e[tag=plane-init,tag=engine,distance=..1,limit=1] run function plane:position/util/set-hitbox-data
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-r
execute as @e[tag=plane-init,tag=engine-r,distance=..1,limit=1] run function plane:position/util/set-hitbox-data
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-l
execute as @e[tag=plane-init,tag=engine-l,distance=..1,limit=1] run function plane:position/util/set-hitbox-data
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-r2
execute as @e[tag=plane-init,tag=engine-r2,distance=..1,limit=1] run function plane:position/util/set-hitbox-data
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-l2
execute as @e[tag=plane-init,tag=engine-l2,distance=..1,limit=1] run function plane:position/util/set-hitbox-data

# elevator
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator
execute as @e[tag=plane-init,tag=elevator,distance=..1,limit=1] run function plane:position/util/set-hitbox-data
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-r
execute as @e[tag=plane-init,tag=elevator-r,distance=..1,limit=1] run function plane:position/util/set-hitbox-data
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-l
execute as @e[tag=plane-init,tag=elevator-l,distance=..1,limit=1] run function plane:position/util/set-hitbox-data

# aileron
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-r
execute as @e[tag=plane-init,tag=aileron-r,distance=..1,limit=1] run function plane:position/util/set-hitbox-data
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-l
execute as @e[tag=plane-init,tag=aileron-l,distance=..1,limit=1] run function plane:position/util/set-hitbox-data
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-r2
execute as @e[tag=plane-init,tag=aileron-r2,distance=..1,limit=1] run function plane:position/util/set-hitbox-data
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-l2
execute as @e[tag=plane-init,tag=aileron-l2,distance=..1,limit=1] run function plane:position/util/set-hitbox-data

# radder
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder
execute as @e[tag=plane-init,tag=radder,distance=..1,limit=1] run function plane:position/util/set-hitbox-data
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder-r
execute as @e[tag=plane-init,tag=radder-r,distance=..1,limit=1] run function plane:position/util/set-hitbox-data
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder-l
execute as @e[tag=plane-init,tag=radder-l,distance=..1,limit=1] run function plane:position/util/set-hitbox-data

# cockpit
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.cockpit
execute as @e[tag=plane-init,tag=cockpit,distance=..1,limit=1] run function plane:position/util/set-hitbox-data

# plane-idセット
scoreboard players operation @e[tag=plane-init,distance=..1] vp.plane-id = #plane-id vp.reg1
execute as @e[tag=plane-init,distance=..1] store result entity @s Attributes[{id:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get #plane-id vp.reg1

# 召喚した場合need-calc-offsetタグ付与
execute if entity @e[tag=plane-init,distance=..1] run tag @s add need-calc-offset

# 初期化用タグ除去
tag @e[tag=plane-init,distance=..1] remove plane-init
