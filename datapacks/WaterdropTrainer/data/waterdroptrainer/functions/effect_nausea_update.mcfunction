execute if block 2 203 28 minecraft:lever[powered=true] run effect give @p[tag=inGame] minecraft:nausea 1000000 0 true
execute unless block 2 203 28 minecraft:lever[powered=true] run effect clear @p[tag=inGame] minecraft:nausea
