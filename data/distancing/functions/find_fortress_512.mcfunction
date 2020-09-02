execute if score $fortress_copy dist_mem matches 1024.. run scoreboard players remove $fortress_copy dist_mem 1024

execute unless score $fortress_copy dist_mem matches 512.. run function distancing:find_fortress_256
execute if score $fortress_copy dist_mem matches 512.. positioned ~ ~ ~512 run function distancing:find_fortress_256
