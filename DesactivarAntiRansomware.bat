@echo off
TITLE Desactivar Antiransomware by Kamal Majaiti
Color 1A
echo "Desactivando proteccion...espere un momento.."
reg add "HKLM\Software\Microsoft\Windows Script Host\Settings" /v Enabled /t REG_DWORD /d 1 /f 2> nul > nul
reg add "HKCU\Software\Microsoft\Windows Script Host\Settings" /v Enabled /t REG_DWORD /d 1 /f 2> nul > nul
icacls "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5\" /grant *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%userprofile%\AppData\Local\Archivos temporales de Internet\Content.IE5\" /grant *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%userprofile%\AppData\Local\Temp" /grant *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%userprofile%\Configuración local\Temp" /grant *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "c:\Documents and Settings\All Users" /grant *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%userprofile%\AppData\Local\Temp" /grant *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%userprofile%\Configuración local\Archivos temporales de Internet" /grant *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files" /grant *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%userprofile%\AppData\Local\Microsoft\Windows\INetCache" /grant *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%AppData%" /grant *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%LocalAppData%" /grant *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%UserProfile%\Local Settings\" /grant *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%AppData%\Microsoft\" /grant *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%Temp%\Microsoft\" /grant *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%ProgramData%" /grant *S-1-1-0:(OI)(IO)(X) 2> nul > nul
icacls "%Temp%\" /grant *S-1-1-0:(OI)(IO)(X) 2> nul > nul
echo "Proteccion desactivada"
