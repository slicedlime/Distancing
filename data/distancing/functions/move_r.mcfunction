# Find an x value and tp

execute if score $x dist_mem matches 16.. run scoreboard players set $step dist_mem 16
execute if score $x dist_mem matches 1..15 run scoreboard players set $step dist_mem 1
execute if score $x dist_mem matches 0 positioned ~ 255 ~ run function distancing:move_project
execute if score $x dist_mem matches -15..-1 run scoreboard players set $step dist_mem -1
execute if score $x dist_mem matches ..-16 run scoreboard players set $step dist_mem -16

scoreboard players operation $x dist_mem -= $step dist_mem
execute if score $step dist_mem matches 16 positioned ~16 ~ ~ run function distancing:move_r
execute if score $step dist_mem matches 1 positioned ~1 ~ ~ run function distancing:move_r
execute if score $step dist_mem matches -1 positioned ~-1 ~ ~ run function distancing:move_r
execute if score $step dist_mem matches -16 positioned ~-16 ~ ~ run function distancing:move_r
