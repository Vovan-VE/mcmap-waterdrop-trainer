execute unless block 10 202 12 minecraft:lever[powered=true] run function waterdroptrainer:mode_select_next
execute if block 10 202 12 minecraft:lever[powered=true] run function waterdroptrainer:mode_select_random

function waterdroptrainer:player_start
