# Sometimes some redstone blocks can stuck in world and
# hangup underlying command blocks in active state.
# I suppose this happenes due to async commands execution when
# two or more different things run in parallel. I don't want
# to invent and setup centralized mechanism to reflect events loop
# from traditional programming.
#
# Remove possible stucked redstone blocks in possible artive area.
fill 0 188 15 15 204 29 minecraft:iron_block replace minecraft:redstone_block
