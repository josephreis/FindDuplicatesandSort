clear
$data = @"
Men
Men
Men
Women
Women
Women
Women
Joe
Catie
"@ -split "`r`n" | Group-Object | Sort-Object Count
Write-Host -ForegroundColor Yellow "This is the Data displaying what the duplicates are"
$data
Write-Host "`n"
Write-Host -ForegroundColor Yellow "This is the Data after it removes duplicates"
$data.name
Write-Host "`n"
Write-Host -ForegroundColor Yellow "This is now the Data after it has been sorted alphabetically"
$a = $data.name -split "`r`n" | Sort-Object
$a
Write-Host "`n"
Write-Host -ForegroundColor Green "The data is now stored in your clipboard"
Set-Clipboard $a