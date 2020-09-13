scoreboard players add @p[tag=inGame] successCountLive 1
execute if entity @p[tag=inGame,scores={successCountLive=..4}] run title @p actionbar {"text":"","color":"green","extra":["Success Sequence ",{"score":{"name":"*","objective":"successCountLive"}}," of 5"]}
#execute if entity @p[tag=inGame,scores={successCountLive=..4}] run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 200 0.75
execute if entity @p[tag=inGame,scores={successCountLive=5..}] run function waterdroptrainer:player_lives_inc

scoreboard players add @p[tag=inGame] successCount 1
function waterdroptrainer:score_current_mode_init

function waterdroptrainer:do_level_win
