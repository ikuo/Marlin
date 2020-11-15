$src = ".\packages\petg.curaprofile"
$basename = echo $(Get-Item $src).BaseName
$zip = ".\packages\$basename.zip"
Copy-Item $src $zip
Expand-Archive -Path $zip -DestinationPath .\profiles\$basename -Force