$ErrorActionPreference = "Stop"
$repoRoot = Split-Path -Parent $PSScriptRoot
$sourceRoot = Join-Path $repoRoot ".agents\skills"
$destinations = @(
  (Join-Path $env:USERPROFILE ".cursor\skills"),
  (Join-Path $env:USERPROFILE ".agents\skills"),
  (Join-Path $env:USERPROFILE ".claude\skills")
)

if (-not (Test-Path $sourceRoot)) {
  throw "No está la carpeta canónica $sourceRoot"
}

foreach ($destination in $destinations) {
  New-Item -ItemType Directory -Force -Path $destination | Out-Null
  Get-ChildItem -Path $sourceRoot -Directory | ForEach-Object {
    $link = Join-Path $destination $_.Name
    if (Test-Path $link) {
      Write-Output "ya existe $link"
      return
    }
    New-Item -ItemType Junction -Path $link -Target $_.FullName | Out-Null
    Write-Output "enlazado $link"
  }
}
