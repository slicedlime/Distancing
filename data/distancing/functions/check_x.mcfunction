# Check a player's x value

execute store result score $x dist_mem run data get entity @s Pos[0] 10
scoreboard players operation $linex dist_mem = @s dist_x
scoreboard players operation $linex dist_mem *= $10 dist_x
scoreboard players operation $linex dist_mem += $5 dist_x
scoreboard players operation $x dist_mem -= $linex dist_mem

execute if score $x dist_mem matches 10..160 at @s run tp @s ~-1 ~ ~ 
execute if score $x dist_mem matches -160..-10 at @s run tp @s ~1 ~ ~ 
execute if score $x dist_mem matches 160.. run function distancing:move_to_line
execute if score $x dist_mem matches ..-160 run function distancing:move_to_line

# Re-run the entire thing to see if player is still far away
execute store result score $x dist_mem run data get entity @s Pos[0] 10
scoreboard players operation $linex dist_mem = @s dist_x
scoreboard players operation $linex dist_mem *= $10 dist_x
scoreboard players operation $linex dist_mem += $5 dist_x
scoreboard players operation $x dist_mem -= $linex dist_mem

scoreboard players set $push dist_mem 0
execute if score $x dist_mem matches 3.. run scoreboard players set $push dist_mem 1
execute if score $x dist_mem matches ..-3 run scoreboard players set $push dist_mem 1

tag @s add dist_active
scoreboard players set $has_pusher dist_mem 0
execute as @e[type=slime,tag=dist_pusher] if score @s dist_x = @p[tag=dist_active] dist_x run tag @s add dist_active
tag @s remove dist_active

execute if score $push dist_mem matches 0 at @s run tp @e[type=slime,tag=dist_pusher,tag=dist_active] ~ ~256 ~
execute if score $push dist_mem matches 1 unless entity @e[type=slime,tag=dist_pusher,tag=dist_active] at @s run summon slime ~ ~ ~ {NoAI:1b,NoGravity:1b,Invulnerable:1b,Size:0,Tags:["dist_pusher","dist_active","dist_fresh"],PersistenceRequired:1b}
execute as @e[type=slime,tag=dist_fresh] at @s run summon slime ~ ~ ~ {NoAI:1b,NoGravity:1b,Invulnerable:1b,Size:0,Tags:["dist_pusher","dist_active"],PersistenceRequired:1b}
execute as @e[type=slime,tag=dist_fresh] at @s run summon slime ~ ~ ~ {NoAI:1b,NoGravity:1b,Invulnerable:1b,Size:0,Tags:["dist_pusher","dist_active"],PersistenceRequired:1b}
execute as @e[type=slime,tag=dist_fresh] at @s run summon slime ~ ~ ~ {NoAI:1b,NoGravity:1b,Invulnerable:1b,Size:0,Tags:["dist_pusher","dist_active"],PersistenceRequired:1b}
tag @e[tag=dist_fresh] remove dist_fresh
effect give @e[type=slime,tag=dist_pusher,tag=dist_active] invisibility 10 1 true
scoreboard players operation @e[type=slime,tag=dist_pusher,tag=dist_active] dist_x = @s dist_x

execute if score $x dist_mem matches ..-3 at @s run tp @e[type=slime,tag=dist_pusher,tag=dist_active] ~-0.1 ~ ~
execute if score $x dist_mem matches 3.. at @s run tp @e[type=slime,tag=dist_pusher,tag=dist_active] ~0.1 ~ ~

tag @e[type=slime,tag=dist_pusher,tag=dist_active] remove dist_active
