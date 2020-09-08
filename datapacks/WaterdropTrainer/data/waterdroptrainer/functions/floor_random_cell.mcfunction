# select random X
execute at @e[type=minecraft:armor_stand,tag=selectFloorCellX,sort=random,limit=1] align xyz run setblock ~ ~-1 ~1 minecraft:redstone_block replace
# select random Z
execute at @e[type=minecraft:armor_stand,tag=selectFloorCellZ,sort=random,limit=1] align xyz run setblock ~1 ~-1 ~ minecraft:redstone_block replace
