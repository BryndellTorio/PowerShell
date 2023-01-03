Clear-Host
$WShell = New-Object -com "Wscript.Shell"
$sleep = 11


while ($true) {
    $WShell.sendkeys("{SCROLLLOCK}")
    Clear-Host
    Write-Host "(*.*)"
    Start-Sleep -Milliseconds 1000
    Clear-Host
    Write-Host "        (#.#)"
    Start-Sleep -Milliseconds 1000
    Clear-Host
    Write-Host "                ($.$)"
    Start-Sleep -Milliseconds 1000
    Clear-Host
    Write-Host "                	(@.@)"
    Start-Sleep -Milliseconds 1000
    Clear-Host
    Write-Host "                        	(^^,)"
    Start-Sleep -Milliseconds 1000
    Clear-Host
    $WShell.sendkeys("{SCROLLLOCK}")
    Write-Host ". .. .. . . .. .  . . . .  . .. . ."  #WE ARE ONE [Morse Code]
    Start-Sleep -Seconds $sleep
}
