# reset death count to not match "after respawn" condition
scoreboard players set @p[tag=inGame,scores={deaths=1..}] deaths 0

# tp from dropping area to top
tp @p[tag=inGame,x=9,y=0,z=24,dx=5,dz=5,dy=255] 5 202.5 26 -90 0
# tp from respawn area to top
tp @p[tag=inGame,x=4,y=0,z=25,dx=3,dy=4,dz=3] 5 202.5 26 -90 0

function waterdroptrainer:player_effects

# remove old bucket and give new bucket
clear @p[tag=inGame] minecraft:bucket
clear @p[tag=inGame] minecraft:water_bucket
give @p[tag=inGame] minecraft:water_bucket{HideFlags:25,Enchantments:[{id:"minecraft:efficiency",lvl:1}],CanPlaceOn:["minecraft:stone","minecraft:obsidian","minecraft:fire","minecraft:lava","minecraft:smooth_stone_slab","minecraft:chest"]} 1
