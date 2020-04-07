# Project downwards until we find a non-air and an air block, then tp
# Very inaccurate, maybe good enough. This is a kind-of spreadplayers that is guaranteed to not move in x or z

execute store success score $found dist_mem if block ~ ~ ~ #distancing:air unless block ~ ~-1 ~ #distancing:air
execute if score $found dist_mem matches 1 run tp @s ~ ~ ~
execute unless score $found dist_mem matches 1 positioned ~ ~-1 ~ run function distancing:move_project
