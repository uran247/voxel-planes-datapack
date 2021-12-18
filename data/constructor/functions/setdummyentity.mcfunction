#> constructor:setdummyentity
#
# @public
    #declare tag block-checker

#1-3:vector 4:block check 5:ai angle check 6:calc offset 7,8,9:check block a: block check b:entity check

execute in overworld run forceload add 0 0
execute in the_nether run forceload add 0 0
execute in the_end run forceload add 0 0

kill @e[type=marker,tag=block-checker]
kill @e[type=marker,tag=dummy-entity]
summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,1]} 
summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,2]}
summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,3]}
summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity,block-checker],UUID:[I;0,0,0,4]}
summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,5]}
summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,6]}
summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,7]}
summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,8]}
summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,9]}
summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,10]}
summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,11]}

kill @e[type=marker,tag=Trigonometric]
kill @e[type=marker,tag=Trigonometric2]
summon minecraft:marker -0.5 0 -0.5 {Tags:[Trigonometric],UUID:[I;0,0,0,32]}
summon minecraft:marker 0.0 0.0 0.0 {Tags:[Trigonometric2],UUID:[I;0,0,0,33]}
setblock 0 1 0 shulker_box
