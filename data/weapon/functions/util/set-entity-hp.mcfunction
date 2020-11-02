#hpスコア化
#入力：entity:HPを取得したいエンティティ
#処理：スポナーならMaxNearbyEntities、モブならHealthを自身のreg1に代入
#戻り：score: entity reg1
execute store result score @s[type=spawner_minecart] reg1 run data get entity @s MaxNearbyEntities
execute store result score @s[type=!spawner_minecart] reg1 run data get entity @s Health
execute store result score @s[type=player] taken-damage run data get entity @s Health
