#> unit_test:release_test/test_damage/test_calc-hitbox-damage

#scoreboard players set @e[tag=cockpit,tag=plane-hitbox] vp.input 10
#execute as @e[tag=cockpit,tag=plane-hitbox] run function weapon:util/calc-hitbox-damage

scoreboard players set @e[tag=radder,tag=plane-hitbox] vp.input 10
execute as @e[tag=radder,tag=plane-hitbox] run function weapon:util/calc-hitbox-damage