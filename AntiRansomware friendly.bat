TITLE Antiransomware by Kamal Majaiti
ECHO OFF
CLS
:MENU
ECHO.
ECHO ...............................................
ECHO Bienvenido al software antiransomware.
ECHO Este programa reduce enormemente la infeccion de ransomware, 
ECHO limitando la ejecucion de codigo en carpetas poco habituales.
ECHO Sugerencia: Utiliza el script ActivarAntiRansomware.bat para
ECHO colocarlo en el arranque de los equipos de tu directorio activo
ECHO mediante GPO.
ECHO PULSA la tecla indica para la tarea deseada.
ECHO ...............................................
ECHO.
ECHO 1 - Activar proteccion antiransomware.
ECHO 2 - Desactivar proteccion antiransomware.
ECHO 3 - Salir del programa.

ECHO.
SET /P M=Elige la opcion deseada entre 1,2,3:
IF %M%==1 GOTO antiransomwareon
IF %M%==2 GOTO antiransomwareoff
IF %M%==3 GOTO EOF

:antiransomwareon
@echo off
cls
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
GOTO MENU

:antiransomwareoff
cls
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
GOTO MENU


