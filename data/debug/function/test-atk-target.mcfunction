#execute at @p run summon minecraft:zombie ~100 ~ ~1 {NoAI:1,Tags:[target-test]}
#execute at @p run summon minecraft:giant ~ ~ ~10 {Tags:[attacker-test],Attributes:[{id:"generic.followRange", Base:200.0}]}
execute as @e[tag=attacker-test] at @s run summon minecraft:snowball ~ ~2.1 ~3 {Tags:[atk-target-teat],owner:{L:0,M:0},Motion:[0d,0d,-2d]}
execute as @e[tag=atk-target-teat] run data modify entity @s owner.L set from entity @e[tag=target-test,limit=1] UUIDLeast
execute as @e[tag=atk-target-teat] run data modify entity @s owner.M set from entity @e[tag=target-test,limit=1] UUIDMost