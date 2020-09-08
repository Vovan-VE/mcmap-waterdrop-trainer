function waterdroptrainer:level_progress_reset

# set flag block
setblock 1 0 0 minecraft:iron_block replace
execute unless block 10 202 12 minecraft:lever[powered=true] if entity @e[type=minecraft:armor_stand,tag=selectFloor,limit=1,x=9.0,y=200.75,z=16.0,dx=1.0,dy=2.5,dz=1.0] if entity @e[type=minecraft:armor_stand,tag=selectDepth,limit=1,x=6.0,y=200.75,z=21.0,dx=1.0,dy=2.5,dz=1.0] run setblock 1 0 0 minecraft:bedrock replace
# check flag block
execute if block 1 0 0 minecraft:bedrock run function waterdroptrainer:do_game_win
execute unless block 1 0 0 minecraft:bedrock run function waterdroptrainer:do_level_next
execute unless block 1 0 0 minecraft:bedrock playsound minecraft:entity.player.levelup master @p[tag=inGame] ~ ~ ~ 200
