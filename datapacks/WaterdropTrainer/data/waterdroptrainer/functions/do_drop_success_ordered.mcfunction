function waterdroptrainer:level_progress_inc
execute if entity @p[tag=inGame,scores={level_progress=..2}] run function waterdroptrainer:do_level_continue
execute if entity @p[tag=inGame,scores={level_progress=3..}] run function waterdroptrainer:do_level_win
