$curentPath = (Split-Path $MyInvocation.MyCommand.Path -Parent)
[xml]$configFile= get-content $curentPath\Config.xml
$PlatformPath = $configFile.configuration.Platform1c.add | Where { $_.Key -eq 'path' } | % { $_.value }
$appName =  "$PlatformPath\bin\1cv8.exe"
$parentPath = (Split-Path $curentPath -Parent)
$template = "$parentPath\template\step_definitions.xml"
$Excludes = '\\export\\|\\template\\'
Get-ChildItem -Path $parentPath -Include *.feature -Recurse | where { $_.FullName -notmatch $Excludes} | foreach { 
    $featurePath = $_.Name -replace ".feature",".epf"
    $directory = $_.Directory.FullName 
    $epfPath  = ("$directory\step_definitions\$featurePath")
    if ((Test-Path  $epfPath  ) -eq "True"){
        Remove-Item -Path $epfPath}
    write-host  $epfPath    
    & $appName DESIGNER /LoadExternalDataProcessorOrReportFromFiles $template $epfPath  | Write-Host -NoNewline }