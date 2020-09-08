execute as @e[type=minecraft:armor_stand,tag=selectDepth,tag=isLastDepth,limit=1] run tag @s remove isLastDepth
execute as @e[type=minecraft:armor_stand,tag=selectDepth,limit=1] at @s if block ~-1 ~ ~ minecraft:bedrock run tag @s add isLastDepth
execute as @e[type=minecraft:armor_stand,tag=selectDepth,tag=!isLastDepth,limit=1] at @s run tp ~-1 ~ ~
#execute as @e[type=minecraft:armor_stand,tag=selectDepth,tag=isLastDepth,limit=1] at @s run tp 15 201 21
