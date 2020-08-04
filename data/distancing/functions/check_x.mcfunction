# Check a player's x value

execute store result score $x dist_mem run data get entity @s Pos[0] 10
scoreboard players operation $linex dist_mem = @s dist_x
scoreboard players operation $linex dist_mem *= $10 dist_x
scoreboard players operation $linex dist_mem += $5 dist_x
scoreboard players operation $x dist_mem -= $linex dist_mem

execute if score $x dist_mem matches 40.. run function distancing:move_to_line
execute if score $x dist_mem matches ..-40 run function distancing:move_to_line

# Re-run the entire thing to see if player is still far away
execute store result score $x dist_mem run data get entity @s Pos[0] 100
scoreboard players operation $linex dist_mem = @s dist_x
scoreboard players operation $linex dist_mem *= $100 dist_x
scoreboard players operation $linex dist_mem += $75 dist_x
scoreboard players operation $x dist_mem -= $linex dist_mem

execute if score $x dist_mem matches 800..1599 at @s run tp @s ~-8 ~ ~ 
execute if score $x dist_mem matches 800..1599 run scoreboard players remove $x dist_mem 800
execute if score $x dist_mem matches 400..799 at @s run tp @s ~-4 ~ ~ 
execute if score $x dist_mem matches 400..799 run scoreboard players remove $x dist_mem 400
execute if score $x dist_mem matches 200..399 at @s run tp @s ~-2 ~ ~ 
execute if score $x dist_mem matches 200..399 run scoreboard players remove $x dist_mem 200
execute if score $x dist_mem matches 100..199 at @s run tp @s ~-1 ~ ~ 
execute if score $x dist_mem matches 100..199 run scoreboard players remove $x dist_mem 100
execute if score $x dist_mem matches 50..99 at @s run tp @s ~-0.5 ~ ~ 
execute if score $x dist_mem matches 50..99 run scoreboard players remove $x dist_mem 50
execute if score $x dist_mem matches 25..49 at @s run tp @s ~-0.25 ~ ~ 
execute if score $x dist_mem matches 25..49 run scoreboard players remove $x dist_mem 25
execute if score $x dist_mem matches 12..24 at @s run tp @s ~-0.12 ~ ~ 
execute if score $x dist_mem matches 12..24 run scoreboard players remove $x dist_mem 12
execute if score $x dist_mem matches 6..11 at @s run tp @s ~-0.06 ~ ~ 
execute if score $x dist_mem matches 6..11 run scoreboard players remove $x dist_mem 6
execute if score $x dist_mem matches 3..5 at @s run tp @s ~-0.03 ~ ~ 
execute if score $x dist_mem matches 3..5 run scoreboard players remove $x dist_mem 3
execute if score $x dist_mem matches 1..2 at @s run tp @s ~-0.01 ~ ~ 
execute if score $x dist_mem matches 1..2 run scoreboard players remove $x dist_mem 1

execute store result score $x dist_mem run data get entity @s Pos[0] 100
scoreboard players operation $linex dist_mem = @s dist_x
scoreboard players operation $linex dist_mem *= $100 dist_x
scoreboard players operation $linex dist_mem += $25 dist_x
scoreboard players operation $x dist_mem -= $linex dist_mem

execute if score $x dist_mem matches -1599..-800 at @s run tp @s ~8 ~ ~ 
execute if score $x dist_mem matches -1599..-800 run scoreboard players add $x dist_mem 800
execute if score $x dist_mem matches -799..-400 at @s run tp @s ~4 ~ ~ 
execute if score $x dist_mem matches -799..-400 run scoreboard players add $x dist_mem 400
execute if score $x dist_mem matches -399..-200 at @s run tp @s ~2 ~ ~ 
execute if score $x dist_mem matches -399..-200 run scoreboard players add $x dist_mem 200
execute if score $x dist_mem matches -199..-100 at @s run tp @s ~1 ~ ~ 
execute if score $x dist_mem matches -199..-100 run scoreboard players add $x dist_mem 100
execute if score $x dist_mem matches -99..-50 at @s run tp @s ~0.5 ~ ~ 
execute if score $x dist_mem matches -99..-50 run scoreboard players add $x dist_mem 50
execute if score $x dist_mem matches -49..-25 at @s run tp @s ~0.25 ~ ~ 
execute if score $x dist_mem matches -49..-25 run scoreboard players add $x dist_mem 25
execute if score $x dist_mem matches -24..-12 at @s run tp @s ~0.12 ~ ~ 
execute if score $x dist_mem matches -24..-12 run scoreboard players add $x dist_mem 12
execute if score $x dist_mem matches -11..-6 at @s run tp @s ~0.06 ~ ~ 
execute if score $x dist_mem matches -11..-6 run scoreboard players add $x dist_mem 6
execute if score $x dist_mem matches -5..-3 at @s run tp @s ~0.03 ~ ~ 
execute if score $x dist_mem matches -5..-3 run scoreboard players add $x dist_mem 3
execute if score $x dist_mem matches -2..-1 at @s run tp @s ~0.01 ~ ~ 
execute if score $x dist_mem matches -2..-1 run scoreboard players add $x dist_mem 1
