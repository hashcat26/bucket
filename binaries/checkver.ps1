if (!$Env:SCOOP_HOME) {
    $Env:SCOOP_HOME = Resolve-Path (scoop prefix scoop)
}

$CheckVer = "$Env:SCOOP_HOME/bin/checkver.ps1"
$Dir = "$PSScriptRoot/../bucket"

Invoke-Expression -Command "& '$CheckVer' -Dir '$Dir' $($Args | ForEach-Object {"$_ "})"
