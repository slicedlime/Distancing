execute if score $fortress_copy dist_mem matches 64.. run scoreboard players remove $fortress_copy dist_mem 64

execute unless score $fortress_copy dist_mem matches 32.. run function distancing:find_fortress_16
execute if score $fortress_copy dist_mem matches 32.. positioned ~ ~ ~32 run function distancing:find_fortress_16
