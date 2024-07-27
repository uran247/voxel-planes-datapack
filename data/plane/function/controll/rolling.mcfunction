#> plane:controll/rolling
#
# 滑走中の機体について、プレイヤーの入力に応じて機体の角度/速度スコアを変更する
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
    #declare tag throttle-change-lock #スロットル変更をロックしていることを示す
    #declare score_holder #source-rot #プレイヤーの向いている角度[degree*100]を示す
    #declare score_holder #target-rot #機体の向いている角度[degree*100]を示す
    #declare score_holder #defference #Y軸の現在の機体の角度とプレイヤーが向いている角度の差分を示す

#周囲見渡しスロットを選択してたらタグ付け
tag @s[scores={vp.key-input=8}] add overlook

#スロット8選択でthrottleが+１，6選択で-1
#execute if entity @s[scores={vp.key-input=9}] as @e[tag=controll-target,distance=..1,limit=1] run scoreboard players add @s[scores={vp.throttle=..19}] vp.throttle 1
#execute if entity @s[scores={vp.key-input=6}] as @e[tag=controll-target,distance=..1,limit=1] run scoreboard players remove @s[scores={vp.throttle=1..}] vp.throttle 1

#W押下でthrottleが+１，S押下で-1
execute if entity @s[scores={vp.key-storoke=1..2}] as @e[tag=controll-target,tag=!throttle-change-lock,distance=..1,limit=1] run scoreboard players add @s[scores={vp.throttle=..19}] vp.throttle 1
execute if entity @s[scores={vp.key-storoke=8}] as @e[tag=controll-target,tag=!throttle-change-lock,distance=..1,limit=1] run scoreboard players add @s[scores={vp.throttle=..19}] vp.throttle 1
execute if entity @s[scores={vp.key-storoke=4..6}] as @e[tag=controll-target,tag=!throttle-change-lock,tag=!use-wep,distance=..1,limit=1] run scoreboard players remove @s[scores={vp.throttle=1..}] vp.throttle 1

#throttle20の時Wを3tick押下でWEP、WEP時Sを3tick押下でWEP解除、WEP解除後にSを押しっぱなしにしてもスロットルを下げないようにロック
execute if entity @s[scores={vp.key-storoke=1..2}] as @e[tag=controll-target,scores={vp.throttle=20},distance=..1,limit=1] run scoreboard players add @s vp.use-wep 1
execute if entity @s[scores={vp.key-storoke=8}] as @e[tag=controll-target,scores={vp.throttle=20},distance=..1,limit=1] run scoreboard players add @s vp.use-wep 1
execute as @e[tag=controll-target,tag=has-wep,tag=!reloading-wep,scores={vp.use-wep=3..},distance=..1,limit=1] run tag @s add use-wep

execute if entity @s[scores={vp.key-storoke=4..6}] as @e[tag=controll-target,tag=use-wep,scores={vp.throttle=20},distance=..1,limit=1] run tag @s add throttle-change-lock
execute if entity @s[scores={vp.key-storoke=4..6}] as @e[tag=controll-target,tag=use-wep,scores={vp.throttle=20},distance=..1,limit=1] run tag @s remove use-wep

execute if entity @s[scores={vp.key-storoke=0}] as @e[tag=controll-target,scores={vp.throttle=20},distance=..1,limit=1] run scoreboard players set @s vp.use-wep 0
execute if entity @s[scores={vp.key-storoke=3..7}] as @e[tag=controll-target,scores={vp.throttle=20},distance=..1,limit=1] run scoreboard players set @s vp.use-wep 0
execute if entity @s[scores={vp.key-storoke=0..3}] as @e[tag=controll-target,scores={vp.throttle=20},distance=..1,limit=1] run tag @s remove throttle-change-lock
execute if entity @s[scores={vp.key-storoke=7..8}] as @e[tag=controll-target,scores={vp.throttle=20},distance=..1,limit=1] run tag @s remove throttle-change-lock

#墜落してた場合スロットル0
scoreboard players set @e[tag=controll-target,tag=destroyed,distance=..1,limit=1] vp.throttle 0

#プレイヤーがどれくらい右を向いているか左を向いているか取得(0未満なら左、0以上なら右)
execute store result score #source-rot vp.input run data get entity @s Rotation[0] 100
scoreboard players operation #target-rot vp.input = @e[tag=controll-target,distance=..1,limit=1] vp.AngY
function util:get-angle-defference
execute if entity @s[tag=!overlook] run scoreboard players operation @e[tag=controll-target,distance=..1,limit=1] vp.yaw-gap = #defference vp.return

#周囲見渡しタグ削除
tag @s[tag=overlook] remove overlook

#tellraw @p [{"score" : {"name":"@e[tag=controll-target,distance=..1,limit=1]", "objective":"vp.throttle"}}]
