execute positioned ^ ^ ^10 run tag @e[type=!player,distance=..20] add test-hit-candidate
execute positioned ^ ^ ^10 as @e[tag=test-hit-candidate,distance=..20] positioned ^1001 ^ ^ run tag @s[distance=..1000] remove test-hit-candidate
execute positioned ^ ^ ^10 as @e[tag=test-hit-candidate,distance=..20] positioned ^-1001 ^ ^ run tag @s[distance=..1000] remove test-hit-candidate
execute positioned ^ ^ ^10 as @e[tag=test-hit-candidate,distance=..20] positioned ^ ^1001 ^ run tag @s[distance=..1000] remove test-hit-candidate
execute positioned ^ ^ ^10 as @e[tag=test-hit-candidate,distance=..20] positioned ^ ^-1001 ^ run tag @s[distance=..1000] remove test-hit-candidate
execute as @e[tag=test-hit-candidate,sort=nearest,limit=1] at @s run particle minecraft:large_smoke ~ ~ ~ 1 1 1 0 10 force
tag @e remove test-hit-candidate