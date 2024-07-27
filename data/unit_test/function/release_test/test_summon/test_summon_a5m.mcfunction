execute at @p run function plane-data:a5m/a5m

scoreboard players set $result ut.result 1
execute at @p unless entity @e[tag=plane-root,tag=a5m,distance=..1,sort=nearest,limit=1] run scoreboard players set $result ut.result 0

execute at @p unless entity @e[type=armor_stand,tag=plane-seat,tag=a5m,distance=..1,sort=nearest,limit=1] run scoreboard players set $result ut.result 0

execute at @p unless entity @e[type=donkey,tag=plane-seat,tag=a5m,distance=..1,sort=nearest,limit=1] run scoreboard players set $result ut.result 0

execute at @p unless entity @e[tag=plane-body,tag=a5m,distance=..1,sort=nearest,limit=1] run scoreboard players set $result ut.result 0

execute at @p unless entity @e[tag=plane-hitbox,tag=a5m,tag=engine,distance=..1,sort=nearest,limit=1] run scoreboard players set $result ut.result 0

execute at @p unless entity @e[tag=plane-hitbox,tag=a5m,tag=aileron-r,distance=..1,sort=nearest,limit=1] run scoreboard players set $result ut.result 0

execute at @p unless entity @e[tag=plane-hitbox,tag=a5m,tag=aileron-l,distance=..1,sort=nearest,limit=1] run scoreboard players set $result ut.result 0

execute at @p unless entity @e[tag=plane-hitbox,tag=a5m,tag=elevator-r,distance=..1,sort=nearest,limit=1] run scoreboard players set $result ut.result 0

execute at @p unless entity @e[tag=plane-hitbox,tag=a5m,tag=elevator-l,distance=..1,sort=nearest,limit=1] run scoreboard players set $result ut.result 0

execute at @p unless entity @e[tag=plane-hitbox,tag=a5m,tag=radder,distance=..1,sort=nearest,limit=1] run scoreboard players set $result ut.result 0

execute at @p unless entity @e[tag=plane-hitbox,tag=a5m,tag=cockpit,distance=..1,sort=nearest,limit=1] run scoreboard players set $result ut.result 0

execute at @p unless entity @e[tag=plane-hitbox,tag=a5m,tag=body,distance=..1,sort=nearest,limit=1] run scoreboard players set $result ut.result 0

execute store success score $result ut.result if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon{current-weapon-index:0}
execute store result score $test ut.result if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].weapon.weapon-list[]
execute store success score $result ut.result if score $test ut.result matches 1

kill @e[tag=plane-root,tag=a5m] 