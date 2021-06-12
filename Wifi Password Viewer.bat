@echo off

:start
netsh wlan show profiles
echo.
echo ------------------------------------------------------------------
echo.
echo Type in the name of a wifi network showed up above.
echo.
set /p Wifi=
netsh wlan show profile %Wifi% key=clear
echo.
echo The Wifi password is behind "Key-content".

pause >NUL
cls
goto Start