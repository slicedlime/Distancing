execute if score $fortress_copy dist_mem matches 256.. run scoreboard players remove $fortress_copy dist_mem 256

execute unless score $fortress_copy dist_mem matches 128.. run function distancing:find_fortress_64
execute if score $fortress_copy dist_mem matches 128.. positioned ~ ~ ~128 run function distancing:find_fortress_64
