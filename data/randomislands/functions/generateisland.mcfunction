summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["islandtest"]}
$scoreboard players set @e[tag=islandtest] islgenheight $(heightdivide)
$execute as @e[tag=islandtest] at @s run function randomislands:shape/generateshape with storage $(datapath)
execute as @e[tag=islandtest] at @s run function randomislands:bottom/generatebottom
$execute as @e[tag=islandtest] at @s run function randomislands:top/generatetop with storage $(datapath)
kill @e[tag=islandtest]