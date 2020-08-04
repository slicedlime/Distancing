# Read a portal's eyes for a player

scoreboard players set $eyes dist_mem 0

execute positioned ~2 ~ ~1 run function distancing:read_portal_frame
execute positioned ~2 ~ ~ run function distancing:read_portal_frame
execute positioned ~2 ~ ~-1 run function distancing:read_portal_frame
execute positioned ~1 ~ ~2 run function distancing:read_portal_frame
execute positioned ~ ~ ~2 run function distancing:read_portal_frame
execute positioned ~-1 ~ ~2 run function distancing:read_portal_frame
execute positioned ~-2 ~ ~1 run function distancing:read_portal_frame
execute positioned ~-2 ~ ~ run function distancing:read_portal_frame
execute positioned ~-2 ~ ~-1 run function distancing:read_portal_frame
execute positioned ~1 ~ ~-2 run function distancing:read_portal_frame
execute positioned ~ ~ ~-2 run function distancing:read_portal_frame
execute positioned ~-1 ~ ~-2 run function distancing:read_portal_frame

scoreboard players operation @s dist_eyes = $eyes dist_mem
scoreboard players reset @s dist_used_eye
