#function startP()
#{
#"Would you like to save the results to a file?"
#"1) No"
#"2) Yes"
#$global:savetype = Read-Host
#testprep
#}

function testprep()
{
"Please enter the IP address you would like to trace the route to."
$global:ip = Read-Host
test
}

function test()
{
#cd..
#if ( 1 -eq $savetype ){tracert $ip}
#elseif ( 2 -eq $savetype ) 
#{
#$fileid = Get-Random -Minimum 1111 -Maximum 9999
#tracert $ip >> SavedResults\TraceResult-$fileid.txt
#}
tracert $ip
"What do you want to do? type the number"
"1) Trace again"
#"2) Change Settings"
"2) Exit"
$einput = Read-Host
clear
if ( 1 -eq $einput ){testprep}
#elseif ( 2 -eq $einput ){startP}
elseif ( 2 -eq $einput ){exit}
}
$host.UI.RawUI.WindowTitle = "Route tracer"
testprep
