#クリアタイム確認
scoreboard players operation #time reg1 = #game time
scoreboard players operation #time reg1 /= #20 Num

title @a times 20 80 20
title @a subtitle [{"text":"クリアタイム:","color":"yellow","bold":true},{"score" : {"name":"#time", "objective":"reg1"}},{"text":"秒","color":"yellow","bold":true}]
title @a title {"text":"ステージクリア！！","color":"yellow","bold":true,"underlined":true}
