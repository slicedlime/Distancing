# If position is < 0, move start to lowest possible (-2047) and "bitwise invert" score

scoreboard players add $fortress_copy dist_mem 2047

execute unless score $fortress_copy dist_mem matches 1024.. positioned ~ ~ -2047 run function distancing:find_fortress_512
execute if score $fortress_copy dist_mem matches 1024.. positioned ~ ~ -1023 run function distancing:find_fortress_512
