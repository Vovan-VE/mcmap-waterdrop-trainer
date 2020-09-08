scoreboard players set @p[tag=inGame] success_count 0
scoreboard players remove @p[tag=inGame] lives_remain 1
execute if entity @p[tag=inGame,scores={lives_remain=1..}] run function waterdroptrainer:player_respawned_random_continue
execute if entity @p[tag=inGame,scores={lives_remain=0}] run function waterdroptrainer:game_over_random
