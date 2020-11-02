#pilotにダメージ,cockpitエンティティへのダメージを無効化
#入力：entity: bullet tag: hit-gun score @s damage

#持ち主判定
scoreboard players operation #parts-id reg1 = @e[tag=hit-gun,tag=cockpit,distance=..20] plane-id
execute as @a if score @s plane-id = #parts-id reg1 run tag @s add parts-owner

#ダメージ
scoreboard players operation @p[tag=parts-owner] taken-damage = @s damage
execute as @p[tag=parts-owner] run function weapon:util/damage

#cockpitエンティティへのダメージを無効化
scoreboard players set @e[tag=hit-gun,tag=cockpit,distance=..20] reg1 80

#タグ除去
tag @a[tag=parts-owner] remove parts-owner