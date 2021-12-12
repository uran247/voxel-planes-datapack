#> plane:summon/spawner-manager
#
# スポナーから召喚されたコウモリを検知して飛行機召喚
#
# @input
#   executer @e[type=bat,tag=plane-spawner]
#
# @within plane:**
#

#> private
# @private
    #declare tag a5m-spawner
    #declare tag d3a-spawner
    #declare tag ki43-spawner
    #declare tag ki21-spawner
    #declare tag a6m2-spawner
    #declare tag ki44-spawner
    #declare tag d4y2-spawner
    #declare tag j2m3-spawner
    #declare tag g4m1-spawner
    #declare tag n1k2-spawner
    #declare tag a6m5-spawner
    #declare tag ki49-spawner
    #declare tag ki61-spawner
    #declare tag re2005-spawner
    #declare tag f4u1-spawner
    #declare tag fw190d9-spawner
    #declare tag seafuryfb11-spawner
    #declare tag me262a1a-spawner
    #declare tag swordfish-spawner
    #declare tag spitfiremkix-spawner
    #declare tag fireflymkv-spawner
    #declare tag pe2-spawner
    #declare tag bf109g-spawner
    #declare tag ju87b-spawner
    #declare tag b17g-spawner
    #declare tag meteorf8-spawner
    #declare tag sbd3-spawner

execute at @s[tag=a5m-spawner] as @p run function plane-data:a5m/a5m
execute at @s[tag=d3a-spawner] as @p run function plane-data:d3a/d3a
execute at @s[tag=ki43-spawner] as @p run function plane-data:ki-43/ki-43
execute at @s[tag=ki21-spawner] as @p run function plane-data:ki-21/ki-21
execute at @s[tag=a6m2-spawner] as @p run function plane-data:a6m2/a6m2
execute at @s[tag=ki44-spawner] as @p run function plane-data:ki-44/ki-44
execute at @s[tag=d4y2-spawner] as @p run function plane-data:d4y2/d4y2
execute at @s[tag=j2m3-spawner] as @p run function plane-data:j2m3/j2m3
execute at @s[tag=g4m1-spawner] as @p run function plane-data:g4m1/g4m1
execute at @s[tag=n1k2-spawner] as @p run function plane-data:n1k2/n1k2
execute at @s[tag=a6m5-spawner] as @p run function plane-data:a6m5/a6m5
execute at @s[tag=ki49-spawner] as @p run function plane-data:ki-49/ki-49
execute at @s[tag=ki61-spawner] as @p run function plane-data:ki-61/ki-61
#execute at @s[tag=re2005-spawner] as @p run function plane-data:re2005/re2005
execute at @s[tag=f4u1-spawner] as @p run function plane-data:f4u-1/f4u1
execute at @s[tag=fw190d9-spawner] as @p run function plane-data:fw190d-9/fw190d9
execute at @s[tag=seafuryfb11-spawner] as @p run function plane-data:seafuryfb11/seafuryfb11
execute at @s[tag=me262a1a-spawner] as @p run function plane-data:me262a-1a/me262a1a
execute at @s[tag=swordfish-spawner] as @p run function plane-data:swordfish/swordfish
execute at @s[tag=spitfiremkix-spawner] as @p run function plane-data:spitfiremkix/spitfiremkix
execute at @s[tag=fireflymkv-spawner] as @p run function plane-data:fireflymkv/fireflymkv
execute at @s[tag=pe2-spawner] as @p run function plane-data:pe-2/pe-2
execute at @s[tag=bf109g-spawner] as @p run function plane-data:bf109g/bf109g
execute at @s[tag=ju87b-spawner] as @p run function plane-data:ju87b/ju87b
execute at @s[tag=p38l-spawner] as @p run function plane-data:p-38l/p38l
execute at @s[tag=b17g-spawner] as @p run function plane-data:b-17g/b-17g
execute at @s[tag=meteorf8-spawner] as @p run function plane-data:meteor-f8/meteorf8
execute at @s[tag=sbd3-spawner] as @p run function plane-data:sbd-3/sbd3

kill @s
