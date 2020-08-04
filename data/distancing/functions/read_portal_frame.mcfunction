execute store result score $eye dist_mem if block ~ ~ ~ end_portal_frame[eye=true]
scoreboard players operation $eyes dist_mem *= $2 dist_x
scoreboard players operation $eyes dist_mem += $eye dist_mem
