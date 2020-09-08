fill 14 204 25 14 204 27 minecraft:light_gray_concrete
execute if entity @p[tag=inGame,scores={level_progress=1..}] run setblock 14 204 25 minecraft:lime_concrete replace
execute if entity @p[tag=inGame,scores={level_progress=2..}] run setblock 14 204 26 minecraft:lime_concrete replace
execute if entity @p[tag=inGame,scores={level_progress=3..}] run setblock 14 204 27 minecraft:lime_concrete replace
