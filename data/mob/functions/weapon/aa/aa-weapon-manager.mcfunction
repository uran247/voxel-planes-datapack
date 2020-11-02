#入力：entity @e[tag=ai-target-plane] or @p[tag=ai-target] executer: @e[tag=aa]

#召喚
summon minecraft:area_effect_cloud ~ ~1 ~ {NoGravity:1,Tags:[projectile,aagun,aagun-init,aagun-nohit,tracer-red,mob-aagun,entity-nohit],Duration:100,CustomName:"{\"text\":\"aagun-r\",\"color\":\"aqua\"}"}

#スコア付与
scoreboard players set @e[tag=aagun-init,distance=..5] age 25
scoreboard players operation @e[tag=aagun-init,distance=..5] speed = @s gun-speed
scoreboard players operation @e[tag=aagun-init,distance=..5] fuse-height = @s fuse-height
scoreboard players operation @e[tag=aagun-init,distance=..5] damage = @s fire-power
scoreboard players operation @e[tag=aagun-init,distance=..5] plane-id = @s plane-id
scoreboard players set @e[tag=aagun-init,distance=..5] offsetX 0
scoreboard players set @e[tag=aagun-init,distance=..5] offsetY 0
scoreboard players set @e[tag=aagun-init,distance=..5] offsetZ 0

#発射位置に移動
#execute at @s positioned ~ ~ ~ as @e[tag=aagun-init,distance=..5] run function plane:position/calc-offset

#向きを自機方向に向ける
execute if entity @e[tag=ai-target-plane,limit=1,sort=nearest] as @e[tag=aagun-init,limit=2,distance=..20] facing entity @e[tag=ai-target-plane,limit=1,sort=nearest] eyes positioned as @s run tp @s ~ ~ ~ ~ ~
execute unless entity @e[tag=ai-target-plane,limit=1,sort=nearest] as @e[tag=aagun-init,limit=2,distance=..20] facing entity @p[tag=ai-target] eyes positioned as @s run tp @s ~ ~ ~ ~ ~

####ランダムに角度変更####
#精度取得
scoreboard players operation #accuracy2x reg1 = @s accuracy
scoreboard players operation #accuracy2x reg1 *= #2 Num

###Y軸###
#乱数取得
function math:get-rand
#現在の角度取得
execute as @e[tag=aagun-init,distance=..5] store result score #angle reg1 run data get entity @s Rotation[0] 1
#-accuracy - accuracyの乱数生成
scoreboard players operation #ang-corecction reg1 = #rand return
scoreboard players operation #ang-corecction reg1 %= #accuracy2x reg1
execute as @e[tag=aagun-init,distance=..5] run scoreboard players operation #ang-corecction reg1 -= @s accuracy
#元々の角度に乱数を足す
scoreboard players operation #angle reg1 += #ang-corecction reg1
#-360 - 360に補正
execute if score #angle reg1 matches ..-360 run scoreboard players add #angle reg1 360
execute if score #angle reg1 matches 360.. run scoreboard players remove #angle reg1 360
#代入
execute as @e[tag=aagun-init,distance=..5] store result entity @s Rotation[0] float 1 run scoreboard players get #angle reg1

###X軸###
#乱数取得
function math:get-rand
#現在の角度取得
execute as @e[tag=aagun-init,distance=..5] store result score #angle reg1 run data get entity @s Rotation[1] 1
#-20 - 20の乱数生成
scoreboard players operation #ang-corecction reg1 = #rand return
scoreboard players operation #ang-corecction reg1 %= #accuracy2x reg1
execute as @e[tag=aagun-init,distance=..5] run scoreboard players operation #ang-corecction reg1 -= @s accuracy
#元々の角度に乱数を足す
scoreboard players operation #angle reg1 += #ang-corecction reg1
#-360 - 360に補正
execute if score #angle reg1 matches ..-360 run scoreboard players add #angle reg1 360
execute if score #angle reg1 matches 360.. run scoreboard players remove #angle reg1 360
#代入
execute as @e[tag=aagun-init,distance=..5] store result entity @s Rotation[1] float 1 run scoreboard players get #angle reg1

#x,y,z方向の速度スコア化
execute as @e[tag=aagun-init,distance=..5] run function math:vector
execute as @e[tag=aagun-init,distance=..5] run scoreboard players operation @s speedX *= @s speed
execute as @e[tag=aagun-init,distance=..5] run scoreboard players operation @s speedY *= @s speed
execute as @e[tag=aagun-init,distance=..5] run scoreboard players operation @s speedZ *= @s speed
scoreboard players operation @e[tag=aagun-init,distance=..5] speedX /= #10 Num
scoreboard players operation @e[tag=aagun-init,distance=..5] speedY /= #10 Num
scoreboard players operation @e[tag=aagun-init,distance=..5] speedZ /= #10 Num

#音
playsound minecraft:weapon.gun-88mm.fire block @a ~ ~ ~ 16 1.5

#発射したならreload時間設定
execute if entity @e[tag=aagun-init,distance=..20] run scoreboard players operation @s w1-reload = @s max-w1-reload
