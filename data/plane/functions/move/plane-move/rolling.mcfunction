#> plane:move/plane-move/rolling
#
# 角度/速度スコアからベクトルを計算して機体のMotionに反映する
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

#> private
# @private
    #declare tag flying-executer #function実行者を示す
    #
    #declare score_holder #displacementX #現在のX方向の1tickの移動量を示す
    #declare score_holder #displacementZ #現在のX方向の1tickの移動量を示す

#実行者にタグ付け
tag @s add flying-executer

# 基本加速量決定  #base-accelerate vp.reg1に代入される
scoreboard players operation #speed vp.input = @s vp.cruise-speed
scoreboard players operation #speed vp.input /= #2 vp.Num
scoreboard players operation #horse-power vp.input = @s vp.horse-power
scoreboard players operation #horse-power vp.input *= @s vp.engine
scoreboard players operation #thrust vp.input = @s vp.thrust
scoreboard players operation #thrust vp.input *= @s vp.engine
scoreboard players operation #weight vp.input = @s vp.weight
scoreboard players operation #weight vp.input += @s vp.add-weight 
scoreboard players operation #throttle vp.input = @s vp.throttle
function plane:move/plane-move/set-base-accelerate
scoreboard players operation #base-accelerate vp.reg1 = #base-accelerate vp.return

#tellraw @p [{"score" : {"name":"@s", "objective":"vp.engine"}}]

#減速量決定　#base-resistance vp.reg1に代入される
scoreboard players operation #speed vp.input = @s vp.speed
scoreboard players operation #max-speed vp.input = @s vp.max-speed
scoreboard players operation #resistance vp.input = @s vp.resistance
scoreboard players operation #energy-loss vp.input = @s vp.energy-loss
scoreboard players set #ang-z vp.input 0
function plane:move/plane-move/set-base-resistance
scoreboard players operation #base-resistance vp.reg1 = #base-resistance vp.return
#転がり抵抗加算(転がり抵抗係数0.125*9.8N*10000/400/0.7)
scoreboard players add #base-resistance vp.reg1 30

# speed決定 
scoreboard players operation @s vp.speed += #base-accelerate vp.reg1
scoreboard players operation @s vp.speed -= #base-resistance vp.reg1
#speedが0未満だったら0にする
scoreboard players set @s[scores={vp.speed=..-1}] vp.speed 0
#speedが最高速度を超えないようにする
execute if score @s vp.speed > @s vp.max-speed run scoreboard players operation @s vp.speed = @s vp.max-speed

#x方向ベクトル×speedをMotionに代入
scoreboard players operation #displacementX vp.reg1 = @s vp.speedX
scoreboard players operation #displacementX vp.reg1 *= @s vp.speed
execute store result storage minecraft:plane-datapack temporary.Pos[0] double 0.00001 run scoreboard players operation #displacementX vp.reg1 /= #12 vp.Num

#Y方向ベクトルに0.05を代入
execute store result storage minecraft:plane-datapack temporary.Pos[1] double -0.05 run scoreboard players get #1 vp.Num

#z方向ベクトル×speedをMotionに代入
scoreboard players operation #displacementZ vp.reg1 = @s vp.speedZ
scoreboard players operation #displacementZ vp.reg1 *= @s vp.speed
execute store result storage minecraft:plane-datapack temporary.Pos[2] double 0.00001 run scoreboard players operation #displacementZ vp.reg1 /= #12 vp.Num

#作成したベクトルをMotionに代入
data modify entity @s Motion set from storage minecraft:plane-datapack temporary.Pos

#speedがtakeoff-speedを超えスロットルが51%以上なら飛行状態に遷移
execute as @s[scores={vp.throttle=11..}] if score @s vp.takeoff-speed < @s vp.speed run function plane:move/plane-move/rolling/takeoff

#speedがpropeller-stopだったら停止モデル、propeller-startだったら滑走モデルに切り替え
function plane:move/plane-move/rolling/change-plpr-model

#音
scoreboard players set @s[scores={vp.sound=10..}] vp.sound 0
execute if entity @s[scores={vp.sound=1,vp.speed=1..}] at @s if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data.flight-model.engine{type:recipro} run playsound minecraft:plane.engine.recipro-rolling ambient @a ~ ~ ~ 2 1 0
execute if entity @s[scores={vp.sound=1,vp.speed=1..}] at @s if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data.flight-model.engine{type:jet} run playsound minecraft:plane.engine.jet-rolling ambient @a ~ ~ ~ 2 1 0
scoreboard players add @s vp.sound 1
#speedが1になったらエンジン始動音を鳴らす
function plane:move/plane-move/rolling/engine-start-sound

#
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].plane-data.flight-model.engine{type:recipro}

#speedが0なら音停止
execute if entity @s[scores={vp.speed=..0}] at @s run stopsound @a[distance=..10] * minecraft:plane.engine.recipro-rolling
execute if entity @s[scores={vp.speed=..0}] at @s run stopsound @a[distance=..10] * minecraft:plane.engine.jet-rolling

#登場者がいるか判定して、いないならスピードを下げる
execute at @s[tag=!has-rider,tag=!has-dummy-rider] run scoreboard players remove @s[scores={vp.throttle=5..}] vp.throttle 5

#タグ解除
tag @s remove flying-executer
