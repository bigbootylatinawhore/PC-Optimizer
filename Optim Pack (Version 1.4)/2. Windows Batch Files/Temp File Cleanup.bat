@echo off
@echo With love, bigbootylatina.
@echo.
@echo I'mma clean up your temporary files. You good with that?
@echo.
pause

color 3
Del /S /F /Q %temp%
Del /S /F /Q %Windir%\Temp
Del /S /F /Q C:\WINDOWS\Prefetch
@echo.
@echo Squeaky Clean. You're good to go!
@echo. 
pause