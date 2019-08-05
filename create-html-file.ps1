$currDir = Get-Location


$myPathToFile = "$currDir"+"\running.html"


Get-Service | Where-Object {$_.Status -eq "running"} | ConvertTo-Html Name, DisplayName, Status | Set-Content $myPathToFile

Invoke-Expression $myPathToFile