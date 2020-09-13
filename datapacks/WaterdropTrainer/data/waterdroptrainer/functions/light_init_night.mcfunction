time set midnight
fill 1 207 23 14 207 29 minecraft:air replace

execute as @e[tag=scoreFloor] run scoreboard players operation @s scoreCurrentMode = @s srcScoreAtNight
execute as @e[tag=scoreDepth] run scoreboard players operation @s scoreCurrentMode = @s srcScoreAtNight
