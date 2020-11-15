#スコアリセット
#実行者：a6m-root
#実行者タグ付与
tag @e[tag=a6m,distance=..10] add a6m-init

#スピード・滑走/角度/旋回速度/加速度/最高速度/離陸速度/形態スコア・存在座標・設定
#scoreboard players set @s speed 0
scoreboard players set @s vp.rolling 0
scoreboard players set @s vp.accelerate 5
scoreboard players set @s vp.deaccelerate 16
scoreboard players set @s vp.max-speed 1960
scoreboard players set @s vp.cruise-speed 1215
scoreboard players set @s vp.takeoff-speed 520
scoreboard players set @s vp.stall-speed 500
scoreboard players set @s vp.landing-pitch -1200
scoreboard players set @s vp.AngX -1250
scoreboard players set @s vp.AngY 0
scoreboard players set @s vp.AngZ 0
scoreboard players set @s vp.AngY-old 0
scoreboard players set @s vp.pitch-speed 200
scoreboard players set @s vp.yaw-speed 220
scoreboard players set @s vp.roll-speed 400
scoreboard players set @s vp.parking-udvm 7
scoreboard players set @s vp.rolling-udvm 8
scoreboard players set @s vp.flying-udvm 9
scoreboard players set @s vp.prop-strt-min 150
scoreboard players set @s vp.prop-strt-max 154
scoreboard players set @s vp.prop-stop-min 140
scoreboard players set @s vp.prop-stop-max 144
scoreboard players set @s vp.gear-ret-min 540
scoreboard players set @s vp.gear-ret-max 544
scoreboard players set @s vp.gear-po-min 530
scoreboard players set @s vp.gear-po-max 534
scoreboard players set @s vp.w1-reload 0
scoreboard players set @s vp.w2-reload 0
scoreboard players set @s vp.ammunition1 100
scoreboard players set @s vp.ammunition2 500

execute store result score @s vp.PosX run data get entity @s Pos[0] 10000
execute store result score @s vp.PosY run data get entity @s Pos[1] 10000
execute store result score @s vp.PosZ run data get entity @s Pos[2] 10000

#hitbocのスコア設定
scoreboard players set @e[tag=body,tag=a6m-init] vp.offsetX 0
scoreboard players set @e[tag=body,tag=a6m-init] vp.offsetY 0
scoreboard players set @e[tag=body,tag=a6m-init] vp.offsetZ 0
scoreboard players set @e[tag=engine,tag=a6m-init] vp.offsetX 0
scoreboard players set @e[tag=engine,tag=a6m-init] vp.offsetY -700
scoreboard players set @e[tag=engine,tag=a6m-init] vp.offsetZ 0
scoreboard players set @e[tag=aileron-r,tag=a6m-init] vp.offsetX -3000
scoreboard players set @e[tag=aileron-r,tag=a6m-init] vp.offsetY -700
scoreboard players set @e[tag=aileron-r,tag=a6m-init] vp.offsetZ 0
scoreboard players set @e[tag=aileron-l,tag=a6m-init] vp.offsetX 3000
scoreboard players set @e[tag=aileron-l,tag=a6m-init] vp.offsetY -700
scoreboard players set @e[tag=aileron-l,tag=a6m-init] vp.offsetZ 0
scoreboard players set @e[tag=elevator-r,tag=a6m-init] vp.offsetX -1500
scoreboard players set @e[tag=elevator-r,tag=a6m-init] vp.offsetY -900
scoreboard players set @e[tag=elevator-r,tag=a6m-init] vp.offsetZ 0
scoreboard players set @e[tag=elevator-l,tag=a6m-init] vp.offsetX 1500
scoreboard players set @e[tag=elevator-l,tag=a6m-init] vp.offsetY -900
scoreboard players set @e[tag=elevator-l,tag=a6m-init] vp.offsetZ 0
scoreboard players set @e[tag=radder,tag=a6m-init] vp.offsetX 0
scoreboard players set @e[tag=radder,tag=a6m-init] vp.offsetY -2000
scoreboard players set @e[tag=radder,tag=a6m-init] vp.offsetZ 0

#タグ除去
tag @e[tag=a6m,distance=..20] remove a6m-init

