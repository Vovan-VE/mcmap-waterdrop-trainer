# update currrent mode score with extra bonus for success sequence
#
#   # *1.0, *1.1, *1.2, ...
#   current *= 1 + (count - 1) / 10
#
# However due to integer calculations we need to do it in another way:
#
#   x = count     # 1, 2, 3, ...
#   x -= 1        # 0, 1, 2, ...
#   x *= current  # 0, 1*current, 2*current, ...
#   x /= 10       # 0, floor(current/10), floor(2*current/10), ...
#   # ready
#   current += x  # current+0, current+floor(current/10), current+floor(2*current/10), ...
#     # which is  # current, floor(current + current/10), floor(current + 2*current/10), ...
#     # which is  # current, floor(current * (1 + 1/10)), floor(current * (1 + 2/10)), ...
#     # which is  # current, floor(current * 1.1), floor(current * 1.2), ...
#
# Here assume `x` to be `srcScoreAtCave` of @e[tag=global]
#
# Here we go
#
# (Very ugly programming language. Why not to use any wellknown syntax either of
# any popular programming language (Shell for example) or any kind of human
# friendly language? Why such a mess?)

# x = count
scoreboard players operation @e[tag=global] srcScoreAtCave = @p[tag=inGame] successCount

# x -= 1
scoreboard players remove @e[tag=global] srcScoreAtCave 1

# x *= current
scoreboard players operation @e[tag=global] srcScoreAtCave *= @e[tag=global] scoreCurrentMode

# x /= 10, but const cannot be used! Why? So, using `srcScoreAtNight` as temp var
scoreboard players set @e[tag=global] srcScoreAtNight 10
scoreboard players operation @e[tag=global] srcScoreAtCave /= @e[tag=global] srcScoreAtNight
scoreboard players reset @e[tag=global] srcScoreAtNight

# current += x
scoreboard players operation @e[tag=global] scoreCurrentMode += @e[tag=global] srcScoreAtCave

# reset x
scoreboard players reset @e[tag=global] srcScoreAtCave

#tellraw @a ["Current mode score: ",{"score":{"name":"@e[tag=global]","objective":"scoreCurrentMode"},"bold":true}," (sequence = ",{"score":{"name":"@p[tag=inGame]","objective":"successCount"},"bold":true},")"]
