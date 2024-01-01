function startP()
{
	  clear
    "How would you like to Netstat?"
    "1) Check all connections and listening ports"
    "2) Check Ethernet statistics"
    "3) Check the routing table"
    "4) Check current connection offload state"
    $global:mode = Read-Host
    test
}



function test(){
	  clear
    if ($mode -eq 1){netstat -a}
    elseif ($mode -eq 2){netstat -e}
    elseif ($mode -eq 3){netstat -r}
    elseif ($mode -eq 4){netstat -t}
    else {"Invalid input"}
    "What do you want to do? type the number"
    "1) Netstat again"
    "2) Change Settings"
    "3) Exit"
    $einput = Read-Host
    if ( 1 -eq $einput ){test}
    elseif ( 2 -eq $einput ){startP}
    elseif ( 3 -eq $einput ){exit}
}
$host.UI.RawUI.WindowTitle = "Netstat module"
startP
