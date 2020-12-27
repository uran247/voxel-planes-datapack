#入力　score: #sin vp.reg1　#cos vp.reg1 entity: @e[tag=gun-init] position: @e[tag=plane-root]
#処理：銃弾の位置移動、向き変更、速度スコア化

#発射位置に移動
function plane:position/util/calc-displacement
function plane:position/calc-offset
function plane:position/util/move-parts

#x,y,z方向の速度スコア化
function math:vector
scoreboard players operation @s vp.speedX *= @s vp.speed
scoreboard players operation @s vp.speedY *= @s vp.speed
scoreboard players operation @s vp.speedZ *= @s vp.speed
scoreboard players operation @s vp.speedX /= #10 vp.Num
scoreboard players operation @s vp.speedY /= #10 vp.Num
scoreboard players operation @s vp.speedZ /= #10 vp.Num
