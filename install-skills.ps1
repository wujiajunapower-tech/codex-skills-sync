param(
    [string]$Destination = (Join-Path $HOME ".agents\skills")
)

$repoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$sources = @(
    (Join-Path $repoRoot "skills\local"),
    (Join-Path $repoRoot "skills\user")
)

New-Item -ItemType Directory -Force -Path $Destination | Out-Null
foreach ($source in $sources) {
    if (Test-Path -LiteralPath $source) {
        Copy-Item -Path (Join-Path $source "*") -Destination $Destination -Recurse -Force
    }
}

Write-Output "Installed local and user Skill snapshots to $Destination"
