execute store result score @s randblockgenisl run random value 0..20 randomislands:genrand
execute if score @s randblockgenisl matches 0..15 run setblock ~ ~ ~ stone
execute if score @s randblockgenisl matches 16..17 run setblock ~ ~ ~ cobblestone
execute if score @s randblockgenisl matches 18..19 run setblock ~ ~ ~ andesite
execute if score @s randblockgenisl matches 20 run setblock ~ ~ ~ deepslate