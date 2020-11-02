#ai/aiから呼び出される
#入力　エンティティ：mob 座標：mob

#game-idが違ってたらkill
execute unless score @s game-id = #global game-id run kill @s

#実行者にタグ付け
tag @s add ai-executer
execute if data entity @s Passengers run tag @s add has-rider
execute if entity @s[tag=has-rider] run tag @e[tag=mob-rider,sort=nearest,distance=..3] add ai-rider

#攻撃ターゲットのplane-idを記憶
function mob:ai/util/get-target

#どっちに回ればプレイヤーに近づくか検知して旋回方向決定
execute as @p[tag=ai-target] positioned ^-502 ^ ^ if entity @s[distance=..500] positioned ^502 ^ ^ run tag @e[tag=ai-executer,distance=..1] add AngYplus
execute as @p[tag=ai-target] positioned ^502 ^ ^ if entity @s[distance=..500] positioned ^-502 ^ ^ run tag @e[tag=ai-executer,distance=..1] add AngYminus
execute as @p[tag=ai-target] positioned ^ ^ ^-501 if entity @s[distance=..500] positioned ^ ^ ^501 run tag @e[tag=ai-executer,distance=..1] add exist-behind
execute as @p[tag=ai-target] positioned ^ ^-502 ^ if entity @s[distance=..500] positioned ^ ^502 ^ run tag @e[tag=ai-executer,distance=..1] add AngXplus
execute as @p[tag=ai-target] positioned ^ ^502 ^ if entity @s[distance=..500] positioned ^ ^-502 ^ run tag @e[tag=ai-executer,distance=..1] add AngXminus

#近すぎたら曲がるのをやめるようにする
execute if entity @p[distance=..5,tag=ai-target] run tag @s add near
execute if entity @p[distance=30..,tag=ai-target] run tag @s remove near

#10ブロック下が地面なら上へ行くようにする
execute unless block ~ ~-10 ~ minecraft:air run tag @s add AngXminus
execute unless block ~ ~-10 ~ minecraft:air run tag @s remove AngXplus

#ターゲット不在なら右旋回する
execute unless entity @p[tag=ai-target] store result score #time reg1 run time query gametime
execute unless entity @p[tag=ai-target] run scoreboard players operation #time reg1 %= #2 Num
execute unless entity @p[tag=ai-target] if score #time reg1 matches 0 run tag @s add AngYplus

#ターゲット不在で高さがdefault-pos-y以上なら高度を下げる
execute store result score #pos-y reg1 run data get entity @s Pos[1] 1
execute unless entity @p[tag=ai-target] if score @s default-pos-y matches 1.. if score #pos-y reg1 > @s default-pos-y run tag @s add AngXplus
execute unless entity @p[tag=ai-target] if score @s default-pos-y matches 1.. if score #pos-y reg1 < @s default-pos-y run tag @s add AngXminus
execute unless entity @p[tag=ai-target] unless score @s default-pos-y matches 1.. positioned ~ 0 ~ unless entity @s[dx=1,dy=250,dz=1] run tag @s add AngXplus

#プレイヤー座標を向くように旋回
scoreboard players operation @s[tag=AngYplus,tag=!near] AngY += @s yaw-speed
scoreboard players operation @s[tag=exist-behind,tag=!AngYplus,tag=!AngYminus,tag=!near] AngY += @s yaw-speed
scoreboard players operation @s[tag=AngYminus,tag=!near] AngY -= @s yaw-speed
scoreboard players operation @s[tag=AngXplus,tag=!near,scores={AngX=..6000}] AngX += @s pitch-speed
scoreboard players operation @s[tag=AngXminus,tag=!near,scores={AngX=-6000..}] AngX -= @s pitch-speed

#Y角が36000を超えたら補正
scoreboard players remove @s[scores={AngY=36000..}] AngY 36000
scoreboard players remove @s[scores={AngX=36000..}] AngX 36000
scoreboard players add @s[scores={AngY=..-36000}] AngY 36000
scoreboard players add @s[scores={AngX=..-36000}] AngX 36000

#向きをスコアから入れる
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @s AngY
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get @s AngX

#単位ベクトル算出
function math:vector

#speedとの積をとって移動量算出
scoreboard players operation @s speedX *= @s speed
scoreboard players operation @s speedY *= @s speed
scoreboard players operation @s speedZ *= @s speed

#debug用motion停止
#scoreboard players set @s speedX 0
#scoreboard players set @s speedY 0
#scoreboard players set @s speedZ 0

#Motionに代入(speed/10)
execute store result entity @s Motion[0] double 0.00001 run scoreboard players operation @s speedX /= #10 Num
execute store result entity @s Motion[1] double 0.00001 run scoreboard players operation @s speedY /= #10 Num
execute store result entity @s Motion[2] double 0.00001 run scoreboard players operation @s speedZ /= #10 Num

#射撃可能か判定
function mob:ai/util/is-attackable

#プレイヤーの方を向いたら射撃
execute if entity @s[tag=attackable] run function mob:ai/attack/use-weapon

#cooltimeが0だったらスキル使用
execute if entity @s[tag=has-skill] positioned ~-128 -64 ~-128 if entity @p[dx=256,dy=1024,dz=256] if score @s skill-ct matches ..0 at @s run function mob:ai/attack/use-skill
execute if entity @s[tag=has-skill] positioned ~-128 -64 ~-128 if entity @p[dx=256,dy=1024,dz=256] if score @s skill-ct matches 1.. at @s run scoreboard players remove @s skill-ct 1

#particle
execute unless entity @p[tag=ai-target] if entity @s[tag=has-rider] run particle minecraft:large_smoke ~ ~ ~ 0.3 0.3 0.3 0 5 force
execute unless entity @p[tag=ai-target] if entity @s[tag=!has-rider] run particle minecraft:dust 0 1 0 2 ~ ~ ~ 0.3 0.3 0.3 0 5 force
execute if entity @p[tag=ai-target] run particle minecraft:dust 1 0 0 2 ~ ~ ~ 0 0 0 1 1 force

#対象忘却
scoreboard players remove @s[scores={forget-time=0..}] forget-time 1
scoreboard players reset @s[scores={forget-time=0}] target-planeid

#実行者タグ除去
kill @e[tag=ai-indicator,distance=..2]
tag @s remove has-rider
tag @s remove attackable
tag @s remove AngYplus
tag @s remove AngYminus
tag @s remove AngXplus
tag @s remove AngXminus
tag @s remove exist-behind
tag @s remove ai-executer
tag @e[tag=phantom1-rider,sort=nearest,distance=..3] remove ai-rider
execute at @a[tag=ai-target] run tag @e[tag=ai-target-plane,distance=..20] remove ai-target-plane
tag @a[tag=ai-target] remove ai-target

