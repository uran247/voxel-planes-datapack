#> plane:equip/equip-manager
#
# 装備の変更処理
#
# @input
#   executer @e[tag=plane]
#
# @within plane:plane-manager
#

#航空機ごとの個別処理
#execute if entity @s[tag=d3a] run 
#execute if entity @s[tag=ki21] run 
execute if entity @s[tag=ki43] run function plane-data:ki-43/ki-43-equip
#execute if entity @s[tag=a5m] run 
execute if entity @s[tag=a6m2] run function plane-data:a6m2/a6m2-equip
execute if entity @s[tag=ki44] run function plane-data:ki-44/ki44-equip
execute if entity @s[tag=d4y2] run function plane-data:d4y2/d4y2-equip
#execute if entity @s[tag=j2m3] run 
execute if entity @s[tag=g4m1] run function plane-data:g4m1/g4m1-equip
execute if entity @s[tag=ki61] run function plane-data:ki-61/ki61-equip
execute if entity @s[tag=a6m5] run function plane-data:a6m5/a6m5-equip
execute if entity @s[tag=n1k2] run function plane-data:n1k2/n1k2-equip
execute if entity @s[tag=ki49] run function plane-data:ki-49/ki49-equip
execute if entity @s[tag=f4u1] run function plane-data:f4u-1/f4u1-equip
execute if entity @s[tag=fw190d9] run function plane-data:fw190d-9/fw190d9-equip
execute if entity @s[tag=seafuryfb11] run function plane-data:seafuryfb11/seafuryfb11-equip
execute if entity @s[tag=swordfish] run function plane-data:swordfish/swordfish-equip
execute if entity @s[tag=spitfiremkix] run function plane-data:spitfiremkix/spitfiremkix-equip
execute if entity @s[tag=fireflymkv] run function plane-data:fireflymkv/fireflymkv-equip
execute if entity @s[tag=pe2] run function plane-data:pe-2/pe2-equip
execute if entity @s[tag=bf109g] run function plane-data:bf109g/bf109g-equip
#execute if entity @s[tag=ju87b] run function plane-data:ju87b/ju87b-equip
execute if entity @s[tag=p38l] run function plane-data:p-38l/p38l-equip
execute if entity @s[tag=me262a1a] run function plane-data:me262a-1a/me262a1a-equip
execute if entity @s[tag=b17g] run function plane-data:b-17g/b17g-equip
execute if entity @s[tag=meteorf8] run function plane-data:meteor-f8/meteorf8-equip
#execute if entity @s[tag=sbd3] run function plane-data:sbd3/sbd3-equip
execute if entity @s[tag=p47d] run function plane-data:p47d/p47d-equip
execute if entity @s[tag=f86f] run function plane-data:f86f/f86f-equip
execute if entity @s[tag=p51d] run function plane-data:p51d/p51d-equip
execute if entity @s[tag=tbf] run function plane-data:tbf/tbf-equip
execute if entity @s[tag=p39n] run function plane-data:p39n/p39n-equip
