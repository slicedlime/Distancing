# Set an eye of ender to always go towards 0 on the current line

# Read current data
execute store result score $z dist_mem run data get entity @s Pos[2] 1000
execute store result score $dy dist_mem run data get entity @s Motion[1] 1000

# Clear X motion
data modify entity @s Motion[0] set value 0.0d

# Figure out sign of new Z motion
execute if score $z dist_mem matches 0.. run scoreboard players operation $dy dist_mem *= $-1 dist_x

# 0 out motion if near 0
execute if score $z dist_mem matches -8000..24000 run scoreboard players set $dy dist_mem 0

# Set new motion
execute store result entity @s Motion[2] double 0.001 run scoreboard players get $dy dist_mem
