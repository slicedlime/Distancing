# Check all players' dimensions

execute in overworld as @a[distance=0..] unless score @s dist_dimension matches 0 at @s run function distancing:move_dimensions
execute in the_nether as @a[distance=0..] unless score @s dist_dimension matches -1 at @s run function distancing:move_dimensions
execute in the_end as @a[distance=0..] unless score @s dist_dimension matches 1 at @s run function distancing:move_dimensions

execute in overworld run scoreboard players set @a[distance=0..] dist_dimension 0
execute in the_nether run scoreboard players set @a[distance=0..] dist_dimension -1
execute in the_end run scoreboard players set @a[distance=0..] dist_dimension 1
