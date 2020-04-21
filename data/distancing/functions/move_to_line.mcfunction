# Run a tp command onto a player's x line, after finding a suitable space

scoreboard players operation $x dist_mem = @s dist_x
scoreboard players set $y dist_mem 255
execute positioned 0.5 ~ ~ run function distancing:move_r
scoreboard players reset $x dist_mem
scoreboard players reset $step dist_mem
scoreboard players reset $found dist_mem
