tag @p add inGame
spawnpoint @p 5 202.5 26
effect clear @p
attribute @p minecraft:generic.max_health modifier add e8782a43-f7f3-420e-833b-e778e68f9c89 generic.max_health -19.0 add
execute as @e[tag=decor] run data modify entity @s CustomNameVisible set value 1
scoreboard objectives add level_progress dummy "Level Progress"
scoreboard objectives add deaths deathCount "Deaths Count"
