#### スコア情報をActionbarに表示 ####
#入力：entity 機体

#weaponチャットコンポーネント用タグをチェストの本にいれる
data modify storage plane-datapack plane-info set value [""]

#speed計算
scoreboard players operation #speed reg1 = @s speed
scoreboard players operation #speed reg1 *= #288 Num
scoreboard players operation #speed reg1 /= #10000 Num
execute if score @s speed <= @s gear-pullout-max run data modify storage plane-datapack plane-info[0] set value "[{\"score\":{\"name\":\"#speed\",\"objective\":\"reg1\"},\"color\":\"blue\"},{\"text\":\"km/h\",\"color\":\"blue\"}]"
execute if score @s speed > @s gear-pullout-max run data modify storage plane-datapack plane-info[0] set value "[{\"score\":{\"name\":\"#speed\",\"objective\":\"reg1\"},\"color\":\"red\"},{\"text\":\"km/h\",\"color\":\"red\"}]"

#throt計算
scoreboard players operation #throttle reg1 = @s throttle
scoreboard players operation #throttle reg1 *= #5 Num

#高度取得
scoreboard players operation #altitude reg1 = @s PosY
scoreboard players operation #altitude reg1 /= #10000 Num

#武器の名前表示
execute if entity @s[tag=main-weapon1,scores={ammunition1=1..}] run data modify storage plane-datapack plane-info append value "[{\"text\":\"wpn1:\",\"color\":\"green\"},{\"score\":{\"name\":\"#ammunition1\",\"objective\":\"reg1\"},\"color\":\"green\"}]"
execute if entity @s[tag=main-weapon1,scores={ammunition1=..0}] run data modify storage plane-datapack plane-info append value "[{\"text\":\"reloading:\",\"color\":\"white\"},{\"score\":{\"name\":\"#ammunition1\",\"objective\":\"reg1\"},\"color\":\"white\"}]"
execute unless entity @s[tag=main-weapon1] run data modify storage plane-datapack plane-info append value ""

execute if entity @s[tag=main-weapon2,scores={ammunition2=1..}] run data modify storage plane-datapack plane-info append value "[{\"text\":\" wpn2:\",\"color\":\"green\"},{\"score\":{\"name\":\"#ammunition2\",\"objective\":\"reg1\"},\"color\":\"green\"}]"
execute if entity @s[tag=main-weapon2,scores={ammunition2=..0}] run data modify storage plane-datapack plane-info append value "[{\"text\":\" reloading:\",\"color\":\"white\"},{\"score\":{\"name\":\"#ammunition2\",\"objective\":\"reg1\"},\"color\":\"white\"}]"
execute unless entity @s[tag=main-weapon2] run data modify storage plane-datapack plane-info append value ""

execute if entity @s[tag=main-weapon3,scores={ammunition3=1..}] run data modify storage plane-datapack plane-info append value "[{\"text\":\" wpn3:\",\"color\":\"green\"},{\"score\":{\"name\":\"#ammunition3\",\"objective\":\"reg1\"},\"color\":\"green\"}]"
execute if entity @s[tag=main-weapon3,scores={ammunition3=..0}] run data modify storage plane-datapack plane-info append value "[{\"text\":\" reloading:\",\"color\":\"white\"},{\"score\":{\"name\":\"#ammunition3\",\"objective\":\"reg1\"},\"color\":\"white\"}]"
execute unless entity @s[tag=main-weapon3] run data modify storage plane-datapack plane-info append value ""

execute if entity @s[tag=main-weapon4,scores={ammunition4=1..}] run data modify storage plane-datapack plane-info append value "[{\"text\":\" wpn4:\",\"color\":\"green\"},{\"score\":{\"name\":\"#ammunition4\",\"objective\":\"reg1\"},\"color\":\"green\"}]"
execute if entity @s[tag=main-weapon4,scores={ammunition4=..0}] run data modify storage plane-datapack plane-info append value "[{\"text\":\" reloading:\",\"color\":\"white\"},{\"score\":{\"name\":\"#ammunition4\",\"objective\":\"reg1\"},\"color\":\"white\"}]"
execute unless entity @s[tag=main-weapon4] run data modify storage plane-datapack plane-info append value ""

execute if entity @s[tag=main-weapon5,scores={ammunition5=1..}] run data modify storage plane-datapack plane-info append value "[{\"text\":\" wpn5:\",\"color\":\"green\"},{\"score\":{\"name\":\"#ammunition5\",\"objective\":\"reg1\"},\"color\":\"green\"}]"
execute if entity @s[tag=main-weapon5,scores={ammunition5=..0}] run data modify storage plane-datapack plane-info append value "[{\"text\":\" reloading:\",\"color\":\"white\"},{\"score\":{\"name\":\"#ammunition5\",\"objective\":\"reg1\"},\"color\":\"white\"}]"
execute unless entity @s[tag=main-weapon5] run data modify storage plane-datapack plane-info append value ""

execute if entity @s[scores={plane-weapon=1}] run data modify storage plane-datapack plane-info append from entity @s HandItems[0].tag.weapons[0]
execute if entity @s[scores={plane-weapon=2}] run data modify storage plane-datapack plane-info append from entity @s HandItems[0].tag.weapons[1]
execute if entity @s[scores={plane-weapon=3}] run data modify storage plane-datapack plane-info append from entity @s HandItems[0].tag.weapons[2]
execute if entity @s[scores={plane-weapon=4}] run data modify storage plane-datapack plane-info append from entity @s HandItems[0].tag.weapons[3]


#wepon残弾数取得
execute if entity @s[tag=main-weapon1] run scoreboard players operation #ammunition1 reg1 = @s ammunition1
execute if entity @s[tag=main-weapon2] run scoreboard players operation #ammunition2 reg1 = @s ammunition2
execute if entity @s[tag=main-weapon3] run scoreboard players operation #ammunition3 reg1 = @s ammunition3
execute if entity @s[tag=main-weapon4] run scoreboard players operation #ammunition4 reg1 = @s ammunition4
execute if entity @s[tag=main-weapon5] run scoreboard players operation #ammunition5 reg1 = @s ammunition5
execute unless entity @s[tag=main-weapon1] run scoreboard players reset #ammunition1 reg1
execute unless entity @s[tag=main-weapon2] run scoreboard players reset #ammunition2 reg1
execute unless entity @s[tag=main-weapon3] run scoreboard players reset #ammunition3 reg1
execute unless entity @s[tag=main-weapon4] run scoreboard players reset #ammunition4 reg1
execute unless entity @s[tag=main-weapon5] run scoreboard players reset #ammunition5 reg1

#残弾数0の場合リロード時間を取得
execute if entity @s[scores={ammunition1=..0}] run scoreboard players operation #ammunition1 reg1 = @s ammo-reload1
execute if entity @s[scores={ammunition1=..0}] run scoreboard players operation #ammunition1 reg1 /= #20 Num
execute if entity @s[scores={ammunition2=..0}] run scoreboard players operation #ammunition2 reg1 = @s ammo-reload2
execute if entity @s[scores={ammunition2=..0}] run scoreboard players operation #ammunition2 reg1 /= #20 Num
execute if entity @s[scores={ammunition3=..0}] run scoreboard players operation #ammunition3 reg1 = @s ammo-reload3
execute if entity @s[scores={ammunition3=..0}] run scoreboard players operation #ammunition3 reg1 /= #20 Num
execute if entity @s[scores={ammunition4=..0}] run scoreboard players operation #ammunition4 reg1 = @s ammo-reload4
execute if entity @s[scores={ammunition4=..0}] run scoreboard players operation #ammunition4 reg1 /= #20 Num
execute if entity @s[scores={ammunition5=..0}] run scoreboard players operation #ammunition5 reg1 = @s ammo-reload5
execute if entity @s[scores={ammunition5=..0}] run scoreboard players operation #ammunition5 reg1 /= #20 Num

#飛行機情報表示
title @p[tag=controller] actionbar ["",{"nbt":"plane-info[0]","storage":"plane-datapack","interpret":true},{"text":" Throt:","color":"red"},{"score":{"name":"#throttle","objective":"reg1"},"color":"red"},{"text":"% Alt:","color":"red"},{"score":{"name":"#altitude","objective":"reg1"},"color":"red"},{"text":" Wpn:","color":"yellow"},{"nbt":"plane-info[6]","storage":"plane-datapack","color":"yellow"},{"text":" Ammo:{","color":"green"},{"nbt":"plane-info[1]","storage":"plane-datapack","color":"green","interpret":true},{"nbt":"plane-info[2]","storage":"plane-datapack","color":"green","interpret":true},{"nbt":"plane-info[3]","storage":"plane-datapack","color":"green","interpret":true},{"nbt":"plane-info[4]","storage":"plane-datapack","color":"green","interpret":true},{"text":"}","color":"green"}]

#失速してたら警告表示
execute if entity @s[tag=stall] run title @p[tag=controller] times 0 1 1
execute if entity @s[tag=stall] run title @p[tag=controller] title [{"text":"失速！！","color":"dark_red"}]

#墜落判定が出たら表示
execute if entity @s[tag=destroyed,tag=flying] run title @p[tag=controller] times 0 2 0
execute if entity @s[tag=destroyed,tag=flying] run title @p[tag=controller] title [{"text":"墜落！！操作不能","color":"dark_red"}]
