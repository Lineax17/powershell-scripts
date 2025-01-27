@echo off

REM Aktiviert den Windows-Zeitdienst und stellt den Starttyp auf "Automatisch".
sc config w32time start= auto
net start w32time

REM Konfiguriert den Zeitdienst mit dem NTP-Server "time.windows.com".
w32tm /config /manualpeerlist:"time.windows.com,0x1" /syncfromflags:manual /update

REM Synchronisiert die Uhrzeit sofort.
w32tm /resync

REM Abschlussmeldung
echo Der Windows-Zeitdienst wurde erfolgreich konfiguriert und synchronisiert
