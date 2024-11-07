
# Gaming Tweaks Module - gaming_tweaks.ps1
Write-Output "[INFO] Gaming Performance Tweaks aktiviert."
# Beispielhafte Gaming-Optimierung
# Deaktivierung des Windows Game Mode
try {
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\GameMode" -Name "AutoGameModeEnabled" -Value 0
    Write-Output "[INFO] Windows Game Mode deaktiviert."
} catch {
    Write-Output "[WARNUNG] Fehler beim Deaktivieren des Game Modes: $($_.Exception.Message)"
}

# Latenzreduktion für Netzwerkadapter
try {
    New-NetFirewallRule -DisplayName "Gaming Latenzreduktion" -Direction Outbound -Action Allow
    Write-Output "[INFO] Firewallregel für Gaming Performance erstellt."
} catch {
    Write-Output "[WARNUNG] Fehler beim Erstellen von Latenz-optimierter Firewallregel: $($_.Exception.Message)"
}
