# Create a portal for a player

scoreboard players operation @s dist_eyes > * dist_eyes
scoreboard players operation $eyes dist_mem = @s dist_eyes

scoreboard players set $dir dist_mem 0
execute positioned ~-1 ~ ~-2 run function distancing:set_portal_frame
execute positioned ~ ~ ~-2 run function distancing:set_portal_frame
execute positioned ~1 ~ ~-2 run function distancing:set_portal_frame

scoreboard players set $dir dist_mem 1
execute positioned ~-2 ~ ~-1 run function distancing:set_portal_frame
execute positioned ~-2 ~ ~ run function distancing:set_portal_frame
execute positioned ~-2 ~ ~1 run function distancing:set_portal_frame

scoreboard players set $dir dist_mem 2
execute positioned ~-1 ~ ~2 run function distancing:set_portal_frame
execute positioned ~ ~ ~2 run function distancing:set_portal_frame
execute positioned ~1 ~ ~2 run function distancing:set_portal_frame

scoreboard players set $dir dist_mem 3
execute positioned ~2 ~ ~-1 run function distancing:set_portal_frame
execute positioned ~2 ~ ~ run function distancing:set_portal_frame
execute positioned ~2 ~ ~1 run function distancing:set_portal_frame

execute if score @s dist_eyes matches 4095 run fill ~-1 ~ ~-1 ~1 ~ ~1 end_portal
