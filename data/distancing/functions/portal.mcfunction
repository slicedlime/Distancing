# Make and sync portals

scoreboard players add @s dist_eyes 0
execute if score @s dist_eyes matches 0 store success score $loaded dist_mem if block ~ 0 ~ bedrock

execute if score @s dist_eyes matches 0 if score $loaded dist_mem matches 1 run fill ~-3 ~-1 ~-3 ~3 ~3 ~3 air
execute if score @s dist_eyes matches 0 if score $loaded dist_mem matches 1 run function distancing:sync_portal

execute if score @s dist_used_eye matches 1.. if score $loaded dist_mem matches 1 run function distancing:read_portal

scoreboard players operation $max dist_eyes > * dist_eyes
execute if score $loaded dist_mem matches 1 if score @s dist_eyes < $max dist_eyes run function distancing:sync_portal
