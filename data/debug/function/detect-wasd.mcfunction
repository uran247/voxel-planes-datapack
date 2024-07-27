data modify entity 0-0-0-0-1 Pos set from entity @p Motion
execute as 0-0-0-0-1 at @s facing 0.0 0.0 0.0 facing ^ ^ ^-1 run tp @s ~ ~ ~ ~ ~

execute store result score #wasd-dummy vp.reg1 run data get entity 0-0-0-0-1 Rotation[0]
execute store result score #wasd-pl vp.reg1 run data get entity @p Rotation[0]

#tellraw @p [{"nbt":"Pos","entity":"0-0-0-0-1"},{"nbt":"Rotation","entity":"0-0-0-0-1"}]

#tellraw @p [{"score" : {"name":"#wasd-dummy", "objective":"vp.reg1"}},{"text":" "},{"score" : {"name":"#wasd-pl", "objective":"vp.reg1"}}]

scoreboard players operation #wasd-pl vp.reg1 -= #wasd-dummy vp.reg1
execute if score #wasd-pl vp.reg1 matches ..0 run scoreboard players add #wasd-pl vp.reg1 360
execute if score #wasd-pl vp.reg1 matches 361.. run scoreboard players remove #wasd-pl vp.reg1 360

#tellraw @p [{"score" : {"name":"#wasd-pl", "objective":"vp.reg1"}}]

execute as 0-0-0-0-1 at @s positioned 0.0 ~ 0.0 if entity @s[distance=..0.01] run say None
execute as 0-0-0-0-1 at @s positioned 0.0 ~ 0.0 unless entity @s[distance=..0.01] if score #wasd-pl vp.reg1 matches 0..22 run say W
execute as 0-0-0-0-1 at @s positioned 0.0 ~ 0.0 unless entity @s[distance=..0.01] if score #wasd-pl vp.reg1 matches 338..360 run say W
execute as 0-0-0-0-1 at @s positioned 0.0 ~ 0.0 unless entity @s[distance=..0.01] if score #wasd-pl vp.reg1 matches 23..67 run say WA
execute as 0-0-0-0-1 at @s positioned 0.0 ~ 0.0 unless entity @s[distance=..0.01] if score #wasd-pl vp.reg1 matches 68..112 run say A
execute as 0-0-0-0-1 at @s positioned 0.0 ~ 0.0 unless entity @s[distance=..0.01] if score #wasd-pl vp.reg1 matches 113..157 run say AS
execute as 0-0-0-0-1 at @s positioned 0.0 ~ 0.0 unless entity @s[distance=..0.01] if score #wasd-pl vp.reg1 matches 158..202 run say S
execute as 0-0-0-0-1 at @s positioned 0.0 ~ 0.0 unless entity @s[distance=..0.01] if score #wasd-pl vp.reg1 matches 203..247 run say SD
execute as 0-0-0-0-1 at @s positioned 0.0 ~ 0.0 unless entity @s[distance=..0.01] if score #wasd-pl vp.reg1 matches 248..292 run say D
execute as 0-0-0-0-1 at @s positioned 0.0 ~ 0.0 unless entity @s[distance=..0.01] if score #wasd-pl vp.reg1 matches 293..337 run say WD