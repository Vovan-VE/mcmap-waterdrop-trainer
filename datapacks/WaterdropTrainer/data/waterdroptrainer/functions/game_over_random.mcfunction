title @p[tag=inGame] title {"text":"GAME OVER","color":"red"}
tellraw @a {"color":"green","text":"Total score: ","extra":[{"score":{"name":"*","objective":"scoreTotal"},"bold":true,"color":"white"}]}

execute as @p[tag=inGame] if score @s scoreTotal > @s scoreRecord run tellraw @s {"color":"green","text":"It's your new record!"}
execute as @p[tag=inGame] run scoreboard players operation @s scoreRecord > @s scoreTotal

function waterdroptrainer:game_leave
