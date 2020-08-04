# Find an x value and create platform

scoreboard players set $step dist_mem 0
execute if score $x dist_mem matches 16.. run scoreboard players set $step dist_mem 16
execute if score $x dist_mem matches 1..15 run scoreboard players set $step dist_mem 1
execute if score $x dist_mem matches 0 run function distancing:make_platform
execute if score $x dist_mem matches -15..-1 run scoreboard players set $step dist_mem -1
execute if score $x dist_mem matches ..-16 run scoreboard players set $step dist_mem -16

scoreboard players operation $x dist_mem -= $step dist_mem
execute if score $step dist_mem matches 16 positioned ~16 ~ ~ run function distancing:platform_r
execute if score $step dist_mem matches 1 positioned ~1 ~ ~ run function distancing:platform_r
execute if score $step dist_mem matches -1 positioned ~-1 ~ ~ run function distancing:platform_r
execute if score $step dist_mem matches -16 positioned ~-16 ~ ~ run function distancing:platform_r
