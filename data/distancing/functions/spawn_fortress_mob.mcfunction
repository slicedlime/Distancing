# Spawn a fortress mob at a fortress piece

summon area_effect_cloud ~ 60 ~ {Tags:["dist_locator"],Duration:2}
execute store result entity @e[type=area_effect_cloud,tag=dist_locator,limit=1] Pos[2] double 1 run scoreboard players get $fortress dist_mem
execute at @e[type=area_effect_cloud,tag=dist_locator,limit=1] positioned ~ 60 ~ if entity @a[distance=..120,limit=1] unless entity @a[distance=..20,limit=1] run function distancing:spawn_random_fortress_mob
tp @e[type=area_effect_cloud,tag=dist_locator,limit=1] ~ ~ ~
kill @e[type=area_effect_cloud,tag=dist_locator,limit=1]
