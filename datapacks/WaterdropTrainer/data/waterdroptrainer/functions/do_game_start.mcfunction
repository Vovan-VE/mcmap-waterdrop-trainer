function waterdroptrainer:game_join
function waterdroptrainer:level_progress_reset

execute unless block 10 202 12 minecraft:lever[powered=true] run function waterdroptrainer:mode_select_1st
execute if block 10 202 12 minecraft:lever[powered=true] run function waterdroptrainer:mode_select_random

tp @p[tag=inGame] 5 202.5 26 -90 0
function waterdroptrainer:player_start
