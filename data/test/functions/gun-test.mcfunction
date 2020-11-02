#召喚
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,12p7mm,gun-init,right1],Invisible:1,Marker:1}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,12p7mm,gun-init,left1],Invisible:1,Marker:1}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,12p7mm,gun-init,right2],Invisible:1,Marker:1}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,12p7mm,gun-init,left2],Invisible:1,Marker:1}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,12p7mm,gun-init,right3],Invisible:1,Marker:1}
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,12p7mm,gun-init,left3],Invisible:1,Marker:1}

#スコア付与
scoreboard players operation @e[tag=gun-init,distance=..5] plane-id = @s plane-id
scoreboard players set @e[tag=gun-init,tag=left1,distance=..5] offsetX 3000
scoreboard players set @e[tag=gun-init,tag=left1,distance=..5] offsetY -870
scoreboard players set @e[tag=gun-init,tag=left1,distance=..5] offsetZ 0
scoreboard players set @e[tag=gun-init,tag=right1,distance=..5] offsetX -2300
scoreboard players set @e[tag=gun-init,tag=right1,distance=..5] offsetY -870
scoreboard players set @e[tag=gun-init,tag=right1,distance=..5] offsetZ 0
scoreboard players set @e[tag=gun-init,tag=left2,distance=..5] offsetX 3200
scoreboard players set @e[tag=gun-init,tag=left2,distance=..5] offsetY -920
scoreboard players set @e[tag=gun-init,tag=left2,distance=..5] offsetZ 0
scoreboard players set @e[tag=gun-init,tag=right2,distance=..5] offsetX -2500
scoreboard players set @e[tag=gun-init,tag=right2,distance=..5] offsetY -920
scoreboard players set @e[tag=gun-init,tag=right2,distance=..5] offsetZ 0
scoreboard players set @e[tag=gun-init,tag=left3,distance=..5] offsetX 3400
scoreboard players set @e[tag=gun-init,tag=left3,distance=..5] offsetY -970
scoreboard players set @e[tag=gun-init,tag=left3,distance=..5] offsetZ 0
scoreboard players set @e[tag=gun-init,tag=right3,distance=..5] offsetX -2700
scoreboard players set @e[tag=gun-init,tag=right3,distance=..5] offsetY -970
scoreboard players set @e[tag=gun-init,tag=right3,distance=..5] offsetZ 0

#発射位置に移動
execute at @s positioned ~ ~ ~ as @e[tag=gun-init,distance=..5] run function plane:position/calc-offset

#向きを機体方向に向ける
execute rotated as @s as @e[tag=gun-init,limit=1,distance=..20] positioned as @s run tp @s ~ ~ ~ ~ ~

#位置補正
#execute as @e[tag=gun-init,distance=..5] at @s run tp @s ~ ~-1.2 ~

#発射炎
execute rotated as @s positioned as @e[tag=gun-init,distance=..20] run particle minecraft:flame ^ ^ ^4.9 0 0 0 0 1 force

#kill
kill @e[tag=gun-init]

