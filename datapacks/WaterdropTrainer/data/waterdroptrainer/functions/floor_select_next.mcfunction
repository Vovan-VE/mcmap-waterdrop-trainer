execute as @e[type=minecraft:armor_stand,tag=selectFloor,tag=isLastFloor,limit=1] run tag @s remove isLastFloor
execute as @e[type=minecraft:armor_stand,tag=selectFloor,limit=1] at @s if block ~-1 ~ ~ minecraft:bedrock run tag @s add isLastFloor
execute as @e[type=minecraft:armor_stand,tag=selectFloor,tag=!isLastFloor,limit=1] at @s run tp ~-1 ~ ~
execute as @e[type=minecraft:armor_stand,tag=selectFloor,tag=isLastFloor,limit=1] at @s run tp 15 201 16
