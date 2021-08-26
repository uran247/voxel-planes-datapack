#> plane:move/plane-move/rolling/engine-start-sound
#
# 離陸時のタグ付、スコア取得処理を行う
#
# @within function plane:move/plane-move/rolling

#> private
# @private
        #declare tag engine-started #エンジンスタート後であるかを示す

#エンジン始動音を鳴らす
#入力 entity:機体エンティティ
#帰り 無し
execute if score @s[tag=!engine-started] vp.speed matches 2.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data.flight-model.engine{type:recipro} run playsound minecraft:plane.engine.recipro-start ambient @a ~ ~ ~ 2 1 0
execute if score @s[tag=!engine-started] vp.speed matches 2.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data.flight-model.engine{type:jet} run playsound minecraft:plane.engine.jet-start ambient @a ~ ~ ~ 2 1 0
execute if score @s vp.speed matches 2.. run tag @s add engine-started
execute if score @s[tag=engine-started] vp.speed matches ..0 run tag @s remove engine-started
