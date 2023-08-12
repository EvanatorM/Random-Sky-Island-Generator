# Generate next block
execute as @e[type=armor_stand,tag=shapegen] if score @s sizegenisl matches 1.. at @s run function randomislands:shape/nextblock
scoreboard players remove @e[type=armor_stand,tag=shapegen] removegenisl 1

$tp @e[tag=shapegen,distance=$(maxsize)..] @s

# When out of blocks to generate, generate bottom
execute as @e[type=armor_stand,tag=shapegen] if score @s sizegenisl matches 0 run kill @s
execute as @e[type=armor_stand,tag=shapegen] if score @s removegenisl matches 0 run kill @s