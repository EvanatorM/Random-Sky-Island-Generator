$execute unless block ~ ~-1 ~ air run summon falling_block ~ ~$(layer) ~ {BlockState:{Name:"minecraft:grass_block"},Time:1}
$execute unless block ~-1 ~-1 ~ air run summon falling_block ~-1 ~$(layer) ~ {BlockState:{Name:"minecraft:grass_block"},Time:1}
$execute unless block ~1 ~-1 ~ air run summon falling_block ~1 ~$(layer) ~ {BlockState:{Name:"minecraft:grass_block"},Time:1}
$execute unless block ~ ~-1 ~-1 air run summon falling_block ~ ~$(layer) ~-1 {BlockState:{Name:"minecraft:grass_block"},Time:1}
$execute unless block ~ ~-1 ~1 air run summon falling_block ~ ~$(layer) ~1 {BlockState:{Name:"minecraft:grass_block"},Time:1}

$execute unless block ~ ~-1 ~1 air run summon falling_block ~-1 ~$(layer) ~-1 {BlockState:{Name:"minecraft:grass_block"},Time:1}
$execute unless block ~ ~-1 ~1 air run summon falling_block ~-1 ~$(layer) ~1 {BlockState:{Name:"minecraft:grass_block"},Time:1}
$execute unless block ~ ~-1 ~1 air run summon falling_block ~1 ~$(layer) ~-1 {BlockState:{Name:"minecraft:grass_block"},Time:1}
$execute unless block ~ ~-1 ~1 air run summon falling_block ~1 ~$(layer) ~1 {BlockState:{Name:"minecraft:grass_block"},Time:1}

$execute unless block ~ ~-1 ~1 air run summon falling_block ~2 ~$(layer) ~-1 {BlockState:{Name:"minecraft:grass_block"},Time:1}
$execute unless block ~ ~-1 ~1 air run summon falling_block ~2 ~$(layer) ~0 {BlockState:{Name:"minecraft:grass_block"},Time:1}
$execute unless block ~ ~-1 ~1 air run summon falling_block ~2 ~$(layer) ~1 {BlockState:{Name:"minecraft:grass_block"},Time:1}
$execute unless block ~ ~-1 ~1 air run summon falling_block ~-2 ~$(layer) ~-1 {BlockState:{Name:"minecraft:grass_block"},Time:1}
$execute unless block ~ ~-1 ~1 air run summon falling_block ~-2 ~$(layer) ~0 {BlockState:{Name:"minecraft:grass_block"},Time:1}
$execute unless block ~ ~-1 ~1 air run summon falling_block ~-2 ~$(layer) ~1 {BlockState:{Name:"minecraft:grass_block"},Time:1}
$execute unless block ~ ~-1 ~1 air run summon falling_block ~-1 ~$(layer) ~2 {BlockState:{Name:"minecraft:grass_block"},Time:1}
$execute unless block ~ ~-1 ~1 air run summon falling_block ~0 ~$(layer) ~2 {BlockState:{Name:"minecraft:grass_block"},Time:1}
$execute unless block ~ ~-1 ~1 air run summon falling_block ~1 ~$(layer) ~2 {BlockState:{Name:"minecraft:grass_block"},Time:1}
$execute unless block ~ ~-1 ~1 air run summon falling_block ~-1 ~$(layer) ~-2 {BlockState:{Name:"minecraft:grass_block"},Time:1}
$execute unless block ~ ~-1 ~1 air run summon falling_block ~0 ~$(layer) ~-2 {BlockState:{Name:"minecraft:grass_block"},Time:1}
$execute unless block ~ ~-1 ~1 air run summon falling_block ~1 ~$(layer) ~-2 {BlockState:{Name:"minecraft:grass_block"},Time:1}

scoreboard players remove @e[type=armor_stand,tag=island] islgeni 1
#execute store result storage randomislands:isl isl.layer int 5 run scoreboard players get @e[type=armor_stand,tag=island,limit=1] islgeni