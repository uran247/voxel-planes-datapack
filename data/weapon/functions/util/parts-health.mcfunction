#> weapon:util/parts-health
#
# 航空機のパーツのヘルスチェック、パーツヘルスを体力へ反映
#
# @input
#   executer @e[tag=plane-root]
#   position @e[tag=plane-root]
#
# @within
#   function plane:position/position
#   function weapon:util/destroy-hitbox-message
#   weapon:util/calc-hitbox-damage

#パーツのヘルスチェック
scoreboard players set @s vp.plane-parts 1

scoreboard players set @s vp.body 0
execute store success score @s vp.body if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.body unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.body{hp:0d} run scoreboard players add @s vp.plane-parts 1

scoreboard players set @s vp.radder 0
execute store success score @s vp.radder if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder{hp:0d}
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder-r unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder-r{hp:0d} run scoreboard players add @s vp.radder 1
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder-l unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.radder-l{hp:0d} run scoreboard players add @s vp.radder 1
scoreboard players operation @s vp.plane-parts += @s vp.radder

scoreboard players set @s vp.elevator 0
execute store success score @s vp.elevator if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator{hp:0d} 
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-r unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-r{hp:0d} run scoreboard players add @s vp.elevator 1
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-l unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.elevator-l{hp:0d} run scoreboard players add @s vp.elevator 1
scoreboard players operation @s vp.plane-parts += @s vp.elevator

scoreboard players set @s vp.aileron 0
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-r unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-r{hp:0d} run scoreboard players add @s vp.plane-parts 1
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-l unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-l{hp:0d} run scoreboard players add @s vp.plane-parts 1
execute store success score @s vp.aileron unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-r{hp:0d} unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.aileron-l{hp:0d}

scoreboard players set @s vp.engine 0
execute store success score @s vp.engine if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine{hp:0d}
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-r unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-r{hp:0d} run scoreboard players add @s vp.engine 1
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-l unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].status.engine-l{hp:0d} run scoreboard players add @s vp.engine 1
scoreboard players operation @s vp.plane-parts += @s vp.engine

#以下条件のどれかを満たしたら墜落タグ
#生存パーツが5個以下　bodyが破損 aileronのどっちかが破損
tag @s remove destroyed
tag @s[scores={vp.aileron=..0}] add destroyed
tag @s[scores={vp.plane-parts=..5}] add destroyed
tag @s[scores={vp.body=..0}] add destroyed
