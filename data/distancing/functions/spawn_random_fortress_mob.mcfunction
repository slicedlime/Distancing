# Spawn a random fortress mob at ~ ~ ~ (kind of)

summon area_effect_cloud ~ ~ ~ {Tags:["dist_blaze","dist_random_mob"]}
summon area_effect_cloud ~ ~ ~ {Tags:["dist_skeleton","dist_random_mob"]}
summon area_effect_cloud ~ ~ ~ {Tags:["dist_wither_skeleton","dist_random_mob"]}

tag @e[tag=dist_random_mob,sort=random,limit=1] add dist_chosen

execute if entity @e[tag=dist_blaze,tag=dist_chosen] run summon blaze ~ ~ ~ {Tags:["dist_new_spawn"]}
execute if entity @e[tag=dist_skeleton,tag=dist_chosen] run summon skeleton ~ ~ ~ {Tags:["dist_new_spawn"],HandItems:[{id:"bow",Count:1b}]}
execute if entity @e[tag=dist_wither_skeleton,tag=dist_chosen] run summon wither_skeleton ~ ~ ~ {Tags:["dist_new_spawn"],HandItems:[{id:"stone_sword",Count:1b}]}

spreadplayers ~ ~ 2 2 under 63 false @e[tag=dist_new_spawn]
tag @e[tag=dist_new_spawn] remove dist_new_spawn

kill @e[tag=dist_random_mob]
scoreboard players set $spawn_tick dist_mem 0
