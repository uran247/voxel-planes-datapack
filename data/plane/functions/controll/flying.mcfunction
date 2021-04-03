#> plane:controll/flying
#
# 飛行中の機体について、プレイヤーの入力に応じて機体の角度/速度スコアを変更する
# ふぃくしょん方式
#
# @input
#   entity @p
#   position @e[tag=plane-toor,tag=controll-target]
#
# @output
#   score @e[tag=controll-target] vp.yaw-gap
#       Y軸の現在の機体の角度とプレイヤーが向いている角度の差分
#
# @within function plane:controll/plane-controll

#> private
# @private
    #declare tag overlook #旋回をロックしていることを示す
    #declare score_holder #source-rot #プレイヤーの向いている角度[degree*100]を示す
    #declare score_holder #target-rot #機体の向いている角度[degree*100]を示す
    #declare score_holder #defference #Y軸の現在の機体の角度とプレイヤーが向いている角度の差分を示す

#周囲見渡しスロットを選択してたらタグ付け
tag @s[scores={vp.key-input=8}] add overlook

#プレイヤーが右を向いているか左を向いているか取得(0未満なら左、0以上なら右)
execute store result score #source-rot vp.input run data get entity @s Rotation[0] 100
scoreboard players operation #target-rot vp.input = @e[tag=controll-target,distance=..1,limit=1] vp.AngY
function util:get-angle-defference
execute if entity @s[tag=!overlook] run scoreboard players operation @e[tag=controll-target,distance=..1,limit=1] vp.yaw-gap = #defference vp.return

#プレイヤーが上を向いているか下を向いているか取得(0未満なら上、0以上なら下)
execute store result score #source-rot vp.input run data get entity @s Rotation[1] 100
scoreboard players operation #target-rot vp.input = @e[tag=controll-target,distance=..1,limit=1] vp.AngX
function util:get-angle-defference
execute if entity @s[tag=!overlook] run scoreboard players operation @e[tag=controll-target,distance=..1,limit=1] vp.pitch-gap = #defference vp.return

#スロット8選択でthrottleが+１，6選択で-1
execute if entity @s[scores={vp.key-input=9}] as @e[tag=controll-target,distance=..1,limit=1] run scoreboard players add @s[scores={vp.throttle=..19}] vp.throttle 1
execute if entity @s[scores={vp.key-input=6}] as @e[tag=controll-target,distance=..1,limit=1] run scoreboard players remove @s[scores={vp.throttle=1..}] vp.throttle 1

#稼働エンジン数に応じてスロットル減衰 スロットル×稼働エンジン数/最大エンジン数
execute as @e[tag=controll-target,distance=..1,limit=1] run scoreboard players operation @s vp.throttle *= @s vp.engine
execute as @e[tag=controll-target,distance=..1,limit=1] run scoreboard players operation @s vp.throttle /= @s vp.max-engine

#墜落してた場合スロットル0
scoreboard players set @e[tag=controll-target,tag=destroyed,distance=..1,limit=1] vp.throttle 0

#周囲見渡しタグ削除
tag @s[tag=overlook] remove overlook
