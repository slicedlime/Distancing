execute if score $fortress_copy dist_mem matches 512.. run scoreboard players remove $fortress_copy dist_mem 512

execute unless score $fortress_copy dist_mem matches 256.. run function distancing:find_fortress_128
execute if score $fortress_copy dist_mem matches 256.. positioned ~ ~ ~256 run function distancing:find_fortress_128
