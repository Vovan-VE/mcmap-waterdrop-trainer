function waterdroptrainer:floor_random_cell
fill 9 191 16 13 191 20 minecraft:air replace minecraft:stone
execute as @e[type=minecraft:armor_stand,tag=selectFloorCell] at @s align xyz run setblock ~ 191 ~ minecraft:stone replace
