
function startP()
{
$global:mtu=32
"Choose your MTU"
"1) Default MTU (32 bytes)"
"2) Custom MTU"
$mtutype = Read-Host
if ( 1 -eq $mtutype ) {chSave}
elseif ( 2 -eq $mtutype ) {setmtu}
}


function setmtu()
{
"Set your MTU."
$mtuinput = Read-Host
$mtu = $mtuinput
chSave
}

function chSave()
{
"Would you like to save the results to a file?"
"1) No"
"2) Yes"
$global:savetype = Read-Host
testprep
}

function testprep()
{
"Please enter the IP address you would like to ping."
$global:ip = Read-Host
test
}

function test()
{
cd..
if ( 1 -eq $savetype ){ping $ip -f -l $mtu}
elseif ( 2 -eq $savetype ) 
{
$fileid = Get-Random -Minimum 1111 -Maximum 9999
ping $ip -f -l $mtu >> SavedResults\PingResult-$fileid.txt
}
"What do you want to do? type the number"
"1) Test again"
"2) Change settings"
"3) Exit"
$einput = Read-Host
if ( 1 -eq $einput ){testprep}
elseif ( 2 -eq $einput ){startP}
elseif ( 3 -eq $einput ){exit}
}
$host.UI.RawUI.WindowTitle = "Connection tester (pinger)"
startP