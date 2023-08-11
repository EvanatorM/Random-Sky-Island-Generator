# Get kill chance
execute as @e[type=minecraft:armor_stand,tag=genisl] at @s if block ~1 ~ ~ air run scoreboard players add @s removegenisl 10
execute as @e[type=minecraft:armor_stand,tag=genisl] at @s if block ~-1 ~ ~ air run scoreboard players add @s removegenisl 10
execute as @e[type=minecraft:armor_stand,tag=genisl] at @s if block ~ ~ ~1 air run scoreboard players add @s removegenisl 10
execute as @e[type=minecraft:armor_stand,tag=genisl] at @s if block ~ ~ ~-1 air run scoreboard players add @s removegenisl 10

# Place details if armor stand ends
execute as @e[type=minecraft:armor_stand,tag=genisl] at @s store result score @s randgenisl run random value 0..100 randomislands:genrand
execute as @e[type=armor_stand,tag=genisl] at @s if score @s randgenisl <= @s removegenisl run tag @s add finished
execute as @e[type=armor_stand,tag=genisl] at @s if score @s randgenisl <= @s removegenisl run function randomislands:bottom/generatebottomdetails

# Teleport
execute as @e[type=armor_stand,tag=genisl,tag=!finished] at @s run tp ~ ~-1 ~

# Choose and place block
execute as @e[type=minecraft:armor_stand,tag=genisl,tag=!finished] at @s run function randomislands:bottom/generatebottomblock
