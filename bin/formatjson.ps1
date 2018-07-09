if(!$env:SCOOP_HOME) { $env:SCOOP_HOME = Resolve-Path (scoop prefix scoop) }
$formatjson = "$env:SCOOP_HOME\bin\formatjson.ps1"
$dir = "$PSScriptRoot\.."
iex -command "$formatjson -path $dir $($args |% { "$_ " })"
