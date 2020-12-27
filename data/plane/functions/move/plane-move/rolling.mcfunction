#> plane:move/plane-move/rolling
#
# 角度/速度スコアからベクトルを計算して機体のMotionに反映する
# 条件:plane-moveから実行 execute as @e[type=armor_stand,tag=plane-root,scores={speed=1..}] at @s run function plane:move/move
# 実行者：機体
# 利用可能タグスコア　スコア：#plane-id vp.reg1 

#> private
# @private
    #declare tag flying-executer #function実行者を示す
    #
    #declare score_holder #accelerate #加速度の最大値を示す
    #declare score_holder #accelerate-cor #爆弾装備などによる加速度の減少値を示す
    #declare score_holder #throttle #現在のスロットルを示す
    #declare score_holder #base-accelerate #現在の加速度を示す
    #declare score_holder #speed #現在の速度を示す
    #declare score_holder #cruise-speed #巡航速度を示す
    #declare score_holder #resistance #空気抵抗の基礎値を示す
    #declare score_holder #base-resistance #現在の空気抵抗を示す
    #declare score_holder #speedY #現在のY方向のベクトルを示す
    #declare score_holder #deaccelerate #角度による減速量の基礎値を示す
    #declare score_holder #base-deaccelerate #現在の角度による減速量を示す
    #declare score_holder #displacementX #現在のX方向の1tickの移動量を示す
    #declare score_holder #displacementZ #現在のX方向の1tickの移動量を示す

#実行者にタグ付け
tag @s add flying-executer

#### 基本加速量決定  #base-accelerate vp.reg1に代入される ####
scoreboard players operation #accelerate vp.input = @s vp.accelerate
scoreboard players operation #accelerate-cor vp.input = @s vp.acc-cor
scoreboard players operation #throttle vp.input = @s vp.throttle
function plane:move/plane-move/set-base-accelerate
scoreboard players operation #base-accelerate vp.reg1 = #base-accelerate vp.return

####減速量決定　#base-resistance vp.reg1に代入される ####
scoreboard players operation #speed vp.input = @s vp.speed
scoreboard players operation #cruise-speed vp.input = @s vp.cruise-speed
scoreboard players operation #resistance vp.input = @s vp.resistance
function plane:move/plane-move/set-base-resistance
scoreboard players operation #base-resistance vp.reg1 = #base-resistance vp.return

scoreboard players operation #speedY vp.input = @s vp.speedY
scoreboard players operation #deaccelerate vp.input = @s vp.deaccelerate
function plane:move/plane-move/set-base-deaccelerate
scoreboard players operation #base-deaccelerate vp.reg1 = #base-deaccelerate vp.return

#### speed決定 ####
scoreboard players operation @s vp.speed += #base-accelerate vp.reg1
scoreboard players operation @s vp.speed -= #base-resistance vp.reg1
#speedが0未満だったら0にする
scoreboard players set @s[scores={vp.speed=..-1}] vp.speed 0

#x方向ベクトル×speedをMotionに代入
scoreboard players operation #displacementX vp.reg1 = @s vp.speedX
scoreboard players operation #displacementX vp.reg1 *= @s vp.speed
execute store result storage plane-datapack temporary.Pos[0] double 0.00001 run scoreboard players operation #displacementX vp.reg1 /= #10 vp.Num

#Y方向ベクトルに0.05を代入
execute store result storage plane-datapack temporary.Pos[1] double -0.05 run scoreboard players get #1 vp.Num

#z方向ベクトル×speedをMotionに代入
scoreboard players operation #displacementZ vp.reg1 = @s vp.speedZ
scoreboard players operation #displacementZ vp.reg1 *= @s vp.speed
execute store result storage plane-datapack temporary.Pos[2] double 0.00001 run scoreboard players operation #displacementZ vp.reg1 /= #10 vp.Num

#作成したベクトルをMotionに代入
data modify entity @s Motion set from storage minecraft:plane-datapack temporary.Pos

#speedがtakeoff-speedを超えスロットル全開なら飛行状態に遷移
execute as @s[scores={vp.throttle=20..}] if score @s vp.takeoff-speed < @s vp.speed run function plane:move/plane-move/rolling/takeoff

#speedがpropeller-stopだったら停止モデル、propeller-startだったら滑走モデルに切り替え
function plane:move/plane-move/rolling/change-plpr-model

#音
scoreboard players set @s[scores={vp.sound=33..}] vp.sound 0
execute if entity @s[scores={vp.sound=0,vp.speed=1..}] at @s run playsound minecraft:plane.engine.recipro-rolling ambient @a ~ ~ ~ 1 1 1
scoreboard players operation @s vp.reg1 = #rand vp.rand
scoreboard players operation @s vp.reg1 %= #3 vp.Num
scoreboard players operation @s vp.sound += @s vp.reg1
scoreboard players add @s vp.sound 1
#speedが1になったらエンジン始動音を鳴らす
function plane:move/plane-move/rolling/engine-start-sound

#speedが0なら音停止
execute if entity @s[scores={vp.speed=..0}] at @s run stopsound @a[distance=..10] * minecraft:plane.engine.recipro-rolling

#登場者がいるか判定して、いないならスピードを下げる
execute at @s[tag=!has-rider] run scoreboard players remove @s[scores={vp.throttle=5..}] vp.throttle 5

#タグ解除
tag @s remove flying-executer
