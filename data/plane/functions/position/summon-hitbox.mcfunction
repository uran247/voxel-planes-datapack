#> plane:position/summon-hitbox
#
# @input
#   executer @e[tag=plane-root]
#
# @within function plane:position/position
#
#> private
   #declare score_holder #difficulty
   #declare score_holder #plane-id

#難易度チェック
execute store result score #difficulty vp.reg1 run difficulty

#HPがあるが存在しないパーツを召喚
#body
#execute if score #difficulty vp.reg1 matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.body unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.body{hp:0d} unless entity @e[tag=plane-hitbox,tag=body,tag=target-parts,distance=..30] run summon slime ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,body,has-offset,offset-base],NoAI:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],DeathLootTable:"minecraft:entities/bat",Silent:1b}
execute if score #difficulty vp.reg1 matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.body unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.body{hp:0d} unless entity @e[tag=plane-hitbox,tag=body,tag=target-parts,distance=..30] run summon armor_stand ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,body,has-offset,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}]}

#engine
#execute if score #difficulty vp.reg1 matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine{hp:0d} unless entity @e[tag=plane-hitbox,tag=engine,tag=target-parts,distance=..30] run summon slime ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,engine,has-offset,offset-base],NoAI:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],DeathLootTable:"minecraft:entities/bat",Silent:1b}
execute if score #difficulty vp.reg1 matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine{hp:0d} unless entity @e[tag=plane-hitbox,tag=engine,tag=target-parts,distance=..30] run summon armor_stand ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,engine,has-offset,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}]}

#execute if score #difficulty vp.reg1 matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-r unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-r{hp:0d} unless entity @e[tag=plane-hitbox,tag=engine-r,tag=target-parts,distance=..30] run summon slime ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,engine-r,has-offset,offset-base],NoAI:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],DeathLootTable:"minecraft:entities/bat",Silent:1b}
execute if score #difficulty vp.reg1 matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-r unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-r{hp:0d} unless entity @e[tag=plane-hitbox,tag=engine-r,tag=target-parts,distance=..30] run summon armor_stand ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,engine-r,has-offset,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}]}

#execute if score #difficulty vp.reg1 matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-l unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-l{hp:0d} unless entity @e[tag=plane-hitbox,tag=engine-l,tag=target-parts,distance=..30] run summon slime ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,engine-l,has-offset,offset-base],NoAI:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],DeathLootTable:"minecraft:entities/bat",Silent:1b}
execute if score #difficulty vp.reg1 matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-l unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-l{hp:0d} unless entity @e[tag=plane-hitbox,tag=engine-l,tag=target-parts,distance=..30] run summon armor_stand ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,engine-l,has-offset,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}]}

#elevator
#execute if score #difficulty vp.reg1 matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-r unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-r{hp:0d} unless entity @e[tag=plane-hitbox,tag=elevator-r,tag=target-parts,distance=..30] run summon slime ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,elevator-r,has-offset,offset-base],NoAI:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],DeathLootTable:"minecraft:entities/bat",Silent:1b}
execute if score #difficulty vp.reg1 matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-r unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-r{hp:0d} unless entity @e[tag=plane-hitbox,tag=elevator-r,tag=target-parts,distance=..30] run summon armor_stand ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,elevator-r,has-offset,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}]}

#execute if score #difficulty vp.reg1 matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-l unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-l{hp:0d} unless entity @e[tag=plane-hitbox,tag=elevator-l,tag=target-parts,distance=..30] run summon slime ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,elevator-l,has-offset,offset-base],NoAI:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],DeathLootTable:"minecraft:entities/bat",Silent:1b}
execute if score #difficulty vp.reg1 matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-l unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-l{hp:0d} unless entity @e[tag=plane-hitbox,tag=elevator-l,tag=target-parts,distance=..30] run summon armor_stand ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,elevator-l,has-offset,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}]}

#aileron
#execute if score #difficulty vp.reg1 matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-r unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-r{hp:0d} unless entity @e[tag=plane-hitbox,tag=aileron-r,tag=target-parts,distance=..30] run summon slime ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,aileron-r,has-offset,offset-base],NoAI:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],DeathLootTable:"minecraft:entities/bat",Silent:1b}
execute if score #difficulty vp.reg1 matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-r unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-r{hp:0d} unless entity @e[tag=plane-hitbox,tag=aileron-r,tag=target-parts,distance=..30] run summon armor_stand ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,aileron-r,has-offset,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}]}

#execute if score #difficulty vp.reg1 matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-l unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-l{hp:0d} unless entity @e[tag=plane-hitbox,tag=aileron-l,tag=target-parts,distance=..30] run summon slime ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,aileron-l,has-offset,offset-base],NoAI:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],DeathLootTable:"minecraft:entities/bat",Silent:1b}
execute if score #difficulty vp.reg1 matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-l unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-l{hp:0d} unless entity @e[tag=plane-hitbox,tag=aileron-l,tag=target-parts,distance=..30] run summon armor_stand ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,aileron-l,has-offset,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}]}

#radder
#execute if score #difficulty vp.reg1 matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder{hp:0d} unless entity @e[tag=plane-hitbox,tag=radder,tag=target-parts,distance=..30] run summon slime ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,radder,has-offset,offset-base],NoAI:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],DeathLootTable:"minecraft:entities/bat",Silent:1b}
execute if score #difficulty vp.reg1 matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder{hp:0d} unless entity @e[tag=plane-hitbox,tag=radder,tag=target-parts,distance=..30] run summon armor_stand ~ ~ ~ {Tags:[plane-init,target-parts,plane,plane-hitbox,radder,has-offset,offset-base],NoGravity:1b,Invisible:1b,Marker:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}]}

#ステータスセット
#body
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.body
execute as @e[type=armor_stand,tag=plane-init,tag=body,distance=..1,limit=1] run function plane:position/util/set-hitbox-data
#engine
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine
execute as @e[type=armor_stand,tag=plane-init,tag=engine,distance=..1,limit=1] run function plane:position/util/set-hitbox-data
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-r
execute as @e[type=armor_stand,tag=plane-init,tag=engine-r,distance=..1,limit=1] run function plane:position/util/set-hitbox-data
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-l
execute as @e[type=armor_stand,tag=plane-init,tag=engine-l,distance=..1,limit=1] run function plane:position/util/set-hitbox-data

#elevator
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-r
execute as @e[type=armor_stand,tag=plane-init,tag=elevator-r,distance=..1,limit=1] run function plane:position/util/set-hitbox-data
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-l
execute as @e[type=armor_stand,tag=plane-init,tag=elevator-l,distance=..1,limit=1] run function plane:position/util/set-hitbox-data

#aileron
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-r
execute as @e[type=armor_stand,tag=plane-init,tag=aileron-r,distance=..1,limit=1] run function plane:position/util/set-hitbox-data
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-l
execute as @e[type=armor_stand,tag=plane-init,tag=aileron-l,distance=..1,limit=1] run function plane:position/util/set-hitbox-data

#radder
data remove storage voxel-planes:input input
data modify storage voxel-planes:input input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder
execute as @e[type=armor_stand,tag=plane-init,tag=radder,distance=..1,limit=1] run function plane:position/util/set-hitbox-data

#plane-idセット
scoreboard players operation @e[type=armor_stand,tag=plane-init,distance=..1] vp.plane-id = #plane-id vp.reg1
execute as @e[type=armor_stand,tag=plane-init,distance=..1] store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 1 run scoreboard players get #plane-id vp.reg1

#召喚した場合need-calc-offsetタグ付与
execute if entity @e[type=armor_stand,tag=plane-init,distance=..1] run tag @s add need-calc-offset

#初期化用タグ除去
tag @e[type=armor_stand,tag=plane-init,distance=..1] remove plane-init