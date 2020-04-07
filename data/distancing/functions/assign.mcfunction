# Assign a new player an X value

tag @s add dist_set
scoreboard players operation @s dist_x = $Next dist_x
scoreboard players operation $Next dist_x *= $-1 dist_x
execute if score $Next dist_x matches 0.. run scoreboard players add $Next dist_x 8
function distancing:move_to_line
