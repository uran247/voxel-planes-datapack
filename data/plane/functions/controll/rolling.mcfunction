#滑走中の機体について、プレイヤーの入力に応じて機体の角度/速度スコアを変更する
#入力：　エンティティ：プレイヤー　座標：機体　タグ：controll-target controll-parts

#周囲見渡しスロットを選択してたらタグ付け
tag @s[scores={plane-key-input=8}] add overlook

#スロット8選択でthrottleが+１，6選択で-1
execute if entity @s[scores={plane-key-input=9}] as @e[tag=controll-target,distance=..1,limit=1] run scoreboard players add @s[scores={throttle=..19}] throttle 1
execute if entity @s[scores={plane-key-input=6}] as @e[tag=controll-target,distance=..1,limit=1] run scoreboard players remove @s[scores={throttle=1..}] throttle 1

#稼働エンジン数に応じてスロットル減衰 スロットル×稼働エンジン数/最大エンジン数
execute as @e[tag=controll-target,distance=..1,limit=1] run scoreboard players operation @s throttle *= @s engine
execute as @e[tag=controll-target,distance=..1,limit=1] run scoreboard players operation @s throttle /= @s max-engine

#墜落してた場合スロットル0
scoreboard players set @e[tag=controll-target,tag=destroyed,distance=..1,limit=1] throttle 0

#プレイヤーがどれくらい右を向いているか左を向いているか取得(0未満なら左、0以上なら右)
execute store result score #source-rot input run data get entity @s Rotation[0] 100
scoreboard players operation #target-rot input = @e[tag=controll-target,distance=..1,limit=1] AngY
function util:get-angle-defference
execute if entity @s[tag=!overlook] run scoreboard players operation @e[tag=controll-target,distance=..1,limit=1] yaw-gap = #defference return

#周囲見渡しタグ削除
tag @s[tag=overlook] remove overlook
