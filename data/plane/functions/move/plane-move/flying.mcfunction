#> plane:move/plane-move/flying
#
# 角度/速度スコアからベクトルを計算して機体の座標に反映する
# 失速判定と墜落判定をやる
#
# @input
#   executer @e[tag=plane-root,tag=flying,scores={speed=1..}]
#
# @within function plane:move/plane-move
    #declare score_holder #accelerate #加速度の最大値を示す
    #declare score_holder #accelerate-cor #爆弾装備などによる加速度の減少値を示す
    #declare score_holder #throttle #現在のスロットルを示す
    #declare score_holder #cruise-speed #巡航速度を示す
    #declare score_holder #resistance #空気抵抗の基礎値を示す
    #declare score_holder #speed #現在の速度を示す
    #declare score_holder #speedY #現在のY方向の単位ベクトルを示す
    #declare score_holder #deaccelerate #角度による減速量の基礎値を示す
    #declare score_holder #energy-loss #エネルギー減少係数を示す
    #declare score_holder #ang-z #ロール角を示す

#> private
# @private
    #declare tag flying-executer #function実行者を示す
    #
    #declare score_holder #displacementX #現在のX方向の1tickの移動量を示す
    #declare score_holder #displacementY #現在のY方向の1tickの移動量を示す
    #declare score_holder #displacementZ #現在のX方向の1tickの移動量を示す
    #declare score_holder #down-pitch #墜落時のピッチ下げ量を示す(ピッチ速度/2)

#実行者にタグ付け
tag @s add flying-executer

#### 基本加速量決定####
scoreboard players operation #accelerate vp.input = @s vp.accelerate
scoreboard players operation #accelerate-cor vp.input = @s vp.acc-cor
scoreboard players operation #throttle vp.input = @s vp.throttle
function plane:move/plane-move/set-base-accelerate
scoreboard players operation #base-accelerate vp.reg1 = #base-accelerate vp.return

####減速量決定####
scoreboard players operation #speed vp.input = @s vp.speed
scoreboard players operation #cruise-speed vp.input = @s vp.cruise-speed
scoreboard players operation #resistance vp.input = @s vp.resistance
scoreboard players operation #energy-loss vp.input = @s vp.energy-loss
scoreboard players operation #ang-z vp.input = @s vp.AngZ
function plane:move/plane-move/set-base-resistance
scoreboard players operation #base-resistance vp.reg1 = #base-resistance vp.return

#ピッチによって減速量調整
scoreboard players operation #speedY vp.input = @s vp.speedY
scoreboard players operation #resistance vp.input = @s vp.resistance
scoreboard players operation #deaccelerate vp.input = @s vp.deaccelerate
function plane:move/plane-move/set-base-deaccelerate
scoreboard players operation #base-deaccelerate vp.reg1 = #base-deaccelerate vp.return

#### speed決定 ####
#speed+#base-accelerate-#base-resistance-#base-deaccelerate
scoreboard players operation @s vp.speed += #base-accelerate vp.reg1
scoreboard players operation @s vp.speed -= #base-resistance vp.reg1
scoreboard players operation @s vp.speed -= #base-deaccelerate vp.reg1
#speedが0未満だったら0にする
scoreboard players set @s[scores={vp.speed=..-1}] vp.speed 0
#speedが最高速度を超えないようにする
execute if score @s vp.speed > @s vp.max-speed run scoreboard players operation @s vp.speed = @s vp.max-speed

#x方向ベクトル×speedを座標に代入
scoreboard players operation #displacementX vp.reg1 = @s vp.speedX
scoreboard players operation #displacementX vp.reg1 *= @s vp.speed
scoreboard players operation #displacementX vp.reg1 /= #100 vp.Num
execute store result storage plane-datapack temporary.Pos[0] double 0.0001 run scoreboard players operation @s vp.PosX += #displacementX vp.reg1

#y方向ベクトル×speedを座標に代入(失速の場合下降させる)
scoreboard players operation #displacementY vp.reg1 = @s vp.speedY
scoreboard players operation #displacementY vp.reg1 *= @s vp.speed
scoreboard players operation #displacementY vp.reg1 /= #100 vp.Num
execute as @s[tag=!stall] store result storage plane-datapack temporary.Pos[1] double 0.0001 run scoreboard players operation @s vp.PosY += #displacementY vp.reg1
execute as @s[tag=stall] store result storage plane-datapack temporary.Pos[1] double 0.0001 run scoreboard players remove @s vp.PosY 1250

#z方向ベクトル×speedを座標に代入
scoreboard players operation #displacementZ vp.reg1 = @s vp.speedZ
scoreboard players operation #displacementZ vp.reg1 *= @s vp.speed
scoreboard players operation #displacementZ vp.reg1 /= #100 vp.Num
execute store result storage plane-datapack temporary.Pos[2] double 0.0001 run scoreboard players operation @s vp.PosZ += #displacementZ vp.reg1

#作成した座標をPosに代入
data modify entity @s Pos set from storage minecraft:plane-datapack temporary.Pos

#speedが離陸速度未満だったら失速タグをつける
execute if score @s[tag=!stall] vp.speed < @s vp.stall-speed run tag @s add stall
execute if score @s[tag=stall] vp.speed >= @s vp.stall-speed run tag @s remove stall

#失速してたらピッチを下げる(ピッチ速度で下がる)
execute at @s[tag=stall,scores={vp.AngX=..9000}] run scoreboard players operation @s vp.reg1 = @s vp.pitch-speed
execute at @s[tag=stall,scores={vp.AngX=..9000}] run scoreboard players operation @s vp.AngX += @s vp.reg1

#墜落してたらピッチを下げる(ピッチ速度の2分の1の速度で下がる)
execute at @s[tag=destroyed,scores={vp.AngX=..9000}] run scoreboard players operation #down-pitch vp.reg1 = @s vp.pitch-speed
execute at @s[tag=destroyed,scores={vp.AngX=..9000}] run scoreboard players operation #down-pitch vp.reg1 /= #2 vp.Num
execute at @s[tag=destroyed,scores={vp.AngX=..9000}] run scoreboard players operation @s vp.AngX += #down-pitch vp.reg1

#登場者がいないならピッチを下げる
scoreboard players operation @s[tag=!has-rider,scores={vp.AngX=..9000}] vp.AngX += @s vp.pitch-speed

#音
scoreboard players set @s[scores={vp.sound=30..}] vp.sound 0
execute if entity @s[scores={vp.sound=0,vp.speed=-1..}] at @s run playsound minecraft:plane.engine.recipro-flying ambient @a ~ ~ ~ 1 1 1
scoreboard players operation @s vp.reg1 = #rand vp.rand
scoreboard players operation @s vp.reg1 %= #4 vp.Num
scoreboard players operation @s vp.sound += @s vp.reg1
#tellraw @p [{"score":{"name":"@s","objective":"vp.reg1"}}]

#飛行状態でブロックにめり込んだら爆発
execute at @s unless block ~ ~1 ~ air run playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 1 0
execute at @s unless block ~ ~1 ~ air run particle minecraft:explosion ~ ~ ~ 2 2 2 1 50 force
execute at @s unless block ~ ~1 ~ air run kill @s
execute at @s unless block ~ ~1 ~ air run kill @e[tag=target-parts,distance=..20]
execute at @s unless block ~ ~1 ~ air run kill @a[distance=..10]

#登場者無しで奈落に行ったらキル
execute at @s[tag=!has-rider] if entity @s[y=-50,dy=-100] run playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 1 0
execute at @s[tag=!has-rider] if entity @s[y=-50,dy=-100] run particle minecraft:explosion ~ ~ ~ 2 2 2 1 50 force
execute at @s[tag=!has-rider] if entity @s[y=-50,dy=-100] run kill @s
execute at @s[tag=!has-rider] if entity @s[y=-50,dy=-100] run kill @e[tag=target-parts,distance=..20]
execute at @s[tag=!has-rider] if entity @s[y=-50,dy=-100] run kill @a[distance=..10]

#speedがgear-pull-outだったら滑走モデル、gear-retractingだったら飛行モデルに切り替え(失速中の場合はギアを出さない)
function plane:move/plane-move/flying/change-gear-model

#1ブロック下が空気以外かつspeedがギア引き出し速度未満、throttlが50%未満ならならなら着陸モードへ
execute as @s[tag=!destroyed,scores={vp.throttle=..10,vp.AngX=..3000}] at @s if score @s vp.gear-po-max > @s vp.speed unless block ~ ~-1 ~ minecraft:air run function plane:move/plane-move/flying/landing
execute as @s[tag=!destroyed,scores={vp.throttle=..10,vp.AngX=..3000}] at @s if score @s vp.gear-po > @s vp.speed unless block ~ ~-1 ~ minecraft:air run function plane:move/plane-move/flying/landing

#タグ解除
tag @s remove flying-executer
