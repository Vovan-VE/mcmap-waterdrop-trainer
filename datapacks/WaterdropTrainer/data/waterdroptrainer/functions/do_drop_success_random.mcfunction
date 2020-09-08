scoreboard players add @p[tag=inGame] success_count 1
execute if entity @p[tag=inGame,scores={success_count=..4}] run title @p actionbar {"text":"","color":"green","extra":["Success Sequence ",{"score":{"name":"*","objective":"success_count"}}," of 5"]}
#execute if entity @p[tag=inGame,scores={success_count=..4}] run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 200 0.75
execute if entity @p[tag=inGame,scores={success_count=5..}] run function waterdroptrainer:player_lives_inc
function waterdroptrainer:do_level_win
