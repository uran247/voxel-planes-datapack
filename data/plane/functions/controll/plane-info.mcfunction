#### スコア情報をActionbarに表示 ####
#入力：entity 機体

#weaponチャットコンポーネント用タグをチェストの本にいれる
data modify storage plane-datapack plane-info set value [""]

#speed計算
scoreboard players operation #speed vp.reg1 = @s vp.speed
scoreboard players operation #speed vp.reg1 *= #288 vp.Num
scoreboard players operation #speed vp.reg1 /= #10000 vp.Num
execute if score @s vp.speed <= @s vp.gear-po-max run data modify storage plane-datapack plane-info[0] set value "[{\"score\":{\"name\":\"#speed\",\"objective\":\"vp.reg1\"},\"color\":\"blue\"},{\"text\":\"km/h\",\"color\":\"blue\"}]"
execute if score @s vp.speed > @s vp.gear-po-max run data modify storage plane-datapack plane-info[0] set value "[{\"score\":{\"name\":\"#speed\",\"objective\":\"vp.reg1\"},\"color\":\"red\"},{\"text\":\"km/h\",\"color\":\"red\"}]"

#throt計算
scoreboard players operation #throttle vp.reg1 = @s vp.throttle
scoreboard players operation #throttle vp.reg1 *= #5 vp.Num

#高度取得
scoreboard players operation #altitude vp.reg1 = @s vp.PosY
scoreboard players operation #altitude vp.reg1 /= #10000 vp.Num

#武器の名前表示
execute if entity @s[tag=main-weapon1,scores={vp.ammunition1=1..}] run data modify storage plane-datapack plane-info append value "[{\"text\":\"wpn1:\",\"color\":\"green\"},{\"score\":{\"name\":\"#ammunition1\",\"objective\":\"vp.reg1\"},\"color\":\"green\"}]"
execute if entity @s[tag=main-weapon1,scores={vp.ammunition1=..0}] run data modify storage plane-datapack plane-info append value "[{\"text\":\"reloading:\",\"color\":\"white\"},{\"score\":{\"name\":\"#ammunition1\",\"objective\":\"vp.reg1\"},\"color\":\"white\"}]"
execute unless entity @s[tag=main-weapon1] run data modify storage plane-datapack plane-info append value ""

execute if entity @s[tag=main-weapon2,scores={vp.ammunition2=1..}] run data modify storage plane-datapack plane-info append value "[{\"text\":\" wpn2:\",\"color\":\"green\"},{\"score\":{\"name\":\"#ammunition2\",\"objective\":\"vp.reg1\"},\"color\":\"green\"}]"
execute if entity @s[tag=main-weapon2,scores={vp.ammunition2=..0}] run data modify storage plane-datapack plane-info append value "[{\"text\":\" reloading:\",\"color\":\"white\"},{\"score\":{\"name\":\"#ammunition2\",\"objective\":\"vp.reg1\"},\"color\":\"white\"}]"
execute unless entity @s[tag=main-weapon2] run data modify storage plane-datapack plane-info append value ""

execute if entity @s[tag=main-weapon3,scores={vp.ammunition3=1..}] run data modify storage plane-datapack plane-info append value "[{\"text\":\" wpn3:\",\"color\":\"green\"},{\"score\":{\"name\":\"#ammunition3\",\"objective\":\"vp.reg1\"},\"color\":\"green\"}]"
execute if entity @s[tag=main-weapon3,scores={vp.ammunition3=..0}] run data modify storage plane-datapack plane-info append value "[{\"text\":\" reloading:\",\"color\":\"white\"},{\"score\":{\"name\":\"#ammunition3\",\"objective\":\"vp.reg1\"},\"color\":\"white\"}]"
execute unless entity @s[tag=main-weapon3] run data modify storage plane-datapack plane-info append value ""

execute if entity @s[tag=main-weapon4,scores={vp.ammunition4=1..}] run data modify storage plane-datapack plane-info append value "[{\"text\":\" wpn4:\",\"color\":\"green\"},{\"score\":{\"name\":\"#ammunition4\",\"objective\":\"vp.reg1\"},\"color\":\"green\"}]"
execute if entity @s[tag=main-weapon4,scores={vp.ammunition4=..0}] run data modify storage plane-datapack plane-info append value "[{\"text\":\" reloading:\",\"color\":\"white\"},{\"score\":{\"name\":\"#ammunition4\",\"objective\":\"vp.reg1\"},\"color\":\"white\"}]"
execute unless entity @s[tag=main-weapon4] run data modify storage plane-datapack plane-info append value ""

execute if entity @s[tag=main-weapon5,scores={vp.ammunition5=1..}] run data modify storage plane-datapack plane-info append value "[{\"text\":\" wpn5:\",\"color\":\"green\"},{\"score\":{\"name\":\"#ammunition5\",\"objective\":\"vp.reg1\"},\"color\":\"green\"}]"
execute if entity @s[tag=main-weapon5,scores={vp.ammunition5=..0}] run data modify storage plane-datapack plane-info append value "[{\"text\":\" reloading:\",\"color\":\"white\"},{\"score\":{\"name\":\"#ammunition5\",\"objective\":\"vp.reg1\"},\"color\":\"white\"}]"
execute unless entity @s[tag=main-weapon5] run data modify storage plane-datapack plane-info append value ""

execute if entity @s[scores={vp.plane-weapon=1}] run data modify storage plane-datapack plane-info append from entity @s HandItems[0].tag.weapons[0]
execute if entity @s[scores={vp.plane-weapon=2}] run data modify storage plane-datapack plane-info append from entity @s HandItems[0].tag.weapons[1]
execute if entity @s[scores={vp.plane-weapon=3}] run data modify storage plane-datapack plane-info append from entity @s HandItems[0].tag.weapons[2]
execute if entity @s[scores={vp.plane-weapon=4}] run data modify storage plane-datapack plane-info append from entity @s HandItems[0].tag.weapons[3]


#wepon残弾数取得
execute if entity @s[tag=main-weapon1] run scoreboard players operation #ammunition1 vp.reg1 = @s vp.ammunition1
execute if entity @s[tag=main-weapon2] run scoreboard players operation #ammunition2 vp.reg1 = @s vp.ammunition2
execute if entity @s[tag=main-weapon3] run scoreboard players operation #ammunition3 vp.reg1 = @s vp.ammunition3
execute if entity @s[tag=main-weapon4] run scoreboard players operation #ammunition4 vp.reg1 = @s vp.ammunition4
execute if entity @s[tag=main-weapon5] run scoreboard players operation #ammunition5 vp.reg1 = @s vp.ammunition5
execute unless entity @s[tag=main-weapon1] run scoreboard players reset #ammunition1 vp.reg1
execute unless entity @s[tag=main-weapon2] run scoreboard players reset #ammunition2 vp.reg1
execute unless entity @s[tag=main-weapon3] run scoreboard players reset #ammunition3 vp.reg1
execute unless entity @s[tag=main-weapon4] run scoreboard players reset #ammunition4 vp.reg1
execute unless entity @s[tag=main-weapon5] run scoreboard players reset #ammunition5 vp.reg1

#残弾数0の場合リロード時間を取得
execute if entity @s[scores={vp.ammunition1=..0}] run scoreboard players operation #ammunition1 vp.reg1 = @s vp.w1-reload
execute if entity @s[scores={vp.ammunition1=..0}] run scoreboard players operation #ammunition1 vp.reg1 /= #20 vp.Num
execute if entity @s[scores={vp.ammunition2=..0}] run scoreboard players operation #ammunition2 vp.reg1 = @s vp.w2-reload
execute if entity @s[scores={vp.ammunition2=..0}] run scoreboard players operation #ammunition2 vp.reg1 /= #20 vp.Num
execute if entity @s[scores={vp.ammunition3=..0}] run scoreboard players operation #ammunition3 vp.reg1 = @s vp.w3-reload
execute if entity @s[scores={vp.ammunition3=..0}] run scoreboard players operation #ammunition3 vp.reg1 /= #20 vp.Num
execute if entity @s[scores={vp.ammunition4=..0}] run scoreboard players operation #ammunition4 vp.reg1 = @s vp.w4-reload
execute if entity @s[scores={vp.ammunition4=..0}] run scoreboard players operation #ammunition4 vp.reg1 /= #20 vp.Num
execute if entity @s[scores={vp.ammunition5=..0}] run scoreboard players operation #ammunition5 vp.reg1 = @s vp.w5-reload
execute if entity @s[scores={vp.ammunition5=..0}] run scoreboard players operation #ammunition5 vp.reg1 /= #20 vp.Num

#飛行機情報表示
title @p[tag=controller] actionbar ["",{"nbt":"plane-info[0]","storage":"plane-datapack","interpret":true},{"text":" Throt:","color":"red"},{"score":{"name":"#throttle","objective":"vp.reg1"},"color":"red"},{"text":"% Alt:","color":"red"},{"score":{"name":"#altitude","objective":"vp.reg1"},"color":"red"},{"text":" Wpn:","color":"yellow"},{"nbt":"plane-info[6]","storage":"plane-datapack","color":"yellow"},{"text":" Ammo:{","color":"green"},{"nbt":"plane-info[1]","storage":"plane-datapack","color":"green","interpret":true},{"nbt":"plane-info[2]","storage":"plane-datapack","color":"green","interpret":true},{"nbt":"plane-info[3]","storage":"plane-datapack","color":"green","interpret":true},{"nbt":"plane-info[4]","storage":"plane-datapack","color":"green","interpret":true},{"text":"}","color":"green"}]

#失速してたら警告表示
execute if entity @s[tag=stall] run title @p[tag=controller] times 0 1 1
execute if entity @s[tag=stall] run title @p[tag=controller] title [{"text":"失速！！","color":"dark_red"}]

#墜落判定が出たら表示
execute if entity @s[tag=destroyed,tag=flying] run title @p[tag=controller] times 0 2 0
execute if entity @s[tag=destroyed,tag=flying] run title @p[tag=controller] title [{"text":"墜落！！操作不能","color":"dark_red"}]
