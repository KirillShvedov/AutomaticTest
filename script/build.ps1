$curentPath = (Split-Path $MyInvocation.MyCommand.Path -Parent)
[xml]$configFile = get-content $curentPath\Config.xml
$PlatformPath = $configFile.configuration.Platform1c.add | Where-Object { $_.Key -eq 'path' } | ForEach-Object { $_.value }
$appName = "$PlatformPath\bin\1cv8.exe"
$parentPath = (Split-Path $curentPath -Parent)
$template = "$parentPath\tmp_template\step_definitions.xml"
$Excludes = '\\export\\|\\template\\'
Get-ChildItem -Path $parentPath -Include *.feature -Recurse | Where-Object { $_.FullName -notmatch $Excludes } | ForEach-Object {
    Copy-Item -Path ("$parentPath\template\*") -Destination ("$parentPath\tmp_template\") -Recurse -Force
    $relativePath = (Split-Path (Resolve-Path $_.FullName -Relative) -Parent)
    $featureName = $_.Name -replace ".feature", ""
    Get-ChildItem -Path ".\tmp_template\" -Recurse | Where-Object { $_.PsIsContainer -eq $false } | ForEach-Object { Set-Content -Path $_.FullName -Value (((Get-Content $_.FullName ) -replace "relative_step_definitions", $relativePath) -replace "step_definitions", $featureName) -Encoding "UTF8" }
    $featurePath = $_.Name -replace ".feature", ".epf"
    $directory = $_.Directory.FullName 
    $epfPath = ("$directory\step_definitions\$featurePath")
    if ((Test-Path  $epfPath  ) -eq "True") {
        Remove-Item -Path $epfPath | write-host -NoNewline 
    }    
    [string[]]$argList = "DESIGNER", "/LoadExternalDataProcessorOrReportFromFiles", """$template""", """$epfPath"""
    Start-Process -FilePath $appName -ArgumentList $argList -Wait
    start-sleep -s 5
    write-host  $epfPath
    Remove-Item -Path ("$parentPath\tmp_template\*") -Recurse | write-host -NoNewline }