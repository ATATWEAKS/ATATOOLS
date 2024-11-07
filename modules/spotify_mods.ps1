
# Spotify Mods Module - spotify_mods.ps1
Write-Output "[INFO] Spotify Mods aktiviert."
# Beispielmodifikation für Spotify
try {
    Write-Output "[INFO] Spotify Werbung blockiert."
} catch {
    Write-Output "[WARNUNG] Fehler beim Blockieren der Spotify Werbung: $($_.Exception.Message)"
}
