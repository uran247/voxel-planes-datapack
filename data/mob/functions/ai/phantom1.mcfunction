#ai/aiから呼び出される
#実行者・座標はphantom1
#入力　エンティティ：phantom1 座標：phantom1

#game-idが違ってたらkill
execute unless score @s game-id = #global game-id run kill @s

#実行者にタグ付け
tag @s add ai-executer
tag @e[tag=phantom1-rider,sort=nearest,distance=..3] add ai-rider
execute if entity @s[nbt={Passengers:[{Tags:[phantom1-rider]}]}] run tag @s add has-rider

#ターゲットのplane-idを記憶
execute as @a[distance=..96] positioned ^ ^ ^200 if entity @s[distance=..200] run tag @s add ai-target-candidate
execute if entity @p[tag=ai-target-candidate,scores={plane-id=1..}] run scoreboard players operation @s target-planeid = @p[tag=ai-target-candidate,scores={plane-id=1..}] plane-id
execute if entity @p[tag=ai-target-candidate,scores={plane-id=1..}] run scoreboard players set @s forget-time 100
execute if entity @p[tag=ai-target-candidate,scores={plane-id=1..}] unless entity @s[tag=!has-rider,distance=..3] run scoreboard players set @s forget-time 20

#ターゲットにタグ付け
execute at @s as @a if score @s plane-id = @e[tag=ai-executer,distance=..1,limit=1] target-planeid run tag @s add ai-target
execute at @p[tag=ai-target,scores={plane-id=1..}] run tag @e[tag=plane-root,limit=1,sort=nearest] add ai-target-plane

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
execute unless entity @p[tag=ai-target] run tag @s add AngYplus

#ターゲット不在で高さ250なら高度を下げる
execute unless entity @p[tag=ai-target] positioned ~ 0 ~ unless entity @s[dx=1,dy=200,dz=1] run tag @s add AngXplus

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
execute as @p[tag=ai-target] positioned ^ ^-251 ^-431 if entity @s[distance=..500] positioned ^ ^251 ^431 run tag @e[tag=ai-executer,distance=..1] add unattackable
execute as @p[tag=ai-target] positioned ^ ^251 ^-431 if entity @s[distance=..500] positioned ^ ^-251 ^431 run tag @e[tag=ai-executer,distance=..1] add unattackable

#プレイヤーの方を向いたら射撃
execute as @s[tag=!unattackable,tag=!AngYplus,tag=!AngYminus,tag=!exist-behind,scores={ammunition1=1..,w1-reload=..0}] if entity @p[tag=ai-target,distance=..96] at @s run function mob:weapon/phantom1/7p7mm
execute as @s[tag=!unattackable,tag=!AngYplus,tag=!AngYminus,tag=!exist-behind,scores={ammunition1=1..,w1-reload=..0}] if entity @p[tag=ai-target,distance=..96] at @s run scoreboard players remove @s ammunition1 1
scoreboard players remove @s[scores={ammunition1=1..,w1-reload=1..}] w1-reload 1

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
tag @s remove unattackable
tag @s remove AngYplus
tag @s remove AngYminus
tag @s remove AngXplus
tag @s remove AngXminus
tag @s remove exist-behind
tag @s remove ai-executer
tag @e[tag=phantom1-rider,sort=nearest,distance=..3] remove ai-rider
execute at @a[tag=ai-target] run tag @e[tag=ai-target-plane,distance=..20] remove ai-target-plane
tag @a[tag=ai-target] remove ai-target
tag @a[tag=ai-target-candidate] remove ai-target-candidate

