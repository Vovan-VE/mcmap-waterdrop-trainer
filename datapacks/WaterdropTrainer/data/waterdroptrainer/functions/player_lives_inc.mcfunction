scoreboard players remove @p[tag=inGame] successCountLive 5
scoreboard players add @p[tag=inGame] livesRemain 1
title @p[tag=inGame] actionbar {"text":"+1 live","color":"green"}
playsound minecraft:entity.player.levelup master @p[tag=inGame] ~ ~ ~ 200
