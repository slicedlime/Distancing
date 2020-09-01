# Find the fortress location and try to place a portal there

summon area_effect_cloud ~ ~ ~ {Tags:["dist_locator"],Duration:2}
execute store result entity @e[type=area_effect_cloud,tag=dist_locator,limit=1] Pos[2] double 1 run scoreboard players get $fortress dist_mem
execute at @e[type=area_effect_cloud,tag=dist_locator,limit=1] run function distancing:place_fortress
tp @e[type=area_effect_cloud,tag=dist_locator,limit=1] ~ ~ ~
kill @e[type=area_effect_cloud,tag=dist_locator,limit=1]
