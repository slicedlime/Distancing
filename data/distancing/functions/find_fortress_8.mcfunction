execute if score $fortress_copy dist_mem matches 16.. run scoreboard players remove $fortress_copy dist_mem 16

execute unless score $fortress_copy dist_mem matches 8.. run function distancing:find_fortress_4
execute if score $fortress_copy dist_mem matches 8.. positioned ~ ~ ~8 run function distancing:find_fortress_4
