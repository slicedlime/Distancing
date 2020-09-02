execute if score $fortress_copy dist_mem matches 8.. run scoreboard players remove $fortress_copy dist_mem 8

execute unless score $fortress_copy dist_mem matches 4.. run function distancing:find_fortress_2
execute if score $fortress_copy dist_mem matches 4.. positioned ~ ~ ~4 run function distancing:find_fortress_2
