#近くの飛行機をアイテム化 has-riderがついてる航空機は対象外
#入力: entity: player position: player

#アイテム化
execute as @e[tag=plane-root,tag=!has-rider,limit=1,sort=nearest,distance=..10] at @s run function item:plane2item/plane2item

#スコアリセット
scoreboard players reset @s rightClick