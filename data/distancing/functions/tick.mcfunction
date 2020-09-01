# Every tick

execute as @a[gamemode=!spectator,tag=!dist_set] run function distancing:assign
function distancing:check_dimensions
execute as @a[gamemode=!spectator] at @s run function distancing:check_x
execute as @e[type=ender_pearl] run data modify entity @s Motion[0] set value 0.0d

execute as @a run function distancing:try_make_portal
execute as @a[gamemode=!spectator,scores={dist_dimension=1}] at @s run function distancing:check_end_exits
forceload remove all

execute as @a run scoreboard players operation @s dist_list = @s dist_x

execute as @e[type=eye_of_ender] run function distancing:set_eye

execute as @a[scores={dist_dimension=-1},tag=!dist_has_fortress] at @s run function distancing:try_place_fortress

scoreboard players add $spawn_tick dist_mem 1
execute if score $spawn_tick dist_mem matches 1200.. at @a[scores={dist_dimension=-1},sort=random,limit=1] run function distancing:spawn_fortress_mob
