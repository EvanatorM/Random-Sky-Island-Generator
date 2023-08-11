# Create shape generators
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["shapegen"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["shapegen"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["shapegen"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["shapegen"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["shapegen"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["shapegen"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["shapegen"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["shapegen"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["shapegen"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["shapegen"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["shapegen"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["shapegen"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["shapegen"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["shapegen"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["shapegen"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["shapegen"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["shapegen"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["shapegen"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["shapegen"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["shapegen"]}

# Set values
# Blocks per generator
scoreboard players set @e[tag=shapegen] sizegenisl 100
# Generator max lifetime
scoreboard players set @e[tag=shapegen] removegenisl 60

# Set while loop values and start while loop
data modify storage randomislands:islgen shapewhile.condition set value 'randomislands:shape/shapecondition'
$data modify storage randomislands:islgen shapewhile.command set value 'function randomislands:shape/generateshapetick with storage $(datapath)'
data modify storage randomislands:islgen shapewhile.datapath set value 'randomislands:islgen shapewhile'
function datapackhelper:while_loop/whileloop with storage randomislands:islgen shapewhile
tag @e[tag=bottomisl] add genisl
tag @e[tag=topisl] add gentopisl