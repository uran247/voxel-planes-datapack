#エンジン始動音を鳴らす
#入力 entity:機体エンティティ
#帰り 無し
execute if score @s[tag=!engine-started] vp.speed matches 2.. run playsound minecraft:plane.engine.recipro-start ambient @a ~ ~ ~ 1 1 1
execute if score @s vp.speed matches 2.. run tag @s add engine-started
execute if score @s[tag=engine-started] vp.speed matches ..0 run tag @s remove engine-started
