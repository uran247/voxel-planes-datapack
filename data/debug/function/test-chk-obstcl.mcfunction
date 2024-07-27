
execute rotated as @p positioned 0.0 2.0 0.0 run tp 0-0-0-0-7 ~ ~ ~ ~ ~
execute rotated as @p positioned 0.0 2.01 0.0 facing ^ ^ ^-1 run tp 0-0-0-0-8 ~ ~ ~ ~ ~

execute rotated as 0-0-0-0-7 positioned ^ ^ ^10 rotated as @e[distance=..0.1,x=0.0,y=2.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^5.0 rotated as @e[distance=..0.1,x=0.0,y=2.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^2.5 rotated as @e[distance=..0.1,x=0.0,y=2.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^1.25 rotated as @e[distance=..0.1,x=0.0,y=2.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.625 rotated as @e[distance=..0.1,x=0.0,y=2.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.3125 rotated as @e[distance=..0.1,x=0.0,y=2.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.15625 if entity @s[distance=5..] unless block ~ ~ ~ air run say obstacle

