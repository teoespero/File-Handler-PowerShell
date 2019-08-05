Clear-Host

## script for finding a folder

$folderPath = "C:\PS-Learn\file-handling\"

$fileFound = Test-Path $folderPath
if ($fileFound -eq "True") {
    Write-Host "Folder found.-> $folderPath"
}

## script for finding a file
## if the file is found, display the date/time 
## when it was last modified

$filePath = "C:\PS-Learn\file-handling\down-with-the-king.txt"

$fileFound = Test-Path $filePath
if ($fileFound -eq "True") {

    Write-Host "File found. -> $filePath"
    $lastWritten = $(Get-Item $filePath).LastWriteTime
    Write-Host "Last Modified. -> $lastWritten"

    Write-Host "`n`n`n`nPress Enter to continue..."
    
    Read-Host

    ## copy the file

    Clear-Host

    Write-Host "This will copy the .txt file to a new location."

    $newPath = "$folderPathdown"+"down-with-the-king-copy.txt"
    
    Copy-Item $filePath $newPath

    Write-Host "$filePath copied. -> $newPath"

    Get-Item $folderPath*

    Write-Host "`n`n`n`nPress Enter to continue..."
    
    Read-Host

    ## move the file

    Clear-Host

    Write-Host "This will move the .txt file to a new location."

    $newMovePath = "$folderPathdown"+"down-with-the-king-01.txt"

    Move-Item $filePath $newMovePath -Force

    Get-Item $folderPath*

    Write-Host "`n`n`n`nPress Enter to continue..."
    
    Read-Host

    ## delete the file

    Clear-Host

    Write-Host "This will delete the copied txt file."

    Remove-Item $newPath -Recurse

    Get-Item $folderPath*

    Write-Host "`n`n`n`nPress Enter to continue..."
    
    Read-Host
}
else{
    $createItem = "$folderPath"+"down-with-the-king.txt"
    New-Item $createItem

    Set-Content $createItem "Get down with the king`nGet down with the king`nGet down with the king`nGet down with the king`n"`

    Get-Item $folderPath*

    Write-Host "`n`n`n`nPress Enter to continue..."
    
    Read-Host
}



