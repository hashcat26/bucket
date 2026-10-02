if (!$Env:SCOOP_HOME) {
    $Env:SCOOP_HOME = Resolve-Path (scoop prefix scoop)
}

$FormatJson = "$Env:SCOOP_HOME/bin/formatjson.ps1"
$Path = "$PSScriptRoot/../bucket"

Invoke-Expression -Command "& '$FormatJson' -Dir '$Path' $($Args | ForEach-Object {"$_ "})"
