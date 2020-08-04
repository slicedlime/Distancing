# Place one portal frame facing south

scoreboard players operation $eye dist_mem = $eyes dist_mem
scoreboard players operation $eye dist_mem %= $2 dist_x
scoreboard players operation $eyes dist_mem /= $2 dist_x

execute if score $dir dist_mem matches 0 if score $eye dist_mem matches 0 run setblock ~ ~ ~ end_portal_frame[eye=false,facing=south]
execute if score $dir dist_mem matches 0 if score $eye dist_mem matches 1 run setblock ~ ~ ~ end_portal_frame[eye=true,facing=south]

execute if score $dir dist_mem matches 1 if score $eye dist_mem matches 0 run setblock ~ ~ ~ end_portal_frame[eye=false,facing=east]
execute if score $dir dist_mem matches 1 if score $eye dist_mem matches 1 run setblock ~ ~ ~ end_portal_frame[eye=true,facing=east]

execute if score $dir dist_mem matches 2 if score $eye dist_mem matches 0 run setblock ~ ~ ~ end_portal_frame[eye=false,facing=north]
execute if score $dir dist_mem matches 2 if score $eye dist_mem matches 1 run setblock ~ ~ ~ end_portal_frame[eye=true,facing=north]

execute if score $dir dist_mem matches 3 if score $eye dist_mem matches 0 run setblock ~ ~ ~ end_portal_frame[eye=false,facing=west]
execute if score $dir dist_mem matches 3 if score $eye dist_mem matches 1 run setblock ~ ~ ~ end_portal_frame[eye=true,facing=west]
