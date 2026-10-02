if (!$Env:SCOOP_HOME) {
    $Env:SCOOP_HOME = Resolve-Path (scoop prefix scoop)
}

. "$Env:SCOOP_HOME\test\Import-Bucket-Tests.ps1"
