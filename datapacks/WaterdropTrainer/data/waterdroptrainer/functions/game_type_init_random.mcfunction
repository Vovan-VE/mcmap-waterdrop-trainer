data merge entity @e[tag=labelLevelProgress,limit=1] {CustomNameVisible:false}
fill 14 204 25 14 204 27 minecraft:quartz_block

scoreboard players set @p livesRemain 3
scoreboard players set @p successCountLive 0
scoreboard players set @p successCount 0
scoreboard players set @p scoreTotal 0
scoreboard objectives setdisplay sidebar livesRemain

tellraw @a {"color":"green","text":"Each success waterdrop will give you a score points depending of it's difficulty. The more waterdrops you do in sequence without fails the more bonus multiplier does grow for next level (1.0, 1.1, 1.2, etc.). Failed waterdrop will reset the multiplier."}
