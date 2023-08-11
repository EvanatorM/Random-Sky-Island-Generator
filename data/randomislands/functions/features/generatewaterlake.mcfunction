fill ~-1 ~ ~-1 ~1 ~1 ~1 air
fill ~2 ~ ~-1 ~2 ~1 ~1 air
fill ~-2 ~ ~-1 ~-2 ~1 ~1 air
fill ~-1 ~ ~2 ~1 ~1 ~2 air
fill ~-1 ~ ~-2 ~1 ~1 ~-2 air
fill ~-2 ~-1 ~-3 ~2 ~-1 ~3 grass_block
fill ~-3 ~-1 ~-2 ~3 ~-1 ~2 grass_block
execute unless block ~ ~-2 ~ air run setblock ~ ~-1 ~ water
execute unless block ~1 ~-2 ~ air run setblock ~1 ~-1 ~ water
execute unless block ~-1 ~-2 ~ air run setblock ~-1 ~-1 ~ water
execute unless block ~ ~-2 ~1 air run setblock ~ ~-1 ~1 water
execute unless block ~ ~-2 ~-1 air run setblock ~ ~-1 ~-1 water
execute unless block ~-1 ~-2 ~-1 air run setblock ~-1 ~-1 ~-1 water
execute unless block ~-1 ~-2 ~1 air run setblock ~-1 ~-1 ~1 water
execute unless block ~1 ~-2 ~1 air run setblock ~1 ~-1 ~1 water
execute unless block ~1 ~-2 ~-1 air run setblock ~1 ~-1 ~-1 water

execute unless block ~ ~-2 ~2 air run setblock ~ ~-1 ~2 water
execute unless block ~ ~-2 ~-2 air run setblock ~ ~-1 ~-2 water
execute unless block ~2 ~-2 ~ air run setblock ~2 ~-1 ~ water
execute unless block ~-2 ~-2 ~ air run setblock ~-2 ~-1 ~ water

execute store result score @s randgenisl run random value 0..1 randomislands:genrand
execute if score @s randgenisl matches 1 unless block ~1 ~-2 ~2 air run setblock ~1 ~-1 ~2 water
execute store result score @s randgenisl run random value 0..1 randomislands:genrand
execute if score @s randgenisl matches 1 unless block ~-1 ~-2 ~2 air run setblock ~-1 ~-1 ~2 water
execute store result score @s randgenisl run random value 0..1 randomislands:genrand
execute if score @s randgenisl matches 1 unless block ~1 ~-2 ~-2 air run setblock ~1 ~-1 ~-2 water
execute store result score @s randgenisl run random value 0..1 randomislands:genrand
execute if score @s randgenisl matches 1 unless block ~-1 ~-2 ~-2 air run setblock ~-1 ~-1 ~-2 water
execute store result score @s randgenisl run random value 0..1 randomislands:genrand
execute if score @s randgenisl matches 1 unless block ~2 ~-2 ~-1 air run setblock ~2 ~-1 ~-1 water
execute store result score @s randgenisl run random value 0..1 randomislands:genrand
execute if score @s randgenisl matches 1 unless block ~2 ~-2 ~1 air run setblock ~2 ~-1 ~1 water
execute store result score @s randgenisl run random value 0..1 randomislands:genrand
execute if score @s randgenisl matches 1 unless block ~-2 ~-2 ~-1 air run setblock ~-2 ~-1 ~-1 water
execute store result score @s randgenisl run random value 0..1 randomislands:genrand
execute if score @s randgenisl matches 1 unless block ~-2 ~-2 ~1 air run setblock ~-2 ~-1 ~1 water