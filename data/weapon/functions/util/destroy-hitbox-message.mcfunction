#入力：entity [tag=plane-hitbox,scores={vp.reg1=0}]
#処理：パーツが破壊されたことを持ち主に表示
#戻り：

#持ち主判定
scoreboard players operation #parts-id vp.reg1 = @s vp.plane-id
execute as @a if score @s vp.plane-id = #parts-id vp.reg1 run tag @s add parts-owner

#メッセージ
execute if entity @s[tag=engine] run tellraw @p[tag=parts-owner] [{"text":"エンジンが破壊されました","color":"dark_red"}]
execute if entity @s[tag=aileron] run tellraw @p[tag=parts-owner] [{"text":"主翼が破壊されました","color":"dark_red"}]
execute if entity @s[tag=radder] run tellraw @p[tag=parts-owner] [{"text":"ラダーが破壊されました","color":"dark_red"}]
execute if entity @s[tag=elevetor] run tellraw @p[tag=parts-owner] [{"text":"エレベータが破壊されました","color":"dark_red"}]
execute if entity @s[tag=body] run tellraw @p[tag=parts-owner] [{"text":"機体が破壊されました","color":"dark_red"}]

#タグ除去
tag @a[tag=parts-owner] remove parts-owner