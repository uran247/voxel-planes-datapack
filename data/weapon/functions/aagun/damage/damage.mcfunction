#hitした周囲のエンティティにダメージを与える
#撃墜メッセージやダメージエフェクトも出す
#使えるタグ　aagun-move-executer：弾体  aaguner:発射母体
#実行者：砲弾


#### 射手取得 ####
#砲弾のplane-id取得
scoreboard players operation #bullet-id vp.reg1 = @s vp.plane-id
#射手判定
execute as @a if score @s vp.plane-id = #bullet-id vp.reg1 run tag @s add weapon-owner
#### ダメージ判定 ####
#hp取得
execute as @e[tag=!entity-nohit,distance=..3] run function weapon:util/set-entity-hp

#hpからダメージを引く 防御率分だけダメージを下げる
scoreboard players operation @e[tag=!entity-nohit,distance=..3] vp.reg2 = @s vp.damage
execute as @e[tag=!entity-nohit,distance=..3] run function weapon:util/calc-entity-damage

### メッセージ処理 ###
#メッセージを表示(title)
title @p[tag=weapon-owner] times 0 20 20
execute as @e[tag=!entity-nohit,distance=..3,scores={vp.reg1=0},tag=!enemy-target,sort=nearest,limit=1] run function weapon:util/set-kill-mob-message
execute as @e[tag=!entity-nohit,distance=..3,scores={vp.reg1=0},tag=enemy-target,sort=nearest,limit=1] run function weapon:util/set-kill-target-message
execute if entity @e[tag=!entity-nohit,distance=..3,scores={vp.reg1=0}] run title @p[tag=weapon-owner] title {"text":""}
#メッセージを表示(tellraw)
execute if entity @e[tag=!entity-nohit,distance=..3] run function weapon:util/hit-message
execute as @e[tag=plane-hitbox,distance=..3,scores={vp.reg1=0}] run function weapon:util/destroy-hitbox-message

#### ダメージ処理 ####
#撃墜者/クリアスコアをプラス
execute as @p[tag=weapon-owner] run function weapon:aagun/damage/set-shotdown-score

#スコアをHPに反映
execute if score #bullet-id vp.reg1 matches 1.. as @e[tag=!entity-nohit,distance=..3,type=!minecraft:spawner_minecart,type=!minecraft:player] store result entity @s Health float 1 run scoreboard players get @s vp.reg1
execute if score #bullet-id vp.reg1 matches ..0 as @e[tag=!entity-nohit,distance=..3,type=!minecraft:spawner_minecart,type=!minecraft:player] unless score @s vp.plane-id matches ..0 store result entity @s Health float 1 run scoreboard players get @s vp.reg1
execute as @e[tag=!entity-nohit,distance=..3,type=minecraft:spawner_minecart] store result entity @s MaxNearbyEntities short 1 run scoreboard players get @s vp.reg1
execute as @a[tag=!entity-nohit,distance=..3] run scoreboard players operation @s vp.taken-damage -= @s vp.reg1
execute as @a[tag=!entity-nohit,distance=..3] run function weapon:util/damage

#破壊されたスポナーをキル
kill @e[tag=!entity-nohit,distance=..20,scores={vp.reg1=0},type=minecraft:spawner_minecart]

#### ダメージ時エフェクト ####
#命中地点にパーティクル
particle minecraft:large_smoke ^ ^ ^ 1.3 2 1.3 0 1000 force
execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 1.2 0

#タグ除去
tag @a remove weapon-owner

#tellraw @p [{"score" : {"name":"#bunretsu-max", "objective":"bgm-repeat"}}, {"text":" "}, {"score" : {"name":"#repeat-now", "objective":"bgm-repeat"}}]

