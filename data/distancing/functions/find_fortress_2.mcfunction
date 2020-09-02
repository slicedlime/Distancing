execute if score $fortress_copy dist_mem matches 4.. run scoreboard players remove $fortress_copy dist_mem 4

execute unless score $fortress_copy dist_mem matches 2.. run function distancing:find_fortress_1
execute if score $fortress_copy dist_mem matches 2.. positioned ~ ~ ~2 run function distancing:find_fortress_1
