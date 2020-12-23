#20mm機銃を使用 ki43
#実行者：機体

#召喚
summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,20mm,gun-init,right,tracer-lightblue,entity-nohit,offset-base],Duration:50}
summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:1,Tags:[projectile,gun,20mm,gun-init,left,tracer-lightblue,entity-nohit,offset-base],Duration:50}

#スコア付与
scoreboard players set @e[tag=gun-init,distance=..5] vp.speed 94
scoreboard players set @e[tag=gun-init,distance=..5] vp.damage 20
scoreboard players operation @e[tag=gun-init,distance=..5] vp.plane-id = @s vp.plane-id
scoreboard players set @e[tag=gun-init,tag=left,distance=..5] vp.offsetX 100
scoreboard players set @e[tag=gun-init,tag=left,distance=..5] vp.offsetY -750
scoreboard players set @e[tag=gun-init,tag=left,distance=..5] vp.offsetZ 0
scoreboard players set @e[tag=gun-init,tag=right,distance=..5] vp.offsetX -150
scoreboard players set @e[tag=gun-init,tag=right,distance=..5] vp.offsetY -750
scoreboard players set @e[tag=gun-init,tag=right,distance=..5] vp.offsetZ 0

#5発目の弾なら曳光弾化
scoreboard players operation @s vp.reg1 = @s vp.ammunition1
scoreboard players operation @s vp.reg1 %= #5 vp.Num
execute if score @s vp.reg1 matches 4 run tag @e[tag=gun-init,distance=..5] add tracer

#発射位置に移動
execute at @s positioned ~ ~ ~ as @e[tag=gun-init,distance=..5] run function plane:position/calc-offset

#向きを機体方向に向ける
#execute rotated as @s as @e[tag=gun-init,limit=1,distance=..20,tag=left] positioned as @s run tp @s ~ ~ ~ ~ ~
#execute rotated as @s as @e[tag=gun-init,limit=1,distance=..20,tag=right] positioned as @s run tp @s ~ ~ ~ ~ ~
summon minecraft:area_effect_cloud ^ ^ ^200  {Duration:0,Tags:[gun-indicator,entity-nohit],CustomName:"{\"text\":\"gun-indicator\",\"color\":\"aqua\"}"}
execute as @e[tag=gun-init,limit=2,distance=..20] at @s run tp @s ~ ~ ~ facing entity @e[tag=gun-indicator,distance=..220,limit=1]

#tellraw @p [{"score" : {"name":"@e[tag=gun-init,tag=right,limit=1,distance=..5]", "objective":"vp.reg1"}}, {"text":" "}, {"score" : {"name":"@e[tag=gun-init,tag=right,limit=1,distance=..5]", "objective":"vp.reg2"}}]


#発射したならreload時間設定
execute if entity @e[tag=gun-init,distance=..20] run scoreboard players set @s vp.w1-cooltime 2

#音
playsound minecraft:weapon.heavy-muchingun.fire master @a ~ ~ ~ 1 1

#発射炎
execute as @e[tag=gun-init,distance=..10] at @s run particle minecraft:cloud ^ ^ ^ 0.1 0.1 0.1 0.2 1 force

#残弾数減算
scoreboard players remove @s vp.ammunition1 1

#終了処理
tag @e[tag=gun-init,distance=..20] remove gun-init
#scoreboard players set @p rightClick 0


