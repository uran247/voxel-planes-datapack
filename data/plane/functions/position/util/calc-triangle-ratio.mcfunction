#sinとcosを計算してhas-offsetに代入
#入力：entity: plane-root
#返り：score #sin vp.return, #cos vp.return

scoreboard players operation #angle vp.input1 = @s vp.AngZ
function math:sincos
#tellraw @p [{"score" : {"name":"#angle", "objective":"input1"}}]
