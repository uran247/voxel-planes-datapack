#> debug:test_seeker_sight
#
# @input
#   at @e[seeker]
#   as @e[target] 

tp 0-0-0-0-4 ~ ~ ~ ~ ~

execute at @s facing entity 0-0-0-0-4 feet positioned ^ ^ ^1000 rotated as 0-0-0-0-4 positioned ^ ^ ^1000 if entity @s[distance=..518] run say true
execute at @s facing entity 0-0-0-0-4 feet positioned ^ ^ ^1000 rotated as 0-0-0-0-4 positioned ^ ^ ^1000 unless entity @s[distance=..518] run say false


tp 0-0-0-0-4 0.0 1.0 0.0