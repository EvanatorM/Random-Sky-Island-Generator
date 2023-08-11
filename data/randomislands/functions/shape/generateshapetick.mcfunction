# Generate next block
execute as @e[type=armor_stand,tag=islandtop] if score @s sizegenisl matches 1.. at @s run function randomislands:shape/nextblock
scoreboard players remove @e[type=armor_stand,tag=islandtop] removegenisl 1

# When out of blocks to generate, generate bottom
execute as @e[type=armor_stand,tag=islandtop] if score @s sizegenisl matches 0 run kill @s
execute as @e[type=armor_stand,tag=islandtop] if score @s removegenisl matches 0 run kill @s
execute unless entity @e[type=armor_stand,tag=islandtop] run tag @e[type=armor_stand,tag=bottomisl] add genisl
#execute unless entity @e[type=armor_stand,tag=islandtop] if entity @e[type=armor_stand,tag=islandtest] run function randomislands:top/generatetop
#execute unless entity @e[type=armor_stand,tag=islandtop] run kill @e[type=armor_stand,tag=islandtest]
execute unless entity @e[type=armor_stand,tag=islandtop] run tag @e[type=armor_stand,tag=topisl] add gentopisl