tag @p add inGame
#effect clear @p minecraft:speed
#effect clear @p minecraft:slowness
#effect clear @p minecraft:blindness
#effect clear @p minecraft:nausea

# 20hp - 12hp = 8hp
effect give vovan_ve minecraft:instant_damage 1 1
# max is 13hp
attribute @p minecraft:generic.max_health base set 13
# +6hp to reach 13hp actually
effect give vovan_ve minecraft:instant_health 1 2
# -12hp again to reach actually 1hp
effect give vovan_ve minecraft:instant_damage 1 1
# limit to 1hp
attribute @p minecraft:generic.max_health base set 1

#attribute @p minecraft:generic.max_health modifier remove e8782a43-f7f3-420e-833b-e778e68f9c89
#attribute @p minecraft:generic.max_health modifier add e8782a43-f7f3-420e-833b-e778e68f9c89 generic.max_health -19.0 add
#attribute @p minecraft:generic.max_health base set 1.0
