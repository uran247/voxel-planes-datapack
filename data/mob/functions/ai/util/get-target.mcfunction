#処理：攻撃対象を決定
#入力：entity: attacker 
#返り：スコア：@e[executer] target-planeid タグ：@e[taget] ai-target, @e[target-plane] ai-target-plane

#ターゲット候補セット
execute if entity @s[scores={sight-range=100}] as @a[distance=..100] positioned ^ ^ ^200 if entity @s[distance=..200] run tag @s add ai-target-candidate

#対象が飛行機の場合しばらく記録
execute if entity @p[tag=ai-target-candidate,scores={plane-id=1..}] run scoreboard players operation @s target-planeid = @p[tag=ai-target-candidate,scores={plane-id=1..}] plane-id
execute if entity @p[tag=ai-target-candidate,scores={plane-id=1..}] run scoreboard players operation @s forget-time = @s max-forget-time
execute if entity @p[tag=ai-target-candidate,scores={plane-id=1..}] unless entity @s[tag=!has-rider,distance=..3] run scoreboard players operation @s forget-time = @s min-forget-time

#ターゲットにタグ付け
execute at @s as @a if score @s plane-id = @e[tag=ai-executer,distance=..1,limit=1] target-planeid run tag @s add ai-target
execute at @p[tag=ai-target,scores={plane-id=1..}] run tag @e[tag=plane-root,limit=1,sort=nearest] add ai-target-plane
execute at @s unless entity @a[tag=ai-target] run tag @p[tag=ai-target-candidate] add ai-target

#一時タグ削除
tag @a[tag=ai-target-candidate] remove ai-target-candidate
