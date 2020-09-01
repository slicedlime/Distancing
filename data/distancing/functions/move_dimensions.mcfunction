# Move to line after switching dimensions

function distancing:move_to_line
scoreboard players operation $x dist_mem = @s dist_x
execute if score $y dist_mem matches 0 positioned 0.5 ~ ~ run function distancing:platform_r
execute if score $y dist_mem matches 0 positioned 0.5 ~ ~ run function distancing:move_to_line
