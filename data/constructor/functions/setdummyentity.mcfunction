#> constructor:setdummyentity
#
# @public
    #declare tag block-checker

#1-3:vector 4:measurement 5:craft 6:damage 7,8,9:check block a,b:measurement

execute in overworld run forceload add 0 0
execute in the_nether run forceload add 0 0
execute in the_end run forceload add 0 0

kill @e[type=armor_stand,tag=block-detector]
kill @e[type=armor_stand,tag=dummy-entity]
summon minecraft:marker 0.0 1.0 0.0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,dummy-entity,"1"],UUID:[I;0,0,0,1],Invulnerable:1b} 
summon minecraft:marker 0.0 1.0 0.0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,dummy-entity,"2"],UUID:[I;0,0,0,2],Invulnerable:1b}
summon minecraft:marker 0.0 1.0 0.0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,dummy-entity,"3"],UUID:[I;0,0,0,3],Invulnerable:1b}
summon minecraft:marker 0.0 1.0 0.0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,dummy-entity,block-checker,"4"],UUID:[I;0,0,0,4],Invulnerable:1b}
summon minecraft:marker 0.0 1.0 0.0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,dummy-entity,"5"],UUID:[I;0,0,0,5],Invulnerable:1b}
summon minecraft:marker 0.0 1.0 0.0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,dummy-entity,"6"],UUID:[I;0,0,0,6],Invulnerable:1b}
summon minecraft:marker 0.0 1.0 0.0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,dummy-entity,"7"],UUID:[I;0,0,0,7],Invulnerable:1b}
summon minecraft:marker 0.0 1.0 0.0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,dummy-entity,"8"],UUID:[I;0,0,0,8],Invulnerable:1b}
summon minecraft:marker 0.0 1.0 0.0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,dummy-entity,"9"],UUID:[I;0,0,0,9],Invulnerable:1b}
summon minecraft:marker 0.0 1.0 0.0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,dummy-entity,"10"],UUID:[I;0,0,0,10],Invulnerable:1b}
summon minecraft:marker 0.0 1.0 0.0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,dummy-entity,"11"],UUID:[I;0,0,0,11],Invulnerable:1b}

kill @e[type=armor_stand,tag=Trigonometric]
kill @e[type=armor_stand,tag=Trigonometric2]
summon minecraft:marker -0.5 0 -0.5 {Marker:1b,Tags:[Trigonometric],NoGravity:1b,Invulnerable:1b,UUID:[I;0,0,0,32]}
summon minecraft:marker 0 0 0 {Marker:1b,Tags:[Trigonometric2],NoGravity:1b,Invulnerable:1b,UUID:[I;0,0,0,33]}
data merge entity @e[tag=Trigonometric,limit=1] {Pos:[0d,0d,0d]}
setblock 0.0 1.0 0.0 shulker_box
