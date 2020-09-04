# Find the fortress location and try to place a portal there

scoreboard players operation $fortress_copy dist_mem = $fortress dist_mem

execute if score $fortress_copy dist_mem matches 0..1023 positioned ~ ~ 0 run function distancing:find_fortress_512
execute if score $fortress_copy dist_mem matches 1024.. positioned ~ ~ 1024 run function distancing:find_fortress_512
execute if score $fortress_copy dist_mem matches ..0 run function distancing:find_fortress_negative
