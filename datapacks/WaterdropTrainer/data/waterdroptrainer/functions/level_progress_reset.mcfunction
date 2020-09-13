scoreboard players reset @p[tag=inGame] levelProgress
execute unless block 10 202 12 minecraft:lever[powered=true] run function waterdroptrainer:level_progress_update_bar
