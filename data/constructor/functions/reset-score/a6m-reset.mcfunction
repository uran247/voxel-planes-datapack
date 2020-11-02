#スコアリセット
#実行者：a6m-root
#実行者タグ付与
tag @e[tag=a6m,distance=..10] add a6m-init

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
#scoreboard players set @s speed 0
scoreboard players set @s rolling 0
scoreboard players set @s accelerate 5
scoreboard players set @s deaccelerate 16
scoreboard players set @s max-speed 1960
scoreboard players set @s cruise-speed 1215
scoreboard players set @s takeoff-speed 520
scoreboard players set @s stall-speed 500
scoreboard players set @s landing-pitch -1200
scoreboard players set @s AngX -1250
scoreboard players set @s AngY 0
scoreboard players set @s AngZ 0
scoreboard players set @s AngY-old 0
scoreboard players set @s pitch-speed 200
scoreboard players set @s yaw-speed 220
scoreboard players set @s roll-speed 400
scoreboard players set @s parking-udvm 7
scoreboard players set @s rolling-udvm 8
scoreboard players set @s flying-udvm 9
scoreboard players set @s plpr-start-min 150
scoreboard players set @s plpr-start-max 154
scoreboard players set @s plpr-stop-min 140
scoreboard players set @s plpr-stop-max 144
scoreboard players set @s gear-retract-min 540
scoreboard players set @s gear-retract-max 544
scoreboard players set @s gear-pullout-min 530
scoreboard players set @s gear-pullout-max 534
scoreboard players set @s w1-reload 0
scoreboard players set @s w2-reload 0
scoreboard players set @s ammunition1 100
scoreboard players set @s ammunition2 500

execute store result score @s PosX run data get entity @s Pos[0] 10000
execute store result score @s PosY run data get entity @s Pos[1] 10000
execute store result score @s PosZ run data get entity @s Pos[2] 10000

#hitbocのスコア設定
scoreboard players set @e[tag=body,tag=a6m-init] offsetX 0
scoreboard players set @e[tag=body,tag=a6m-init] offsetY 0
scoreboard players set @e[tag=body,tag=a6m-init] offsetZ 0
scoreboard players set @e[tag=engine,tag=a6m-init] offsetX 0
scoreboard players set @e[tag=engine,tag=a6m-init] offsetY -700
scoreboard players set @e[tag=engine,tag=a6m-init] offsetZ 0
scoreboard players set @e[tag=aileron-r,tag=a6m-init] offsetX -3000
scoreboard players set @e[tag=aileron-r,tag=a6m-init] offsetY -700
scoreboard players set @e[tag=aileron-r,tag=a6m-init] offsetZ 0
scoreboard players set @e[tag=aileron-l,tag=a6m-init] offsetX 3000
scoreboard players set @e[tag=aileron-l,tag=a6m-init] offsetY -700
scoreboard players set @e[tag=aileron-l,tag=a6m-init] offsetZ 0
scoreboard players set @e[tag=elevator-r,tag=a6m-init] offsetX -1500
scoreboard players set @e[tag=elevator-r,tag=a6m-init] offsetY -900
scoreboard players set @e[tag=elevator-r,tag=a6m-init] offsetZ 0
scoreboard players set @e[tag=elevator-l,tag=a6m-init] offsetX 1500
scoreboard players set @e[tag=elevator-l,tag=a6m-init] offsetY -900
scoreboard players set @e[tag=elevator-l,tag=a6m-init] offsetZ 0
scoreboard players set @e[tag=radder,tag=a6m-init] offsetX 0
scoreboard players set @e[tag=radder,tag=a6m-init] offsetY -2000
scoreboard players set @e[tag=radder,tag=a6m-init] offsetZ 0

#タグ除去
tag @e[tag=a6m,distance=..20] remove a6m-init

