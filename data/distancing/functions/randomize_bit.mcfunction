scoreboard players operation $fortress dist_mem *= $2 dist_x
execute as @e[tag=dist_rand,limit=1,sort=random] run scoreboard players operation $fortress dist_mem += @s dist_mem
