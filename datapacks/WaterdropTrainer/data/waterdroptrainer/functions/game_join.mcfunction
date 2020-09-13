spawnpoint @p 5 1 26
recipe take @p *
execute as @e[tag=decor] run data modify entity @s CustomNameVisible set value 1
scoreboard objectives add levelProgress dummy "Level Progress"
scoreboard objectives add livesRemain dummy {"color":"red","text":"Lives Remain"}
scoreboard objectives add successCountLive dummy "Success Sequence for +1 live"
scoreboard objectives add successCount dummy "Success Sequence count"
scoreboard objectives add scoreTotal dummy "Total Score"
scoreboard objectives add deaths deathCount "Deaths Count"

execute unless block 10 202 12 minecraft:lever[powered=true] run function waterdroptrainer:game_type_init_ordered
execute if block 10 202 12 minecraft:lever[powered=true] run function waterdroptrainer:game_type_init_random

function waterdroptrainer:game_joined
