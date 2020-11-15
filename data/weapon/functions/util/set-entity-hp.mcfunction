#hpスコア化
#入力：entity:HPを取得したいエンティティ
#処理：スポナーならMaxNearbyEntities、モブならHealthを自身のvp.reg1に代入
#戻り：score: entity vp.reg1
execute store result score @s[type=spawner_minecart] vp.reg1 run data get entity @s MaxNearbyEntities
execute store result score @s[type=!spawner_minecart] vp.reg1 run data get entity @s Health
execute store result score @s[type=player] vp.taken-damage run data get entity @s Health
