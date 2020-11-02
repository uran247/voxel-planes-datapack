#sinとcosを計算してhas-offsetに代入
#入力：entity: plane-root
#返り：score #sin return, #cos return

scoreboard players operation #angle input1 = @s AngZ
function math:sincos
#tellraw @p [{"score" : {"name":"#angle", "objective":"input1"}}]
