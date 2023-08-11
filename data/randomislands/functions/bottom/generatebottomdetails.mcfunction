tp @s ~ ~-1 ~
execute store result score @s randblockgenisl run random value 0..10 randomislands:genrand
execute if score @s randblockgenisl matches 9 run place feature minecraft:glow_lichen ~ ~-1 ~
execute if score @s randblockgenisl matches 10 run place feature minecraft:vines ~ ~-1 ~
kill @s