#ai/aiから呼び出される
#実行者・座標はaa

#### 実行者にタグ付け ####
tag @s add ai-executer

#### ターゲットにタグ付け ####
#タグ付けに成功したらreg1は1になる
function mob:ai/ai/aa/set-target

#### 発射 ####
execute as @s[scores={ammunition1=1..,w1-reload=..0,reg1=1..}] at @s run function mob:weapon/aa/aa-weapon-manager
#tellraw @p [{"nbt":"Rotation","entity":"@s"},{"nbt":"Rotation","entity":"@s"}]
#tellraw @p [{"score" : {"name":"@s", "objective":"ammunition1"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"w1-reload"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"reg1"}}]
#reloadスコア減算
scoreboard players remove @s[scores={ammunition1=1..,w1-reload=1..}] w1-reload 1

#### 実行者タグ除去 ####
tag @s remove ai-executer
execute at @a[tag=ai-target] run tag @e[tag=ai-target-plane,distance=..20] remove ai-target-plane
tag @a[tag=ai-target] remove ai-target

