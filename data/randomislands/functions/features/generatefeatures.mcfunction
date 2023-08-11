# Generate water
summon armor_stand 0 60 0 {NoGravity:1b,Tags:["isldetails"]}

spreadplayers 0 0 0 50 false @e[tag=isldetails]
execute as @e[tag=isldetails] at @s run function randomislands:features/generatewaterlake
kill @e[tag=isldetails]

# Generate tall grass
summon armor_stand 0 60 0 {NoGravity:1b,Tags:["isldetails"]}
summon armor_stand 0 60 0 {NoGravity:1b,Tags:["isldetails"]}
summon armor_stand 0 60 0 {NoGravity:1b,Tags:["isldetails"]}
summon armor_stand 0 60 0 {NoGravity:1b,Tags:["isldetails"]}
summon armor_stand 0 60 0 {NoGravity:1b,Tags:["isldetails"]}

spreadplayers 0 0 0 50 false @e[tag=isldetails]
execute at @e[tag=isldetails] run place feature patch_grass ~ ~ ~
execute at @e[tag=isldetails] run place feature patch_tall_grass ~ ~ ~
kill @e[tag=isldetails]

# Generate trees
summon armor_stand 0 60 0 {NoGravity:1b,Tags:["isldetails"]}
summon armor_stand 0 60 0 {NoGravity:1b,Tags:["isldetails"]}
summon armor_stand 0 60 0 {NoGravity:1b,Tags:["isldetails"]}

spreadplayers 0 0 0 50 false @e[tag=isldetails]
execute at @e[tag=isldetails] run place feature trees_plains ~ ~ ~
kill @e[tag=isldetails]

kill @e[tag=islandtest]


# Use recursion for a loop instead of ticks