$basename = "petg"
$src = ".\profiles\$basename"
$zip = ".\packages\$basename.zip"
$pkg = ".\packages\$basename.curaprofile"
Compress-Archive -Path $src -DestinationPath $zip -Force
Copy-Item $zip $pkg