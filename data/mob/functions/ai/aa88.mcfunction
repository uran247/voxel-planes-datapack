#ai/aiから呼び出される
#実行者・座標はaa88

#### 実行者にタグ付け ####
tag @s add ai-executer

#### ターゲットにタグ付け ####
#タグ付けに成功したらreg1は1になる
scoreboard players set @s reg1 0
execute positioned ~-96 ~ ~-96 store success score @s reg1 run tag @p[dx=192,dy=1024,dz=192] add ai-target
execute at @p[tag=ai-target,scores={plane-id=1..}] run tag @e[tag=plane-root,limit=1,sort=nearest] add ai-target-plane

#### 発射 ####
execute as @s[scores={ammunition1=1..,w1-reload=..0,reg1=1..}] at @s run function mob:weapon/aa/aa88
#tellraw @p [{"nbt":"Rotation","entity":"@s"},{"nbt":"Rotation","entity":"@s"}]
#tellraw @p [{"score" : {"name":"@s", "objective":"ammunition1"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"w1-reload"}}, {"text":" "}, {"score" : {"name":"@s", "objective":"reg1"}}]
#reloadスコア減算
scoreboard players remove @s[scores={ammunition1=1..,w1-reload=1..}] w1-reload 1

#### 実行者タグ除去 ####
tag @s remove ai-executer
execute at @a[tag=ai-target] run tag @e[tag=ai-target-plane,distance=..20] remove ai-target-plane
tag @a[tag=ai-target] remove ai-target

