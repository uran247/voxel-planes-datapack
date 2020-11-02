scoreboard players add #repeat-now bgm-repeat 1
execute if score #bunretsu-max bgm-repeat < #repeat-now bgm-repeat run function bgm:bunretsu/play
execute if score #jonny-max bgm-repeat < #repeat-now bgm-repeat run function bgm:jonny/play

#tellraw @p [{"score" : {"name":"#bunretsu-max", "objective":"bgm-repeat"}}, {"text":" "}, {"score" : {"name":"#repeat-now", "objective":"bgm-repeat"}}]
