spawnpoint @p 5 1 26
recipe take @p *
execute as @e[tag=decor] run data modify entity @s CustomNameVisible set value 1
scoreboard objectives add level_progress dummy "Level Progress"
scoreboard objectives add lives_remain dummy {"color":"red","text":"Lives Remain"}
scoreboard objectives add success_count dummy {"color":"green","text":"Success Sequence"}
scoreboard objectives add deaths deathCount "Deaths Count"

execute unless block 10 202 12 minecraft:lever[powered=true] run function waterdroptrainer:game_type_init_ordered
execute if block 10 202 12 minecraft:lever[powered=true] run function waterdroptrainer:game_type_init_random

function waterdroptrainer:game_joined
