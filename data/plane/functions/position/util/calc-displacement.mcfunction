#> plane:position/util/calc-displacement
#
# ロール角度に応じたオフセット計算 x:(x*cosθ-y*sinθ) y:(y*cosθ+x*sinθ)
# オフセット座標は^x ^y ^zになる
#
# @input
#   executer @e[tag=plane-parts]
#   score #sin vp.reg1
#   score #cos vp.reg1
#
# @output
#   score @s vp.new-offsetX
#   score @s vp.new-offsetY
#
# @public 

#> private
# @private
    #declare score_holder #sin-x-offsetX #X方向のオフセット
    #declare score_holder #sin-x-offsetY #Y方向のオフセット

#displacement算出
#tellraw @p [{"score" : {"name":"#cos", "objective":"vp.reg1"}}, {"text":" "}, {"score" : {"name":"#sin", "objective":"vp.reg1"}}]

scoreboard players operation @s vp.new-offsetX = @s vp.offsetX
scoreboard players operation @s vp.new-offsetY = @s vp.offsetY

scoreboard players operation @s vp.new-offsetX *= #cos vp.reg1
scoreboard players operation @s vp.new-offsetY *= #cos vp.reg1

scoreboard players operation #sin-x-offsetX vp.reg1 = @s vp.offsetX
scoreboard players operation #sin-x-offsetY vp.reg1 = @s vp.offsetY

scoreboard players operation #sin-x-offsetX vp.reg1 *= #sin vp.reg1
scoreboard players operation #sin-x-offsetY vp.reg1 *= #sin vp.reg1

scoreboard players operation @s vp.new-offsetX -= #sin-x-offsetY vp.reg1
scoreboard players operation @s vp.new-offsetY += #sin-x-offsetX vp.reg1

scoreboard players operation @s vp.new-offsetX /= #1000 vp.Num
scoreboard players operation @s vp.new-offsetY /= #1000 vp.Num

#対象がitem_displayかblock_displayの場合model-offset-yを足してtranslationによるずれを補正する
execute if entity @s[type=item_display] run scoreboard players operation @s vp.new-offsetY += #model-offset-y vp.input

#対象がblock_displayの場合model-offset-yと原点のずれを足してtranslationによるずれを補正する
execute if entity @s[type=block_display] run scoreboard players operation @s vp.new-offsetY += #model-offset-y vp.input
#execute if entity @s[type=block_display] store result score #block-origin vp.reg1 run data get entity @s transformation.scale[1] 250
#execute if entity @s[type=block_display] run scoreboard players operation @s vp.new-offsetY += #block-origin vp.reg1

#対象がinteractionの場合中心軸オフセットを足して、Z回転中心軸とエンティティ原点のずれを補正する
execute if entity @s[type=interaction] run scoreboard players operation @s vp.new-offsetY += #central-axis-offset-y vp.input
