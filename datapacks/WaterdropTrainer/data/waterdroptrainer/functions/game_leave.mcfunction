# clear effects possigle given by the game
effect clear @p[tag=inGame] minecraft:speed
effect clear @p[tag=inGame] minecraft:slowness
effect clear @p[tag=inGame] minecraft:blindness
effect clear @p[tag=inGame] minecraft:nausea
effect clear @p[tag=inGame] minecraft:saturation

# restore default health
attribute @p[tag=inGame] minecraft:generic.max_health base set 20.0
effect give @p[tag=inGame] minecraft:instant_health 1 10

# remove bucket
clear @p[tag=inGame] minecraft:bucket
clear @p[tag=inGame] minecraft:water_bucket

execute as @e[tag=decor] run data modify entity @s CustomNameVisible set value 0
scoreboard objectives remove levelProgress
scoreboard objectives remove livesRemain
scoreboard objectives remove successCountLive
scoreboard objectives remove deaths

# back to lobby
tp @p[tag=inGame] 8 201.1 8 0 0
spawnpoint @p[tag=inGame] 8 202 8
# show heads for first time
execute unless entity @e[tag=global,scores={look_about_count=1..}] as @p[tag=inGame] at @s run tp @s ~ ~ ~ 180 0
scoreboard players add @e[tag=global,limit=1] look_about_count 1

tag @p[tag=inGame] remove inGame

function waterdroptrainer:light_select_1st
function waterdroptrainer:speed_select_normal
