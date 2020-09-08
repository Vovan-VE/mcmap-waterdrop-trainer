data merge entity @e[tag=labelLevelProgress,limit=1] {CustomNameVisible:false}
fill 14 204 25 14 204 27 minecraft:quartz_block

scoreboard players set @p lives_remain 3
scoreboard players set @p success_count 0
scoreboard objectives setdisplay sidebar lives_remain
