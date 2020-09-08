attribute @p[tag=inGame] minecraft:generic.max_health modifier remove e8782a43-f7f3-420e-833b-e778e68f9c89
execute as @e[tag=decor] run data modify entity @s CustomNameVisible set value 0
scoreboard objectives remove level_progress
scoreboard objectives remove deaths
tp @p[tag=inGame] 8 201.1 8 180 0
spawnpoint @p[tag=inGame] 8 201.1 8
tag @p[tag=inGame] remove inGame
