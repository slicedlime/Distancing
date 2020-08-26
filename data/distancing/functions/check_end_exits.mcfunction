# Check for and replace end exit portals

execute if entity @s[tag=!dist_set_end_exit] run fill ~-2 63 -2 ~2 68 2 air
tag @s add dist_set_end_exit

setblock ~ 63 0 bedrock
setblock ~1 64 0 bedrock
setblock ~-1 64 0 bedrock
setblock ~ 64 1 bedrock
setblock ~ 64 -1 bedrock

execute store success score $success dist_mem run clone -3 0 -3 3 255 3 -3 0 -3 filtered minecraft:end_portal move

execute if score $success dist_mem matches 0 run setblock ~ 64 0 air
execute unless score $success dist_mem matches 0 run setblock ~ 64 0 end_portal
