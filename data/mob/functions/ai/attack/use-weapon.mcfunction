#武器使用
#入力：@e[tag=attackable] @p[tag=ai-target] 

execute as @s[tag=phantom1,scores={ammunition1=1..,w1-reload=..0}] if entity @p[tag=ai-target,distance=..96] at @s run function mob:weapon/phantom1/7p7mm
execute as @s[tag=banshee,scores={ammunition1=1..,w1-reload=..0}] if entity @p[tag=ai-target,distance=..96] at @s run function mob:weapon/banshee/20mm
execute as @s[tag=big-phantom1,scores={ammunition1=1..,w1-reload=..0}] if entity @p[tag=ai-target,distance=..96] at @s run function mob:weapon/big-phantom/75mm
scoreboard players remove @s[scores={ammunition1=1..,w1-reload=1..}] w1-reload 1
