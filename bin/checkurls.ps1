if(!($env:SCOOP_HOME)) { $env:SCOOP_HOME = Resolve-Path (scoop prefix scoop) }
$checkurls = "$env:SCOOP_HOME\bin\checkurls.ps1"
$dir = "$psscriptroot\.."
iex -command "$checkurls -dir $dir $($args |% { "$_ " })"
