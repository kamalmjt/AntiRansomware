@echo off
TITLE Antiransomware by Kamal Majaiti
Color 1A
echo "Activando proteccion...espere un momento.."
reg add "HKLM\Software\Microsoft\Windows Script Host\Settings" /v Enabled /t REG_DWORD /d 0 /f 2> nul > nul
reg add "HKCU\Software\Microsoft\Windows Script Host\Settings" /v Enabled /t REG_DWORD /d 0 /f 2> nul > nul
icacls "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5\" /deny *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%userprofile%\AppData\Local\Archivos temporales de Internet\Content.IE5\" /deny *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%userprofile%\AppData\Local\Temp" /deny *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%userprofile%\Configuración local\Temp" /deny *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "c:\Documents and Settings\All Users" /deny *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%userprofile%\AppData\Local\Temp" /deny *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%userprofile%\Configuración local\Archivos temporales de Internet" /deny *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files" /deny *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%userprofile%\AppData\Local\Microsoft\Windows\INetCache" /deny *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%AppData%" /deny *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%LocalAppData%" /deny *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%UserProfile%\Local Settings\" /deny *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%AppData%\Microsoft\" /deny *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%Temp%\Microsoft\" /deny *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%ProgramData%" /deny *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%Temp%\" /deny *S-1-1-0:(OI)(IO)(X) 2> nul > nul
echo "Proteccion activada."