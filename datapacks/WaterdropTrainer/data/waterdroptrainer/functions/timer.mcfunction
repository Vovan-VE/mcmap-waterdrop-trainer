# on death
execute if entity @p[tag=inGame,scores={deaths=1..}] run function waterdroptrainer:level_progress_reset
execute if entity @p[tag=inGame,scores={deaths=1..}] run function waterdroptrainer:player_start

# on success
execute as @p[tag=inGame,x=9,y=0,z=24,dx=5,dy=200,dz=5,nbt={OnGround:true}]
