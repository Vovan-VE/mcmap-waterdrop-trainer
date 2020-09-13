# Undocumented Respawn Immunity:
#
# https://bugs.mojang.com/browse/MC-153762?focusedCommentId=687536&page=com.atlassian.jira.plugin.system.issuetabpanels%3Acomment-tabpanel#comment-687536
#
# > This is due to respawn immunity – the player is unable to take any damage
# > whatsoever during a certain time frame after its death.
#
# So, now we have that wall temporary to prevent quick falsy waterdrop while
# immunity is active. Thank you, Minecraft :-/
fill 8 203 24 8 204 28 minecraft:glass_pane replace
setblock 8 202 26 minecraft:barrier replace
setblock 7 202 26 minecraft:birch_wall_sign[facing=west]{Color:"black",Text1:'{"text":"Please, wait..."}',Text2:'{"text":"2.5 s"}',Text3:'{"text":"Workaround to"}',Text4:'{"text":"respawn immunity"}'}

schedule function waterdroptrainer:temp_barrier_remove 2.5s
