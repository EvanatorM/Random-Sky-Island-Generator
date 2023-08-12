setblock ~ ~ ~ grass_block
execute positioned ~2 ~ ~ unless entity @e[tag=islandregion,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1b,PersistenceRequired:1b,Tags:["islandregion","islandregionnew"]}
execute positioned ~-2 ~ ~ unless entity @e[tag=islandregion,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1b,PersistenceRequired:1b,Tags:["islandregion","islandregionnew"]}
execute positioned ~ ~ ~2 unless entity @e[tag=islandregion,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1b,PersistenceRequired:1b,Tags:["islandregion","islandregionnew"]}
execute positioned ~ ~ ~-2 unless entity @e[tag=islandregion,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1b,PersistenceRequired:1b,Tags:["islandregion","islandregionnew"]}
tag @s remove islandregionnew