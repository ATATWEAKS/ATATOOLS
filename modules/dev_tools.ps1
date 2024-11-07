
# Dev Tools Module - dev_tools.ps1
Write-Output "[INFO] Development Tools Modul aktiviert."
# Install Visual Studio Code und Docker
try {
    winget install Microsoft.VisualStudioCode
    Write-Output "[INFO] Visual Studio Code installiert."
} catch {
    Write-Output "[WARNUNG] Fehler beim Installieren von Visual Studio Code: $($_.Exception.Message)"
}
try {
    winget install Docker.DockerDesktop
    Write-Output "[INFO] Docker Desktop installiert."
} catch {
    Write-Output "[WARNUNG] Fehler beim Installieren von Docker Desktop: $($_.Exception.Message)"
}
