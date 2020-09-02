execute if score $fortress_copy dist_mem matches 2.. run scoreboard players remove $fortress_copy dist_mem 2

execute if score $fortress_copy dist_mem matches 1.. positioned ~ ~ ~1 if block ~ 0 ~ bedrock run function distancing:place_fortress
execute unless score $fortress_copy dist_mem matches 1.. if block ~ 0 ~ bedrock run function distancing:place_fortress
