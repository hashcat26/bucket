if (!$Env:SCOOP_HOME) {
    $Env:SCOOP_HOME = Resolve-Path (scoop prefix scoop)
}

$CheckUrls = "$Env:SCOOP_HOME/bin/checkurls.ps1"
$Dir = "$PSScriptRoot/../bucket"

Invoke-Expression -Command "& '$CheckUrls' -Dir '$Dir' $($Args | ForEach-Object {"$_ "})"
