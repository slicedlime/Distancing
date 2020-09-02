# Place a fortress segment

tag @s add dist_has_fortress
summon area_effect_cloud ~ 60 ~ {Tags:["dist_fortress"], Age:-2147483648, Duration:-1, WaitTime:-2147483648}

fill ~-5 10 ~-2 ~5 59 ~2 nether_bricks
fill ~-5 60 ~-2 ~5 60 ~-2 nether_bricks
fill ~-5 60 ~2 ~5 60 ~2 nether_bricks
