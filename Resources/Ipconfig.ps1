function startP()
{
"How would you like to Ipconfig?"
"1) Show info"
"2) Show detailed info"
"3) Flush DNS resolver cache"
$global:mode = Read-Host
test
}



function test(){
if ($mode -eq 1){ipconfig}
elseif ($mode -eq 2){ipconfig /all}
elseif ($mode -eq 3){ipconfig /flushdns}
"What do you want to do? type the number"
"1) Ipconfig again"
"2) Change Settings"
"3) Exit"
$einput = Read-Host
if ( 1 -eq $einput ){test}
elseif ( 2 -eq $einput ){startP}
elseif ( 3 -eq $einput ){exit}
}
$host.UI.RawUI.WindowTitle = "Ipconfig module"
startP
