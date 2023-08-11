function randomislands:clearisland

summon armor_stand 0 60 0 {NoGravity:1b,Tags:["testisl"]}

data modify storage randomislands:islgen island.datapath set value 'randomislands:islgen island'
data modify storage randomislands:islgen island.heightdivide set value 3
execute as @e[tag=testisl] at @s store result storage randomislands:islgen island.height int 1 run data get entity @s Pos[1] 1

execute as @e[tag=testisl] at @s run function randomislands:generateisland with storage randomislands:islgen island
kill @e[tag=testisl]