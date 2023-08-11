# Set while loop values and start while loop
data modify storage randomislands:islgen bottomwhile.condition set value 'randomislands:bottom/bottomcondition'
data modify storage randomislands:islgen bottomwhile.command set value 'function randomislands:bottom/generatebottomtick'
data modify storage randomislands:islgen bottomwhile.datapath set value 'randomislands:islgen bottomwhile'
function datapackhelper:while_loop/whileloop with storage randomislands:islgen bottomwhile