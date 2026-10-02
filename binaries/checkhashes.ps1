if (!$Env:SCOOP_HOME) {
    $Env:SCOOP_HOME = Resolve-Path (scoop prefix scoop)
}

$CheckHashes = "$Env:SCOOP_HOME/bin/checkhashes.ps1"
$Dir = "$PSScriptRoot/../bucket"

Invoke-Expression -Command "& '$CheckHashes' -Dir '$Dir' $($Args | ForEach-Object {"$_ "})"
