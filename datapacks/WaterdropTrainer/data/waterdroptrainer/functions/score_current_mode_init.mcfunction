scoreboard players set @e[tag=global] scoreCurrentMode 0

# + score for current floor
execute at @e[tag=selectFloor,limit=1] run scoreboard players operation @e[tag=global] scoreCurrentMode += @e[tag=scoreFloor,sort=nearest,limit=1] scoreCurrentMode

# + score for current depth
execute at @e[tag=selectDepth,limit=1] run scoreboard players operation @e[tag=global] scoreCurrentMode += @e[tag=scoreDepth,sort=nearest,limit=1] scoreCurrentMode

# + score for current speed
execute at @e[tag=selectSpeed,limit=1] run scoreboard players operation @e[tag=global] scoreCurrentMode += @e[tag=scoreSpeed,sort=nearest,limit=1] scoreCurrentMode

# + score for nausea
execute if block 2 203 28 minecraft:lever[powered=true] at @e[tag=selectDepth,limit=1] run scoreboard players operation @e[tag=global] scoreCurrentMode += @e[tag=scoreDepth,sort=nearest,limit=1] srcScoreNausea

# + score for blindness
execute if block 2 203 24 minecraft:lever[powered=true] at @e[tag=selectDepth,limit=1] run scoreboard players operation @e[tag=global] scoreCurrentMode += @e[tag=scoreDepth,sort=nearest,limit=1] srcScoreBlindn

#tellraw @a ["Level score: ",{"score":{"name":"@e[tag=global]","objective":"scoreCurrentMode"},"bold":true}]
