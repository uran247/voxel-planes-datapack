#ai/aiから呼び出される
#実行者・座標はhowitzer152

#### 実行者にタグ付け ####
tag @s add ai-executer

#### 発射 ####
execute as @s[scores={ammunition1=1..,w1-reload=..0},tag=attack-active,tag=howitzer152] at @s run function mob:weapon/howitzer/howitzer152
#reloadスコア減算
execute if entity @s[scores={w1-reload=1..}] run function mob:weapon/util/cooltime-weapon
#tellraw @p [{"score" : {"name":"@s", "objective":"w1-reload"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"ammunition1"}}]

#### 実行者タグ除去 ####
tag @s remove ai-executer
