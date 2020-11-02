#execute as 視線主entity at 視線終端点entity run this
execute as @p at @s run tp 0-0-5-0-0 ^ ^ ^15 ~ ~
execute as 0-0-5-0-0 at @s as @p run function debug:test-chk-blk
#execute as @p at 0-0-5-0-0 run function debug:test-chk-blk
tp 0-0-5-0-0 0 1 0
