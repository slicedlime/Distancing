# Every tick

execute as @a[gamemode=!spectator,tag=!dist_set] run function distancing:assign
execute as @a[gamemode=!spectator] at @s run function distancing:check_x
