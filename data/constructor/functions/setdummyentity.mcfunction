#> constructor:setdummyentity
#
# @public
    #declare tag block-checker

#1-3:vector 4:block check 5:ai angle check 6:calc offset 7,8,9:check block a: block check b:entity check

execute in overworld run forceload add 0 0
execute in the_nether run forceload add 0 0
execute in the_end run forceload add 0 0
execute as @a at @s run forceload add 0 0

kill @e[type=marker,tag=block-checker]
kill @e[type=marker,tag=dummy-entity]
#0-0-0-0-1: ベクトル計算、スポーンチャンクから出ないようにする
summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,1]} 
#0-0-0-0-2,3: オフセットチェック、スポーンチャンクから出ないようにする
summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,2]}
summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,3]}
#0-0-0-0-4: 特定位置に移動してマークにする用、どこにでも移動しうる
summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,4]}
#0-0-0-0-5: 位置計算用、スポーンチャンクから出ないようにする
summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,5]}
#0-0-0-0-6: オフセットチェック、スポーンチャンクから出ないようにする
summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,6]}
#0-0-0-0-7,8: execute再帰用、スポーンチャンクから出ないようにする
summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,7]}
summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,8]}
#0-0-0-0-9,a: 爆弾照準用、どこにでも移動しうる
summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,9]}
summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,10]}
#近接信管系の当たり判定認識用、どこにでも移動しうる
summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity],UUID:[I;0,0,0,11]}
#0-0-0-0-c: 疑似太陽
summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity,dummy-sun],UUID:[I;0,0,0,12]}

#block検出用　何処にでも移動しうる
summon minecraft:marker 0.0 1.0 0.0 {Tags:[entity-nohit,dummy-entity,block-checker]}

kill @e[type=marker,tag=Trigonometric]
kill @e[type=marker,tag=Trigonometric2]
summon minecraft:marker -0.5 0 -0.5 {Tags:[Trigonometric],UUID:[I;0,0,0,32]}
summon minecraft:marker 0.0 0.0 0.0 {Tags:[Trigonometric2],UUID:[I;0,0,0,33]}

execute in overworld run setblock 0 1 0 shulker_box
execute in the_nether run setblock 0 1 0 shulker_box
execute in the_end run setblock 0 1 0 shulker_box
execute as @a at @s run setblock 0 1 0 shulker_box
