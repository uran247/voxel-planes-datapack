#1-3:vector 4:measurement 5:craft 6:damage 7,8,9:check block a,b:measurement

execute in overworld run forceload add 0 0
execute in the_nether run forceload add 0 0
execute in the_end run forceload add 0 0

#kill @e[tag=block-detector]
summon minecraft:armor_stand 0 1 0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,block-detector,"1"],UUID:[I;0,0,0,1],Invulnerable:1b} 
summon minecraft:armor_stand 0 1 0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,block-detector,"2"],UUID:[I;0,0,0,2],Invulnerable:1b}
summon minecraft:armor_stand 0 1 0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,block,axis,block-detector,"3"],UUID:[I;0,0,0,3],Invulnerable:1b}
summon minecraft:armor_stand 0 1 0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,block,axis,block-detector,"4"],UUID:[I;0,0,0,4],Invulnerable:1b}
summon minecraft:armor_stand 0 1 0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,block-detector,"5"],UUID:[I;0,0,0,5],Invulnerable:1b}
summon minecraft:armor_stand 0 1 0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,block-detector,"6"],UUID:[I;0,0,0,6],Invulnerable:1b}
summon minecraft:armor_stand 0 1 0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,block-detector,"7"],UUID:[I;0,0,0,7],Invulnerable:1b}
summon minecraft:armor_stand 0 1 0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,block-detector,"8"],UUID:[I;0,0,0,8],Invulnerable:1b}
summon minecraft:armor_stand 0 1 0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,block-detector,"9"],UUID:[I;0,0,0,9],Invulnerable:1b}
summon minecraft:armor_stand 0 1 0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,block-detector,"10"],UUID:[I;0,0,0,10],Invulnerable:1b}
summon minecraft:armor_stand 0 1 0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,block-detector,"11"],UUID:[I;0,0,0,11],Invulnerable:1b}
summon minecraft:armor_stand 0 1 0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,block-detector,"12"],UUID:[I;0,0,0,12],Invulnerable:1b}
summon minecraft:armor_stand 0 1 0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,block-detector,"13"],UUID:[I;0,0,0,13],Invulnerable:1b}
summon minecraft:armor_stand 0 1 0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,block-detector,"14"],UUID:[I;0,0,0,14],Invulnerable:1b}
summon minecraft:armor_stand 0 1 0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,block-detector,"15"],UUID:[I;0,0,0,15],Invulnerable:1b}
summon minecraft:armor_stand 0 1 0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,block-detector,"16"],UUID:[I;0,0,0,16],Invulnerable:1b}
summon minecraft:armor_stand 0 1 0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,block-detector,"17"],UUID:[I;0,0,0,17],Invulnerable:1b}
summon minecraft:armor_stand 0 1 0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,block-detector,"18"],UUID:[I;0,0,0,18],Invulnerable:1b}
summon minecraft:armor_stand 0 1 0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,block-detector,"19"],UUID:[I;0,0,0,19],Invulnerable:1b}
summon minecraft:armor_stand 0 1 0 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:[entity-nohit,block-detector,"20"],UUID:[I;0,0,0,20],Invulnerable:1b}
scoreboard players set @e[tag=block-detector,tag=1,distance=..1,x=0,y=1,z=0] vp.Num 1
scoreboard players set @e[tag=block-detector,tag=2,distance=..1,x=0,y=1,z=0] vp.Num 2
scoreboard players set @e[tag=block-detector,tag=3,distance=..1,x=0,y=1,z=0] vp.Num 3
scoreboard players set @e[tag=block-detector,tag=4,distance=..1,x=0,y=1,z=0] vp.Num 4
scoreboard players set @e[tag=block-detector,tag=5,distance=..1,x=0,y=1,z=0] vp.Num 5
scoreboard players set @e[tag=block-detector,tag=6,distance=..1,x=0,y=1,z=0] vp.Num 6
scoreboard players set @e[tag=block-detector,tag=7,distance=..1,x=0,y=1,z=0] vp.Num 7
scoreboard players set @e[tag=block-detector,tag=8,distance=..1,x=0,y=1,z=0] vp.Num 8
scoreboard players set @e[tag=block-detector,tag=9,distance=..1,x=0,y=1,z=0] vp.Num 9
scoreboard players set @e[tag=block-detector,tag=10,distance=..1,x=0,y=1,z=0] vp.Num 10
scoreboard players set @e[tag=block-detector,tag=11,distance=..1,x=0,y=1,z=0] vp.Num 11
scoreboard players set @e[tag=block-detector,tag=12,distance=..1,x=0,y=1,z=0] vp.Num 12
scoreboard players set @e[tag=block-detector,tag=13,distance=..1,x=0,y=1,z=0] vp.Num 13
scoreboard players set @e[tag=block-detector,tag=14,distance=..1,x=0,y=1,z=0] vp.Num 14
scoreboard players set @e[tag=block-detector,tag=15,distance=..1,x=0,y=1,z=0] vp.Num 15
scoreboard players set @e[tag=block-detector,tag=16,distance=..1,x=0,y=1,z=0] vp.Num 16
scoreboard players set @e[tag=block-detector,tag=17,distance=..1,x=0,y=1,z=0] vp.Num 17
scoreboard players set @e[tag=block-detector,tag=18,distance=..1,x=0,y=1,z=0] vp.Num 18
scoreboard players set @e[tag=block-detector,tag=19,distance=..1,x=0,y=1,z=0] vp.Num 19
scoreboard players set @e[tag=block-detector,tag=20,distance=..1,x=0,y=1,z=0] vp.Num 20

summon minecraft:armor_stand -0.5 0 -0.5 {Marker:1b,Tags:[Trigonometric],NoGravity:1b,Invulnerable:1b,UUID:[I;0,0,0,32]}
summon minecraft:armor_stand 0 0 0 {Marker:1b,Tags:[Trigonometric2],NoGravity:1b,Invulnerable:1b,UUID:[I;0,0,0,33]}
data merge entity @e[tag=Trigonometric,limit=1] {Pos:[0d,0d,0d]}
item replace entity 0-0-0-0-5 weapon.mainhand with minecraft:shulker_box
setblock 0 1 0 shulker_box
