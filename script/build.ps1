$appName = 'C:\Program Files\1cv8\8.3.15.1700'
$template = ""
Get-ChildItem -Path D:\simanov\project1c\billing_TDD -Include *.feature -Recurse | foreach { 
    $featurePath = $_.Name -replace ".feature",".epf"
    $directory = $_.Directory.FullName 
    $epfPath  = ("$directory\step_definitions\$featurePath")
    & $appName DESIGNER /LoadExternalDataProcessorOrReportFromFiles $template $epfPath  | Write-Host -NoNewline }