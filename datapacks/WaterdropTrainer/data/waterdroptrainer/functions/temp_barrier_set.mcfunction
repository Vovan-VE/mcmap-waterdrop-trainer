# Undocumented Respawn Immunity:
#
# https://bugs.mojang.com/browse/MC-153762?focusedCommentId=687536&page=com.atlassian.jira.plugin.system.issuetabpanels%3Acomment-tabpanel#comment-687536
#
# > This is due to respawn immunity – the player is unable to take any damage
# > whatsoever during a certain time frame after its death.
#
# So, now we have that wall temporary to prevent quick falsy waterdrop while
# immunity is active. Thank you, Minecraft :-/
setblock 0 195 24 minecraft:redstone_block
