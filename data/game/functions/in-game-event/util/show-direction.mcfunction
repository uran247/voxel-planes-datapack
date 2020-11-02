#処理　目的地の方向表示
#入力　entity:player position:destinataion 

#tp 0-0-7-0-0 0.5 2 0.5
#tp 0-0-8-0-0 0.5 2 0.5
tp 0-0-a-0-0 ^ ^ ^100

#execute at 0-0-a-0-0 facing entity @s eyes positioned as 0-0-7-0-0 in overworld run tp 0-0-7-0-0 ~ ~ ~ ~ ~
#execute as 0-0-7-0-0 at @s facing ^ ^ ^-1 run tp 0-0-8-0-0 ~ ~0.01 ~ ~ ~
#execute at 0-0-a-0-0 in overworld if entity @s[distance=0..] in overworld rotated as 0-0-7-0-0 positioned ^ ^ ^102.4 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^51.2 if entity @s[distance=..102.4] rotated as 0-0-7-0-0 positioned ^ ^ ^51.2 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^25.6 if entity @s[distance=..102.4] rotated as 0-0-7-0-0 positioned ^ ^ ^25.6 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^12.8 if entity @s[distance=..102.4] rotated as 0-0-7-0-0 positioned ^ ^ ^12.8 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^06.4 if entity @s[distance=..102.4] rotated as 0-0-7-0-0 positioned ^ ^ ^06.4 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^03.2 if entity @s[distance=..102.4] rotated as 0-0-7-0-0 positioned ^ ^ ^03.2 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^01.6 if entity @s[distance=..102.4] rotated as 0-0-7-0-0 positioned ^ ^ ^01.6 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^00.8 if entity @s[distance=..102.4] rotated as 0-0-7-0-0 positioned ^ ^ ^00.8 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^00.4 if entity @s[distance=..102.4] rotated as 0-0-7-0-0 positioned ^ ^ ^00.4 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^00.2 if entity @s[distance=..102.4] rotated as 0-0-7-0-0 positioned ^ ^ ^00.2 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^00.1 if entity @s[distance=..102.4] rotated as 0-0-7-0-0 positioned ^ ^ ^00.1 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=furthest,limit=2] positioned ^ ^ ^00.05 if entity @s[distance=..102.4] rotated as 0-0-7-0-0 positioned ^ ^ ^00.05 rotated as 0-0-7-0-0 positioned ^ ^ ^-102.4 unless entity @s[distance=..50] in overworld run particle happy_villager ~ ~ ~ 0 0 0 1 1 force @s
execute unless entity @s[distance=..150] facing entity @s eyes positioned as @s positioned ^ ^ ^-150 run particle dust 0.12 1 0 2 ~ ~3 ~ 0 2 0 1 10 force @s
execute unless entity @s[distance=..150] facing entity @s eyes positioned as @s positioned ^ ^ ^-150 run particle dust 0.12 1 0 2 ~ ~3 ~ 2 0 0 1 10 force @s
execute unless entity @s[distance=..150] facing entity @s eyes positioned as @s positioned ^ ^ ^-150 run particle dust 0.12 1 0 2 ~ ~3 ~ 0 0 2 1 10 force @s
execute if entity @s[distance=..150] run particle dust 0.12 1 0 2 ~ ~3 ~ 0 2 0 1 10 force @s
execute if entity @s[distance=..150] run particle dust 0.12 1 0 2 ~ ~3 ~ 2 0 0 1 10 force @s
execute if entity @s[distance=..150] run particle dust 0.12 1 0 2 ~ ~3 ~ 0 0 2 1 10 force @s
