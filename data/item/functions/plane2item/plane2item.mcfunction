#入力　entity:plane-root
#処理　機種に応じたplane2itemを実行

#同じIDのパーツ取得
scoreboard players operation #plane-id vp.reg1 = @s vp.plane-id
execute as @e[tag=plane] if score @s vp.plane-id = #plane-id vp.reg1 run tag @s add plane2item-plane-parts

#個別処理
execute as @s[tag=a5m-root] at @s run function plane-data:a5m/a5m-2-item
execute as @s[tag=ki43-root] at @s run function plane-data:ki-43/ki43-2-item
execute as @s[tag=ki21-root] at @s run function plane-data:ki-21/ki21-2-item
execute as @s[tag=d3a-root] at @s run function plane-data:d3a/d3a-2-item
execute as @s[tag=a6m2-root] at @s run function plane-data:a6m2/a6m2-2-item
execute as @s[tag=ki44-root] at @s run function plane-data:ki-44/ki44-2-item
execute as @s[tag=d4y2-root] at @s run function plane-data:d4y2/d4y2-2-item
execute as @s[tag=j2m3-root] at @s run function plane-data:j2m3/j2m3-2-item
execute as @s[tag=g4m1-root] at @s run function plane-data:g4m1/g4m1-2-item
execute as @s[tag=n1k2-root] at @s run function plane-data:n1k2/n1k2-2-item
execute as @s[tag=a6m5-root] at @s run function plane-data:a6m5/a6m5-2-item
execute as @s[tag=ki61-root] at @s run function plane-data:ki-61/ki61-2-item
execute as @s[tag=ki49-root] at @s run function plane-data:ki-49/ki49-2-item
execute as @s[tag=f4u1-root] at @s run function plane-data:f4u-1/f4u1-2-item

#ロバチェスト内のアイテム放出
data merge block 0 1 0 {Items:[]}
data modify block 0 1 0 Items set from entity @e[tag=plane2item-plane-parts,tag=plane-seat,type=minecraft:donkey,limit=1] Items
execute at @s run loot spawn ~ ~ ~ mine 0 1 0 air{load:1b}
data merge block 0 1 0 {Items:[]}

#キル
execute as @e[tag=plane2item-plane-parts] at @s run tp @s ~ -40 ~
kill @e[tag=plane2item-plane-parts]
kill @s 