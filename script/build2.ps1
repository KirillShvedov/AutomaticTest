$curentPath = (Split-Path $MyInvocation.MyCommand.Path -Parent)
[xml]$configFile = get-content $curentPath\Config.xml
$ProjectFolder = $configFile.configuration.buildFolder.add | Where-Object { $_.Key -eq 'path' } | ForEach-Object { $_.value }
$parentPath = (Split-Path $curentPath -Parent)
$Excludes = '\\export\\|\\template\\'
if ([string]::IsNullOrEmpty($ProjectFolder)) {
    $ObjectNames = Get-ChildItem -Path $parentPath -Include *.feature -Recurse | Where-Object { $_.FullName -notmatch $Excludes }
    $epfNames = Get-ChildItem -Path ("$parentPath") -Recurse |
    Where-Object { $_.FullName -notmatch $Excludes } |
    Where-Object { $_.FullName.contains("\step_definitions\") }
}
else {
    $ObjectNames = Get-ChildItem -Path ("$parentPath\$ProjectFolder") -Include *.feature -Recurse | Where-Object { $_.FullName -notmatch $Excludes } 
    $epfNames = Get-ChildItem -Path ("$parentPath\$ProjectFolder") -Recurse |
    Where-Object { $_.FullName -notmatch $Excludes } |
    Where-Object { $_.FullName.contains("\step_definitions\") }
}

$epfNames | ForEach-Object { Remove-Item -Path $_.FullName }
Remove-Item -Path ("$parentPath\tmp_template\*") -Recurse -Force | write-host -NoNewline

$ObjectNames | ForEach-Object {
    $relativePath = (Split-Path (Resolve-Path $_.FullName -Relative) -Parent)
    $featureName = $_.BaseName
    $destinationPath = [System.IO.Path]::GetFullPath((Join-Path "$parentPath\tmp_template\" $relativePath))    
    Copy-Item -Path ("$parentPath\template\") -Destination ("$destinationPath\$featureName") -Recurse -Force
    Get-ChildItem -Path ("$destinationPath\$featureName") -Recurse |
    Where-Object { $_.PsIsContainer -eq $false } |
    ForEach-Object {
        Set-Content -Path $_.FullName -Value (((Get-Content $_.FullName ) -replace "relative_step_definitions", $relativePath) -replace "step_definitions", $featureName) -Encoding "UTF8"
    }
}