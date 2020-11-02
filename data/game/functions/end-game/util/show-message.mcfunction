#クリアタイム確認
scoreboard players operation #time reg1 = #game time
scoreboard players operation #time reg1 /= #20 Num

title @s times 20 80 20
execute if score #clear-flag clear-score matches 1 as @a at @s run title @a subtitle [{"text":"クリアタイム:","color":"yellow","bold":true,"underlined":true},{"score" : {"name":"#time", "objective":"reg1"}},{"text":"秒:","color":"yellow","bold":true,"underlined":true}]
execute if score #clear-flag clear-score matches 1 as @a at @s run title @a title {"text":"ステージクリア！！","color":"yellow","bold":true,"underlined":true}
execute if score #clear-flag clear-score matches 2 as @a at @s run title @a title {"text":"ゲームオーバー","color":"yellow","bold":true,"underlined":true}
