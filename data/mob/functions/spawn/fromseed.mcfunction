#seedタグがついたアマスタからエンティティ生成
execute store result score #entitycount reg1 if entity @e[tag=enemy-plane]

#execute if score #entitycount reg1 < #max max-entity as @e[tag=phantom1-seed] at @s if entity @e[tag=flying,distance=..128] run function mob:summon/phantom1
execute if score #entitycount reg1 < #max max-entity as @e[tag=phantom1-seed] at @s run function mob:summon/phantom1

#debug
#execute if score #entitycount reg1 < #max max-entity as @e[tag=phantom1-seed] run say @e[tag=phantom1-seed]

kill @e[tag=mob-seed]