#execute as 視線主entity at 視線終端点entity run this

tp 0-0-0-0-7 0.5 2 0.5
tp 0-0-0-0-8 0.5 2 0.5
execute facing entity @s eyes positioned as 0-0-0-0-7 in overworld run tp 0-0-0-0-7 ~ ~ ~ ~ ~
execute as 0-0-0-0-7 at @s facing ^ ^ ^-1 run tp 0-0-0-0-8 ~ ~0.01 ~ ~ ~
#scoreboard players set $BlockThickness vp.reg1 0
#execute in overworld rotated as 0-0-0-0-7 positioned ^ ^ ^204.8 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^102.4 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^102.4 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^51.2 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^51.2 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^25.6 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^25.6 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^12.8 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^12.8 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^06.4 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^06.4 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^03.2 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^03.2 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^01.6 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^01.6 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^00.8 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^00.8 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^00.4 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^00.4 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^00.2 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^00.2 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^00.1 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^00.1 rotated as 0-0-0-0-7 positioned ^ ^ ^-204.8 in overworld unless block ~ ~ ~ minecraft:air run scoreboard players add $BlockThickness vp.reg1 1
#execute in overworld if entity @s[distance=0..] in overworld rotated as 0-0-0-0-7 positioned ^ ^ ^204.8 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^102.4 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^102.4 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^51.2 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^51.2 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^25.6 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^25.6 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^12.8 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^12.8 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^06.4 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^06.4 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^03.2 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^03.2 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^01.6 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^01.6 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^00.8 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^00.8 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^00.4 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^00.4 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^00.2 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^00.2 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^00.1 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^00.1 rotated as 0-0-0-0-7 positioned ^ ^ ^-204.8 in overworld unless block ~ ~ ~ minecraft:air in overworld run tp 0-0-0-0-9 ~ ~ ~
#execute in overworld if entity @s[distance=0..] in overworld rotated as 0-0-0-0-7 positioned ^ ^ ^204.8 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^102.4 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^102.4 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^51.2 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^51.2 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^25.6 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^25.6 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^12.8 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^12.8 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^06.4 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^06.4 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^03.2 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^03.2 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^01.6 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^01.6 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^00.8 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^00.8 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^00.4 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^00.4 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^00.2 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^00.2 rotated as @e[x=0.5,y=2.0,z=0.5,distance=..0.1,sort=nearest,limit=2] positioned ^ ^ ^00.1 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^00.1 rotated as 0-0-0-0-7 positioned ^ ^ ^-204.8 in overworld unless block ~ ~ ~ minecraft:air in overworld run particle minecraft:happy_villager ~ ~ ~ 0 0 0 0 1 force

#execute in overworld if entity @s[distance=0..] in overworld rotated as 0-0-0-0-7 positioned ^ ^ ^204.8 rotated as @e[distance=..0.1,x=0.5,y=2.0,z=0.5,sort=nearest,limit=2] positioned ^ ^ ^102.4 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^102.4 rotated as @e[distance=..0.1,x=0.5,y=2.0,z=0.5,sort=nearest,limit=2] positioned ^ ^ ^51.2 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^51.2 rotated as @e[distance=..0.1,x=0.5,y=2.0,z=0.5,sort=nearest,limit=2] positioned ^ ^ ^25.6 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^25.6 rotated as @e[distance=..0.1,x=0.5,y=2.0,z=0.5,sort=nearest,limit=2] positioned ^ ^ ^12.8 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^12.8 rotated as @e[distance=..0.1,x=0.5,y=2.0,z=0.5,sort=nearest,limit=2] positioned ^ ^ ^06.4 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^06.4 rotated as @e[distance=..0.1,x=0.5,y=2.0,z=0.5,sort=nearest,limit=2] positioned ^ ^ ^03.2 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^03.2 rotated as @e[distance=..0.1,x=0.5,y=2.0,z=0.5,sort=nearest,limit=2] positioned ^ ^ ^01.6 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^01.6 rotated as @e[distance=..0.1,x=0.5,y=2.0,z=0.5,sort=nearest,limit=2] positioned ^ ^ ^00.8 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^00.8 rotated as @e[distance=..0.1,x=0.5,y=2.0,z=0.5,sort=nearest,limit=2] positioned ^ ^ ^00.4 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^00.4 rotated as @e[distance=..0.1,x=0.5,y=2.0,z=0.5,sort=nearest,limit=2] positioned ^ ^ ^00.2 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^00.2 rotated as @e[distance=..0.1,x=0.5,y=2.0,z=0.5,sort=nearest,limit=2] positioned ^ ^ ^00.1 if entity @s[distance=..204.8] rotated as 0-0-0-0-7 positioned ^ ^ ^00.1 rotated as 0-0-0-0-7 positioned ^ ^ ^-204.8 in overworld unless block ~ ~ ~ air in overworld run particle minecraft:dust 0 0.5 0.5 30 ~ ~5 ~ 7.5 0 7.5 0 20 force

tp 0-0-0-0-9 0 1 0
#3 0.5 2 0.5 

