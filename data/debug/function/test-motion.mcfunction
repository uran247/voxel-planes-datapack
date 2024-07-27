execute as @p at @s anchored eyes positioned ^ ^ ^2 positioned ~ ~1 ~ run summon snowball ~ ~ ~ {Motion:[0.0d,0.1d,0.0d],Tags:[motion]}

data merge storage plane-datapack {temporary:{Pos:[0.0d,15.0d,0.0d]}}

execute as @e[tag=motion] run data modify entity @s Motion set from storage plane-datapack temporary.Pos
execute as @e[tag=motion] run tellraw @p {"nbt":"Motion","entity": "@s"}