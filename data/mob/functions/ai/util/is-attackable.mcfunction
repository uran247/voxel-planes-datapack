#処理：攻撃可能か決定
#入力：entity: attacker entity: ai-target
#返り：タグ：@s attackable

#attackable除去
tag @s remove attackable

#ターゲット候補セット
execute if entity @s[scores={sight-range=100}] as @a[distance=..100,tag=ai-target] positioned ^ ^ ^200 if entity @s[distance=..200] run tag @s add attack-target-candidate

#射撃可能か判定
execute if entity @s[scores={fire-angle=1}] as @p[tag=attack-target-candidate] rotated ~1 ~ positioned ^-500 ^ ^150 if entity @s[distance=..500] run tag @s remove attack-target-candidate
execute if entity @s[scores={fire-angle=1}] as @p[tag=attack-target-candidate] rotated ~-1 ~ positioned ^500 ^ ^150 if entity @s[distance=..500] run tag @s remove attack-target-candidate
execute if entity @s[scores={fire-angle=5}] as @p[tag=attack-target-candidate] rotated ~5 ~ positioned ^-500 ^ ^150 if entity @s[distance=..500] run tag @s remove attack-target-candidate
execute if entity @s[scores={fire-angle=5}] as @p[tag=attack-target-candidate] rotated ~-5 ~ positioned ^500 ^ ^150 if entity @s[distance=..500] run tag @s remove attack-target-candidate
execute if entity @s[scores={fire-angle=15}] as @p[tag=attack-target-candidate] rotated ~15 ~ positioned ^-500 ^ ^150 if entity @s[distance=..500] run tag @s remove attack-target-candidate
execute if entity @s[scores={fire-angle=15}] as @p[tag=attack-target-candidate] rotated ~-15 ~ positioned ^500 ^ ^150 if entity @s[distance=..500] run tag @s remove attack-target-candidate

#タグ付与
execute if entity @s[scores={fire-angle=1..}] if entity @p[tag=attack-target-candidate] run tag @s add attackable
tag @p[tag=attack-target-candidate] remove attack-target-candidate
