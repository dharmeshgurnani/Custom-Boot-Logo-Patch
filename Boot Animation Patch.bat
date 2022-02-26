color c
tree
@echo off
color A
cls
:menu
cls
echo.
echo         ========================================== 
echo       "|                                          | "
echo       "|      *** Boot Animtion Patch ***         | "
echo       "|       For Lava Pixel V1 (seedmtk)        | "
echo       "|        Created by Dharmeshgurnani        | "
echo       "|                                          | "
echo         ========================================== 
echo  \ ===================================================== /
echo   \"Connect Lava Pixel V1 with USB debugging turned on" /
echo    \  "Grant All Permition (adb request , su request)" /
echo      =================================================
echo.
color c
echo Options
echo 1.Apply Patch 
echo 2.exit
echo.
color b
SET /P M=Type 1, 2 then press ENTER:
IF %M%==1 goto Enable
IF %M%==2 goto exit
IF %M%==3 goto info

:Enable 
echo Loading ADB
echo.
color c
echo.
adb
echo.
color b
pause
echo.
echo Starting Server
echo.
color c
echo.
adb kill-server
echo.
adb start-server
echo.
color b
echo.
adb devices
echo.
pause
echo.
echo Applying Patch
echo.
echo mounting...
echo.
adb shell "su -c 'mount -o rw,remount /oem'"
echo.
echo applying changes...
echo.
adb shell "su -c 'rm /oem/media/bootanimation.zip'"
echo.
adb reboot
echo Successfully Applyed Patch...
echo.
pause
echo.
cls 
goto suss

:suss
echo.
echo Boot Animtion Enabled Successfully
echo.
goto menu


:exit
timeout 5
cls
exit

:info
echo Creator Dharmesh gurnani 
echo xda developer dharmesh17
echo Script For Lava Pixel V1
pause
goto menu
