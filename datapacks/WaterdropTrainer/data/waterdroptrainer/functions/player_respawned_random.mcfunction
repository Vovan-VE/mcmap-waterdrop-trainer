scoreboard players set @p[tag=inGame] successCountLive 0
scoreboard players remove @p[tag=inGame] livesRemain 1
execute if entity @p[tag=inGame,scores={livesRemain=1..}] run function waterdroptrainer:player_respawned_random_continue
execute if entity @p[tag=inGame,scores={livesRemain=0}] run function waterdroptrainer:game_over_random
