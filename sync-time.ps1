# Aktiviert den Windows-Zeitdienst und stellt den Starttyp auf "Automatisch".
Set-Service -Name w32time -StartupType Automatic
Start-Service -Name w32time

# Konfiguriert den Zeitdienst mit dem NTP-Server "time.windows.com".
w32tm /config /manualpeerlist:"time.windows.com,0x1" /syncfromflags:manual /update

# Synchronisiert die Uhrzeit sofort.
w32tm /resync
