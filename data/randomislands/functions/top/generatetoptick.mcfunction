# Get kill chance
execute as @e[type=minecraft:armor_stand,tag=gentopisl] at @s run scoreboard players add @s removegenisl 0
execute as @e[type=minecraft:armor_stand,tag=gentopisl] at @s if block ~1 ~ ~ air run scoreboard players add @s removegenisl 100
execute as @e[type=minecraft:armor_stand,tag=gentopisl] at @s if block ~-1 ~ ~ air run scoreboard players add @s removegenisl 100
execute as @e[type=minecraft:armor_stand,tag=gentopisl] at @s if block ~ ~ ~1 air run scoreboard players add @s removegenisl 100
execute as @e[type=minecraft:armor_stand,tag=gentopisl] at @s if block ~ ~ ~-1 air run scoreboard players add @s removegenisl 100

# Place details if armor stand ends
execute as @e[type=minecraft:armor_stand,tag=gentopisl] at @s store result score @s randgenisl run random value 0..100 randomislands:genrand
execute as @e[type=armor_stand,tag=gentopisl] at @s if score @s randgenisl <= @s removegenisl run tag @s add finished
#execute as @e[type=armor_stand,tag=gentopisl] at @s if score @s randgenisl <= @s removegenisl run function randomislands:bottom/generatebottomdetails

# Teleport
execute as @e[type=armor_stand,tag=gentopisl,tag=!finished] at @s run tp ~ ~1 ~
execute as @e[type=armor_stand,tag=gentopisl,tag=!finished] run scoreboard players add @s islgenheight 1

# Choose and place block
execute as @e[type=minecraft:armor_stand,tag=gentopisl,tag=!finished] at @s run setblock ~ ~ ~ grass_block

# Finish Phase 1
$execute unless entity @e[type=armor_stand,tag=gentopisl,tag=!finished] as @e[tag=gentopisl] at @s run fill ~ $(height) ~ ~ ~ ~ air
$execute unless entity @e[type=armor_stand,tag=gentopisl,tag=!finished] unless entity @e[tag=gentopisl2] as @e[tag=gentopisl] at @s run tp @s ~ $(height) ~
execute unless entity @e[type=armor_stand,tag=gentopisl,tag=!finished] unless entity @e[tag=gentopisl2] as @e[tag=gentopisl,tag=!gentopisl2] run scoreboard players operation @s islgenheight /= @e[tag=islandtest,limit=1] islgenheight
execute unless entity @e[type=armor_stand,tag=gentopisl,tag=!finished] as @e[tag=gentopisl] run tag @s add gentopisl2
tag @e[tag=gentopisl2] remove gentopisl

# Phase 2
#execute as @e[tag=gentopisl2] unless score @s islgenheight matches ..-1 at @s run setblock ~ ~ ~ grass_block
execute as @e[tag=gentopisl2] unless score @s islgenheight matches ..-1 at @s run tp ~ ~1 ~
execute as @e[tag=gentopisl2] run scoreboard players remove @s islgenheight 1

# Finish
$execute as @e[tag=gentopisl2] if score @s islgenheight matches ..-1 at @s run fill ~ $(height) ~ ~ ~ ~ dirt
execute as @e[tag=gentopisl2] if score @s islgenheight matches ..-1 at @s run setblock ~ ~ ~ grass_block
execute as @e[tag=gentopisl2] if score @s islgenheight matches ..-1 run kill @s