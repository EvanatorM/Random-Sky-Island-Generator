# Set while loop values and start while loop
data modify storage randomislands:islgen topwhile.condition set value 'randomislands:top/topcondition'
$data modify storage randomislands:islgen topwhile.command set value 'function randomislands:top/generatetoptick with storage $(datapath)'
data modify storage randomislands:islgen topwhile.datapath set value 'randomislands:islgen topwhile'
function datapackhelper:while_loop/whileloop with storage randomislands:islgen topwhile

$function randomislands:features/generatefeatures with storage $(datapath)