tag @s remove islandregionnew
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["testisl"]}

data modify storage randomislands:islgen island.datapath set value 'randomislands:islgen island'
data modify storage randomislands:islgen island.heightdivide set value 3
data modify storage randomislands:islgen island.maxsize set value 20

execute as @e[tag=testisl] at @s store result storage randomislands:islgen island.height int 1 run data get entity @s Pos[1] 1

execute as @e[tag=testisl] at @s run function randomislands:generateisland with storage randomislands:islgen island
kill @e[tag=testisl]

execute positioned ~100 ~ ~ unless entity @e[tag=islandregion,distance=..10] run summon armor_stand ~ ~ ~ {NoGravity:1b,PersistenceRequired:1b,Tags:["islandregion","islandregionnew"]}
execute positioned ~-100 ~ ~ unless entity @e[tag=islandregion,distance=..10] run summon armor_stand ~ ~ ~ {NoGravity:1b,PersistenceRequired:1b,Tags:["islandregion","islandregionnew"]}
execute positioned ~ ~ ~100 unless entity @e[tag=islandregion,distance=..10] run summon armor_stand ~ ~ ~ {NoGravity:1b,PersistenceRequired:1b,Tags:["islandregion","islandregionnew"]}
execute positioned ~ ~ ~-100 unless entity @e[tag=islandregion,distance=..10] run summon armor_stand ~ ~ ~ {NoGravity:1b,PersistenceRequired:1b,Tags:["islandregion","islandregionnew"]}