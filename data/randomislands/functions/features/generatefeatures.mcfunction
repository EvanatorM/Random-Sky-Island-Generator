# Generate water
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["isldetails"]}

$spreadplayers ~ ~ 0 $(maxsize) false @e[tag=isldetails]
execute as @e[tag=isldetails] at @s run function randomislands:features/generatewaterlake
kill @e[tag=isldetails]

# Generate tall grass
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["islgrassdetails"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["islgrassdetails"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["islgrassdetails"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["islgrassdetails"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["islgrassdetails"]}

$spreadplayers ~ ~ 0 $(maxsize) false @e[tag=islgrassdetails]

# Generate trees
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["isltreedetails"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["isltreedetails"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["isltreedetails"]}

$spreadplayers ~ ~ 1 $(maxsize) false @e[tag=isltreedetails]
execute at @e[tag=isltreedetails] run place feature trees_plains ~ ~ ~
execute at @e[tag=islgrassdetails] run place feature patch_grass ~ ~ ~
execute at @e[tag=islgrassdetails] run place feature patch_tall_grass ~ ~ ~
kill @e[tag=isltreedetails]
kill @e[tag=islgrassdetails]