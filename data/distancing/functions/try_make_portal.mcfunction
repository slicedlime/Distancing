# Try to make a portal at x, 0 for a given player

scoreboard players operation $x dist_mem = @s dist_x
execute positioned 0.5 ~ 8 run function distancing:portal_r
