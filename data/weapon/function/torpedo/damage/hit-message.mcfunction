#
#入力：entity: @e[scores={vp.reg1=1..}]
#処理：命中メッセージをチャット欄に表示
#戻り：
execute store result score #hit-num vp.reg1 if entity @e[tag=!entity-nohit,distance=..16]
tellraw @p[tag=torpedo-owner] [{"text":"命中×","color":"white"},{"score":{"name":"#hit-num","objective":"vp.reg1"}}]

