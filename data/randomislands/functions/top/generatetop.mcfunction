summon armor_stand 0 60 0 {NoGravity:1b,Tags:["island"]}
scoreboard players set @e[type=armor_stand,tag=island] islgeni 10

summon armor_stand 0 60 0 {NoGravity:1b,Tags:["islandtoptest"]}
summon armor_stand 0 60 0 {NoGravity:1b,Tags:["islandtoptest"]}
summon armor_stand 0 60 0 {NoGravity:1b,Tags:["islandtoptest"]}
summon armor_stand 0 60 0 {NoGravity:1b,Tags:["islandtoptest"]}
summon armor_stand 0 60 0 {NoGravity:1b,Tags:["islandtoptest"]}
summon armor_stand 0 60 0 {NoGravity:1b,Tags:["islandtoptest"]}
summon armor_stand 0 60 0 {NoGravity:1b,Tags:["islandtoptest"]}
summon armor_stand 0 60 0 {NoGravity:1b,Tags:["islandtoptest"]}
summon armor_stand 0 60 0 {NoGravity:1b,Tags:["islandtoptest"]}
summon armor_stand 0 60 0 {NoGravity:1b,Tags:["islandtoptest"]}

spreadplayers 0 0 0 50 false @e[type=armor_stand,tag=islandtoptest]
execute store result storage randomislands:isl isl.layer int 1 run scoreboard players get @e[type=armor_stand,tag=island,limit=1] islgeni
#execute as @e[type=armor_stand,tag=islandtoptest] at @s run function randomislands:top/generatetoplayer with storage randomislands:isl isl
#execute at @e[type=armor_stand,tag=islandtoptest] unless block ~ ~-1 ~ air run summon falling_block ~ ~1 ~
#execute at @e[type=armor_stand,tag=islandtoptest] unless block ~-1 ~-1 ~ air run summon falling_block ~-1 ~1 ~
#execute at @e[type=armor_stand,tag=islandtoptest] unless block ~1 ~-1 ~ air run summon falling_block ~1 ~1 ~
#execute at @e[type=armor_stand,tag=islandtoptest] unless block ~ ~-1 ~-1 air run summon falling_block ~ ~1 ~-1
#execute at @e[type=armor_stand,tag=islandtoptest] unless block ~ ~-1 ~1 air run summon falling_block ~ ~1 ~1

#kill @e[type=armor_stand,tag=islandtoptest]
#kill @e[type=armor_stand,tag=island]