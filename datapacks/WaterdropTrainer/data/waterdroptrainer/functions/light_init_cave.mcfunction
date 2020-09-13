fill 1 207 23 14 207 29 minecraft:quartz_block replace
setblock 3 207 26 minecraft:glowstone replace
time set 15000

execute as @e[tag=scoreFloor] run scoreboard players operation @s scoreCurrentMode = @s srcScoreAtCave
execute as @e[tag=scoreDepth] run scoreboard players operation @s scoreCurrentMode = @s srcScoreAtCave
