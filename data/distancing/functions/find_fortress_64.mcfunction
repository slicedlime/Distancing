execute if score $fortress_copy dist_mem matches 128.. run scoreboard players remove $fortress_copy dist_mem 128

execute unless score $fortress_copy dist_mem matches 64.. run function distancing:find_fortress_32
execute if score $fortress_copy dist_mem matches 64.. positioned ~ ~ ~64 run function distancing:find_fortress_32
