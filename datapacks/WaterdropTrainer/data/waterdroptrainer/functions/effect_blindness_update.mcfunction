execute if block 2 203 24 minecraft:lever[powered=true] run effect give @p[tag=inGame] minecraft:blindness 1000000 0 true
execute unless block 2 203 24 minecraft:lever[powered=true] run effect clear @p[tag=inGame] minecraft:blindness
