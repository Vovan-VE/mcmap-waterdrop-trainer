spawnpoint @p 5 1 26
execute as @e[tag=decor] run data modify entity @s CustomNameVisible set value 1
scoreboard objectives add level_progress dummy "Level Progress"
scoreboard objectives add deaths deathCount "Deaths Count"

function waterdroptrainer:game_joined
