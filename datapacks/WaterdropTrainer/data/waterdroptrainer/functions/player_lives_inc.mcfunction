scoreboard players remove @p[tag=inGame] success_count 5
scoreboard players add @p[tag=inGame] lives_remain 1
title @p[tag=inGame] actionbar {"text":"+1 live","color":"green"}
playsound minecraft:entity.player.levelup master @p[tag=inGame] ~ ~ ~ 200
