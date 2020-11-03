#角度/速度スコアからベクトルを計算して機体のMotionに反映する
#失速判定と墜落判定をやる
#条件:tickで実行 execute as @e[type=armor_stand,tag=plane-root,scores={speed=1..}] at @s run function plane:move/move
#実行者：機体

#実行者にタグ付け
tag @s add flying-executer

#### 基本加速量決定####
scoreboard players operation #accelerate input = @s accelerate
scoreboard players operation #accelerate-cor input = @s accelerate-cor
scoreboard players operation #throttle input = @s throttle
function plane:move/plane-move/set-base-accelerate
scoreboard players operation #base-accelerate reg1 = #base-accelerate return

####減速量決定####
scoreboard players operation #speed input = @s speed
scoreboard players operation #cruise-speed input = @s cruise-speed
scoreboard players operation #resistance input = @s resistance
scoreboard players operation #energy-loss input = @s energy-loss
scoreboard players operation #ang-z input = @s AngZ
function plane:move/plane-move/set-base-resistance
scoreboard players operation #base-resistance reg1 = #base-resistance return

#ピッチによって減速量調整
scoreboard players operation #speedY input = @s speedY
scoreboard players operation #resistance input = @s resistance
scoreboard players operation #deaccelerate input = @s deaccelerate
function plane:move/plane-move/set-base-deaccelerate
scoreboard players operation #base-deaccelerate reg1 = #base-deaccelerate return

#### speed決定 ####
#speed+#base-accelerate-#base-resistance-#base-deaccelerate
scoreboard players operation @s speed += #base-accelerate reg1
scoreboard players operation @s speed -= #base-resistance reg1
scoreboard players operation @s speed -= #base-deaccelerate reg1
#speedが0未満だったら0にする
scoreboard players set @s[scores={speed=..-1}] speed 0
#speedが最高速度を超えないようにする
execute if score @s speed > @s max-speed run scoreboard players operation @s speed = @s max-speed

#x方向ベクトル×speedをPosに代入
scoreboard players operation #displacementX reg1 = @s speedX
scoreboard players operation #displacementX reg1 *= @s speed
scoreboard players operation #displacementX reg1 /= #100 Num
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation @s PosX += #displacementX reg1

#y方向ベクトル×speedをMotionに代入(滑走中の場合は実行しない、失速の場合下降させる)
scoreboard players operation #displacementY reg1 = @s speedY
scoreboard players operation #displacementY reg1 *= @s speed
scoreboard players operation #displacementY reg1 /= #100 Num
execute store result entity @s[tag=!stall] Pos[1] double 0.0001 run scoreboard players operation @s PosY += #displacementY reg1
execute store result entity @s[tag=stall] Pos[1] double 0.0001 run scoreboard players remove @s PosY 1250

#z方向ベクトル×speedをMotionに代入
scoreboard players operation #displacementZ reg1 = @s speedZ
scoreboard players operation #displacementZ reg1 *= @s speed
scoreboard players operation #displacementZ reg1 /= #100 Num
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation @s PosZ += #displacementZ reg1

#speedが離陸速度未満だったら失速タグをつける
execute if score @s[tag=!stall] speed < @s stall-speed run tag @s add stall
execute if score @s[tag=stall] speed >= @s stall-speed run tag @s remove stall

#失速してたらピッチを下げる(ピッチ速度で下がる)
execute at @s[tag=stall,scores={AngX=..9000}] run scoreboard players operation @s reg1 = @s pitch-speed
execute at @s[tag=stall,scores={AngX=..9000}] run scoreboard players operation @s AngX += @s reg1

#墜落してたらピッチを下げる(ピッチ速度の2分の1の速度で下がる)
execute at @s[tag=destroyed,scores={AngX=..9000}] run scoreboard players operation #down-pitch reg1 = @s pitch-speed
execute at @s[tag=destroyed,scores={AngX=..9000}] run scoreboard players operation #down-pitch reg1 /= #2 Num
execute at @s[tag=destroyed,scores={AngX=..9000}] run scoreboard players operation @s AngX += #down-pitch reg1

#登場者がいないならピッチを下げる
scoreboard players operation @s[scores={AngX=..9000},tag=!has-rider] AngX += @s pitch-speed

#音
scoreboard players set @s[scores={sound=30..}] sound 0
execute if entity @s[scores={sound=0,speed=-1..}] at @s run playsound minecraft:plane.engine.recipro-flying ambient @a ~ ~ ~ 1 1 1
scoreboard players operation @s reg1 = #rand rand
scoreboard players operation @s reg1 %= #4 Num
scoreboard players operation @s sound += @s reg1
#tellraw @p [{"score":{"name":"@s","objective":"reg1"}}]

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
execute as @s[tag=!destroyed,scores={throttle=..10,AngX=..3000}] at @s if score @s gear-pullout-max > @s speed unless block ~ ~-1 ~ minecraft:air run function plane:move/plane-move/flying/landing


#タグ解除
tag @s remove flying-executer
