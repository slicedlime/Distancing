# Set up scoreboard

scoreboard objectives add dist_x dummy "Player X"
scoreboard objectives add dist_mem dummy "Memory"
scoreboard objectives add dist_eyes dummy "Eyes in Portal"
scoreboard objectives add dist_used_eye minecraft.used:minecraft.ender_eye "Eye Used"
scoreboard objectives add dist_dimension dummy "Dimension"

scoreboard players set $-1 dist_x -1
scoreboard players set $2 dist_x 2
scoreboard players set $5 dist_x 5
scoreboard players set $10 dist_x 10
scoreboard players set $25 dist_x 25
scoreboard players set $50 dist_x 50
scoreboard players set $75 dist_x 75
scoreboard players set $100 dist_x 100
scoreboard players add $Next dist_x 0
execute if score $Next dist_x matches 0 run scoreboard players set $Next dist_x 4
scoreboard players set $start dist_eyes 1
scoreboard players set $initialized dist_mem 1

scoreboard objectives add dist_list dummy "Player Lines"
scoreboard objectives setdisplay list dist_list
