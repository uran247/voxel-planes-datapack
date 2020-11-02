#入力：entity @e[tag=aa] pos @e[tag=aa]

scoreboard players set @s reg1 0
execute if entity @e[tag=aa88] positioned ~-96 ~ ~-96 store success score @s reg1 run tag @p[dx=192,dy=1024,dz=192] add ai-target
execute if entity @e[tag=aerial-aa] positioned ~-128 -60 ~-128 store success score @s reg1 run tag @p[dx=256,dy=1024,dz=256] add ai-target
execute at @p[tag=ai-target,scores={plane-id=1..}] run tag @e[tag=plane-root,limit=1,sort=nearest] add ai-target-plane
