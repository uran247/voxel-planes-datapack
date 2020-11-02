#hitしたエンティティにダメージを与える
#撃墜メッセージやダメージエフェクトも出す
#入力　tag=gun-move-executer：弾体  tag=gunner:発射母体 tag=hit-weapon 命中したエンティティ
#実行者：弾体

#ダメージ後の体力計算
execute as @e[tag=hit-weapon,distance=..20] run function weapon:util/set-entity-hp
#scoreboard players operation @e[tag=hit-weapon,distance=..20,type=!player] reg1 -= @s damage
#execute as @e[tag=hit-weapon,distance=..20,type=!player,scores={reg1=..-1}] run scoreboard players set @s reg1 0
scoreboard players operation @e[tag=hit-weapon,distance=..20,type=!player] reg2 = @s damage
execute as @e[tag=hit-weapon,distance=..20,type=!player] run function weapon:util/calc-entity-damage

#弾丸のplane-id記憶
scoreboard players operation #bullet-id reg1 = @s plane-id
#射手判定
execute as @a if score @s plane-id = #bullet-id reg1 run tag @s add bullet-owner

### メッセージ処理 ###
#メッセージを表示(title)
title @p[tag=bullet-owner] times 0 20 20
execute as @e[tag=hit-weapon,distance=..20,scores={reg1=0},sort=nearest,limit=1] run function weapon:gun/damage/set-kill-mob-message
execute as @e[tag=hit-weapon,distance=..20,scores={reg1=0},tag=enemy-target,sort=nearest,limit=1] run function weapon:gun/damage/set-kill-target-message
execute if entity @e[tag=!entity-nohit,distance=..20,scores={reg1=0}] run title @p[tag=bullet-owner] title {"text":""}
#メッセージ表示(tellraw)とダメージエフェクト
execute as @e[tag=hit-weapon,tag=plane-hitbox,tag=!cockpit,distance=..20] run function weapon:util/hit-hitbox-effect
execute as @e[tag=hit-weapon,tag=plane-hitbox,tag=!cockpit,distance=..20,scores={reg1=0}] run function weapon:util/destroy-hitbox-message

#撃墜者/クリアスコアをプラス
execute as @p[tag=bullet-owner] run function weapon:gun/damage/set-shotdown-score

#パイロットにダメージ判定
execute if entity @e[tag=hit-weapon,tag=cockpit,distance=..20] run function weapon:util/pilot-damage

#飛行機に乗ってないプレイヤーにダメージ判定
scoreboard players operation @p[tag=hit-weapon,distance=..20] taken-damage = @s damage
execute as @p[tag=hit-weapon,distance=..20] run function weapon:util/damage

#ダメージエフェクト
effect give @e[tag=hit-weapon,distance=..20,type=!player] minecraft:instant_damage 1 126 true

#スコアをHPに反映
execute as @e[tag=hit-weapon,distance=..20,type=!spawner_minecart] store result entity @s Health float 1 run scoreboard players get @s reg1
execute as @e[tag=hit-weapon,distance=..20,type=spawner_minecart] store result entity @s MaxNearbyEntities float 1 run scoreboard players get @s reg1

#破壊音
execute at @e[tag=hit-weapon,distance=..20,scores={reg1=0},tag=enemy-target] run playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 16 0

#破壊されたスポナーをキル
kill @e[tag=hit-weapon,distance=..20,scores={reg1=0},tag=enemy-target]

#tellraw @p [{"nbt":"Tags","entity":"@e[tag=hit-weapon,distance=..20,limit=1]"}] 

#タグ除去
tag @a remove bullet-owner
