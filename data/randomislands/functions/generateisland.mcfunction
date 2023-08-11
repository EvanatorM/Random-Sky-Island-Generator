function randomislands:clearisland
summon armor_stand 0 60 0 {NoGravity:1b,Tags:["islandtest"]}
scoreboard players set @e[tag=islandtest] islgenheight 3
function randomislands:shape/generateshape