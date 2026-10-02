if (!$Env:SCOOP_HOME) {
    $Env:SCOOP_HOME = Resolve-Path (scoop prefix scoop)
}

$MissingVer = "$Env:SCOOP_HOME/bin/missing-checkver.ps1"
$Dir = "$PSScriptRoot/../bucket"

Invoke-Expression -Command "& '$MissingVer' -Dir '$Dir' $($Args | ForEach-Object {"$_ "})"
