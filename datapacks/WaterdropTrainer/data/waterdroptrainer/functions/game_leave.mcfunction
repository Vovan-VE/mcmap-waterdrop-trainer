effect clear @p[tag=inGame] minecraft:speed
effect clear @p[tag=inGame] minecraft:slowness
effect clear @p[tag=inGame] minecraft:blindness
effect clear @p[tag=inGame] minecraft:nausea
effect clear @p[tag=inGame] minecraft:saturation
effect clear @p[tag=inGame] minecraft:poison
#attribute @p[tag=inGame] minecraft:generic.max_health modifier remove e8782a43-f7f3-420e-833b-e778e68f9c89
attribute @p[tag=inGame] minecraft:generic.max_health base set 20.0
effect give @p[tag=inGame] minecraft:instant_health 1 10
clear @p[tag=inGame] minecraft:bucket
clear @p[tag=inGame] minecraft:water_bucket
execute as @e[tag=decor] run data modify entity @s CustomNameVisible set value 0
scoreboard objectives remove level_progress
scoreboard objectives remove deaths
tp @p[tag=inGame] 8 201.1 8 180 0
spawnpoint @p[tag=inGame] 8 202 8
tag @p[tag=inGame] remove inGame
