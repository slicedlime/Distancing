# Randomize a position of the fortress between -2048 and 2048

summon armor_stand ~ ~ ~ {Tags:["dist_rand"]}
scoreboard players add @e[tag=dist_rand] dist_mem 1
summon armor_stand ~ ~ ~ {Tags:["dist_rand"]}
scoreboard players add @e[tag=dist_rand] dist_mem 0

scoreboard players set $fortress dist_mem 0

execute as @e[tag=dist_rand,limit=1,sort=random] run scoreboard players operation $fortress dist_mem += @s dist_mem
function distancing:randomize_bit
function distancing:randomize_bit
function distancing:randomize_bit
function distancing:randomize_bit
function distancing:randomize_bit
function distancing:randomize_bit
function distancing:randomize_bit
function distancing:randomize_bit
function distancing:randomize_bit
function distancing:randomize_bit
execute as @e[tag=dist_rand,limit=1,sort=random] if score @s dist_mem matches 1 run scoreboard players operation $fortress dist_mem *= $-1 dist_x

kill @e[tag=dist_rand]

execute if score $fortress dist_mem matches -512..512 run function distancing:randomize_fortress
