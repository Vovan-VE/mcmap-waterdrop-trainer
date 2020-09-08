function waterdroptrainer:level_progress_reset

# set flag block
setblock 1 0 0 minecraft:iron_block replace
execute unless block 10 202 12 minecraft:lever[powered=true] at @e[type=minecraft:armor_stand,tag=selectFloor,limit=1] align xyz if block ~-1 ~ ~ minecraft:bedrock at @e[type=minecraft:armor_stand,tag=selectDepth,limit=1] align xyz if block ~-1 ~ ~ minecraft:bedrock run setblock 1 0 0 minecraft:bedrock replace
# check flag block
execute if block 1 0 0 minecraft:bedrock run function waterdroptrainer:do_game_win
execute unless block 1 0 0 minecraft:bedrock run function waterdroptrainer:do_level_next
execute unless block 1 0 0 minecraft:bedrock run playsound minecraft:entity.player.levelup master @p[tag=inGame] ~ ~ ~ 200
