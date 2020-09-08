tag @p add inGame

# Reaching 1 of 1 hp without MC-19690
#
# status: 20 of 20hp
# damage by 12hp:
effect give @p minecraft:instant_damage 1 1
# status: 8 of 20hp
# set max to 13hp:
attribute @p minecraft:generic.max_health base set 13
# status: 8 of 13hp
# health to reach max:
effect give @p minecraft:instant_health 1 2
# status: 13 of 13hp
# damage by 12hp:
effect give @p minecraft:instant_damage 1 1
# status: 1 of 13hp
# set max to 1hp:
attribute @p minecraft:generic.max_health base set 1
# status: 1 of 1hp
