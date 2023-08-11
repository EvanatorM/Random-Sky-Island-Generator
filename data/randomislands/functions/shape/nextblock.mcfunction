# Move
execute store result score @s randgenisl run random value 0..3 randomislands:genrand
execute if score @s randgenisl matches 0 run tp @s ~ ~ ~1
execute if score @s randgenisl matches 1 run tp @s ~ ~ ~-1
execute if score @s randgenisl matches 2 run tp @s ~1 ~ ~
execute if score @s randgenisl matches 3 run tp @s ~-1 ~ ~

# Remove one from size
execute unless block ~ ~ ~ grass_block run scoreboard players remove @s sizegenisl 1
execute unless block ~ ~ ~ grass_block run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["bottomisl"]}
execute unless block ~ ~ ~ grass_block run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["topisl"]}

execute unless block ~1 ~ ~ grass_block run scoreboard players remove @s sizegenisl 1
execute unless block ~1 ~ ~ grass_block run summon armor_stand ~1 ~ ~ {NoGravity:1b,Tags:["bottomisl"]}
execute unless block ~1 ~ ~ grass_block run summon armor_stand ~1 ~ ~ {NoGravity:1b,Tags:["topisl"]}

execute unless block ~-1 ~ ~ grass_block run scoreboard players remove @s sizegenisl 1
execute unless block ~-1 ~ ~ grass_block run summon armor_stand ~-1 ~ ~ {NoGravity:1b,Tags:["bottomisl"]}
execute unless block ~-1 ~ ~ grass_block run summon armor_stand ~-1 ~ ~ {NoGravity:1b,Tags:["topisl"]}

execute unless block ~ ~ ~1 grass_block run scoreboard players remove @s sizegenisl 1
execute unless block ~ ~ ~1 grass_block run summon armor_stand ~ ~ ~1 {NoGravity:1b,Tags:["bottomisl"]}
execute unless block ~ ~ ~1 grass_block run summon armor_stand ~ ~ ~1 {NoGravity:1b,Tags:["topisl"]}

execute unless block ~ ~ ~-1 grass_block run scoreboard players remove @s sizegenisl 1
execute unless block ~ ~ ~-1 grass_block run summon armor_stand ~ ~ ~-1 {NoGravity:1b,Tags:["bottomisl"]}
execute unless block ~ ~ ~-1 grass_block run summon armor_stand ~ ~ ~-1 {NoGravity:1b,Tags:["topisl"]}

# Set block
setblock ~ ~ ~ grass_block
setblock ~1 ~ ~ grass_block
setblock ~-1 ~ ~ grass_block
setblock ~ ~ ~1 grass_block
setblock ~ ~ ~-1 grass_block