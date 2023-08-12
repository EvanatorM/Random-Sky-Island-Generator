setblock ~ ~ ~ grass_block
summon armor_stand ~ ~ ~1 {NoGravity:1b,PersistenceRequired:1b,Tags:["infgenpz"]}
#execute positioned ~-1 ~ ~1 unless entity @e[type=armor_stand,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1b,PersistenceRequired:1b,Tags:["infgenpz"]}
#execute positioned ~-1 ~ ~1 unless entity @e[type=armor_stand,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1b,PersistenceRequired:1b,Tags:["infgenpz"]}
kill @s