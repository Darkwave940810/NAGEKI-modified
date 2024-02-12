@echo off

pushd %~dp0

start /MIN inject -d -k mu3hook.dll amdaemon.exe -f -c config_common.json config_server.json config_client.json
REM echo "message"
REM Segatools is not required while we are using bepinex to modify the game
mu3 -screen-fullscreen 1 -screen-width 1080 -screen-height 1920

taskkill /f /im amdaemon.exe


echo.
echo Game processes have terminated
pause
