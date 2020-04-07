# Set up scoreboard

scoreboard objectives add dist_x dummy "Player X"
scoreboard objectives add dist_mem dummy "Memory"
scoreboard players set $-1 dist_x -1
scoreboard players set $5 dist_x 5
scoreboard players set $10 dist_x 10
scoreboard players add $Next dist_x 0
execute if score $Next dist_x matches 0 run scoreboard players set $Next dist_x 4

function distancing:spread_to_line
