execute if score $fortress_copy dist_mem matches 32.. run scoreboard players remove $fortress_copy dist_mem 32

execute unless score $fortress_copy dist_mem matches 16.. run function distancing:find_fortress_8
execute if score $fortress_copy dist_mem matches 16.. positioned ~ ~ ~16 run function distancing:find_fortress_8
