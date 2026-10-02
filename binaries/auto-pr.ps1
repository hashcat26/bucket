param (
    [String]$Upstream = "hashcat26/bucket:master"
)

if (!$Env:SCOOP_HOME) {
    $Env:SCOOP_HOME = Resolve-Path (scoop prefix scoop)
}

$AutoPr = "$Env:SCOOP_HOME/bin/auto-pr.ps1"
$Dir = "$PSScriptRoot/../bucket"

Invoke-Expression -Command "& '$AutoPr' -Dir '$Dir' -Upstream $Upstream $($Args | ForEach-Object {"$_ "})"
