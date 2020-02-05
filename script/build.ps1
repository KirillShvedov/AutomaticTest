$appName = 'C:\Program Files\1cv8\8.3.15.1700\bin\1cv8.exe'
$template = "D:\simanov\project1c\billing_TDD\template\step_definitions.xml"
Get-ChildItem -Path D:\simanov\project1c\billing_TDD -Include *.feature -Exclude example.feature -Recurse | foreach { 
    $featurePath = $_.Name -replace ".feature",".epf"
    $directory = $_.Directory.FullName 
    $epfPath  = ("$directory\step_definitions\$featurePath")
    if ((Test-Path  $epfPath  ) -eq "True"){
        Remove-Item -Path $epfPath}
    & $appName DESIGNER /LoadExternalDataProcessorOrReportFromFiles $template $epfPath  | Write-Host -NoNewline }