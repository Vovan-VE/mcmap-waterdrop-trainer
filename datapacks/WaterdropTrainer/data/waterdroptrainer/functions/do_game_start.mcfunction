function waterdroptrainer:game_join
function waterdroptrainer:level_progress_reset

execute unless block 10 202 12 minecraft:lever[powered=true] run function waterdroptrainer:mode_select_1st
execute if block 10 202 12 minecraft:lever[powered=true] run function waterdroptrainer:mode_select_random

tp @p[tag=inGame] 5 202.5 26 -90 0
function waterdroptrainer:level_effects_random
function waterdroptrainer:player_start

tellraw @a [{"color":"green","text":"Do three success waterdrops to win a level. Notice the `Level Progress` bar in front of you. It will reset when you fail."}]
tellraw @a [{"color":"green","text":"Look around to see all available controls. Feel free to change effects and environment for extra challenges."}]
