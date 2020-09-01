# Check the starting end position and then move after switching dimensions
tag @s add dist_current
execute in the_end as @p[tag=dist_current,distance=0..] run tp @s ~ ~ -100
tag @s remove dist_current

execute at @s run function distancing:move_dimensions
