#持ち主判定
scoreboard players operation #parts-id vp.reg1 = @s vp.plane-id
execute as @a if score @s vp.plane-id = #parts-id vp.reg1 run tag @s add parts-owner

#damage effect
effect give @p[tag=parts-owner] minecraft:instant_damage 1 126

#タグ除去
tag @a[tag=parts-owner] remove parts-owner