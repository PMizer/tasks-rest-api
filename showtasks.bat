call runcrud.bat
if "%ERRORLEVEL%" == "0" goto startbrowser
echo.
echo RUNCRUD has errors - breaking work
goto fail

:startbrowser
start chrome http://localhost:8080/crud/v1/task/getTasks
if "%ERRORLEVEL%" == "0" goto end
echo .
goto fail

:fail
echo.
echo There were errors

:end
echo.
echo Work is finished.