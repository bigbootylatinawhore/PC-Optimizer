echo off
color F0
title  HDD and SSD Optimizer
mode con: cols=71 lines=21

cls
echo.
echo   * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
echo   *                                                                 *
echo   *  ````````````````````````                                       *
echo   *  ``MMMMMMM```````````````  M  M MMM  MMM   MMM  MMMM MMMM MMM   *
echo   *  ``MM````````````````````  MMMM M  M M  M M M M  M M  M M M  M  *
timeout 1 > nul                      
echo   *  ``MM``MMMMMM-MMMMMM`````  MMMM M  M M  M MM M  M M  M M  M  M  *
echo   *  ``MM `MMM``````MM```````  M  M MMM  MMM  M   M MMMM MMMM MMM   *
echo   *  ``````MMMMMM```MM```````                                       *
echo   *  ``````MMM``````MM``MM```                                       *
echo   *  ``````MMMMMM```MM``MM```  MMMM MMM MMM M MMMMM M MMM MMM MMMM  *
timeout 1 > nul
echo   *  ```````````````````MM```  M  M M.M  M  M M M M M  M  MM  MM M  *
echo   *  ``````````````MMMMMMM```  MMMM M    M  M M M M M MMM MMM M M   *
echo   *  ````````````````````````                                       *
echo   *                                                                 *
echo   * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
echo                Welcome to the ET HDD and SSD Optimizer!
net session >nul 2>&1
if %errorlevel% equ 0 (
    echo. 
) else (
    echo          Administrator privileges are REQUIRED to run this CMD!
    timeout 3 > nul
    exit
)
timeout 2 > nul
cls

powershell "Get-PhysicalDisk | Format-Table -AutoSize" | findstr /i "HDD" > nul
if %errorlevel% equ 0 (
echo.
echo   * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
echo   *                                                                 *
echo   *  ````````````````````````                                       *
echo   *  ``MMMMMMM```````````````  M  M MMM  MMM   MMM  MMMM MMMM MMM   *
echo   *  ``MM````````````````````  MMMM M  M M  M M M M  M M  M M M  M  *
echo   *  ``MM``MMMMMM-MMMMMM`````  MMMM M  M M  M MM M  M M  M M  M  M  *
echo   *  ``MM `MMM``````MM```````  M  M MMM  MMM  M   M MMMM MMMM MMM   *
echo   *  ``````MMMMMM```MM```````                                       *
echo   *  ``````MMM``````MM``MM```                                       *
echo   *  ``````MMMMMM```MM``MM```  MMMM MMM MMM M MMMMM M MMM MMM MMMM  *
echo   *  ```````````````````MM```  M  M M.M  M  M M M M M  M  MM  MM M  *
echo   *  ``````````````MMMMMMM```  MMMM M    M  M M M M M MMM MMM M M   *
echo   *  ````````````````````````                                       *
echo   *                                                                 *
echo   * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
echo                      Your storage device is a HDD.
timeout 3 > nul
goto :hdd
)

cls
powershell "Get-PhysicalDisk | Format-Table -AutoSize" | findstr /i "SSD" > nul
if %errorlevel% equ 0 (
echo.
echo   * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
echo   *                                                                 *
echo   *  ````````````````````````                                       *
echo   *  ``MMMMMMM```````````````  M  M MMM  MMM   MMM  MMMM MMMM MMM   *
echo   *  ``MM````````````````````  MMMM M  M M  M M M M  M M  M M M  M  *
echo   *  ``MM``MMMMMM-MMMMMM`````  MMMM M  M M  M MM M  M M  M M  M  M  *
echo   *  ``MM `MMM``````MM```````  M  M MMM  MMM  M   M MMMM MMMM MMM   *
echo   *  ``````MMMMMM```MM```````                                       *
echo   *  ``````MMM``````MM``MM```                                       *
echo   *  ``````MMMMMM```MM``MM```  MMMM MMM MMM M MMMMM M MMM MMM MMMM  *
echo   *  ```````````````````MM```  M  M M.M  M  M M M M M  M  MM  MM M  *
echo   *  ``````````````MMMMMMM```  MMMM M    M  M M M M M MMM MMM M M   *
echo   *  ````````````````````````                                       *
echo   *                                                                 *
echo   * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
echo                      Your storage device is a SSD.
timeout 3 > nul
goto :ssd
)



:hdd
fsutil behavior set disabledeletenotify 1 > nul
fsutil behavior set mftzone 2 > nul 
fsutil behavior set disablelastaccess 1 > nul
fsutil behavior set memoryusage 2 > nul
fsutil behavior set encryptpagingfile 0 > nul
goto :finish

:ssd
fsutil behavior set disabledeletenotify 0 > nul
fsutil behavior set mftzone 2 > nul 
fsutil behavior set disablelastaccess 1 > nul
fsutil behavior set memoryusage 2 > nul
fsutil behavior set encryptpagingfile 0 > nul
goto :finish

:finish
cls
title Finished! 
echo.
echo   * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
echo   *                                                                 *
echo   *  ````````````````````````                                       *
echo   *  ``MMMMMMM```````````````  M  M MMM  MMM   MMM  MMMM MMMM MMM   *
echo   *  ``MM````````````````````  MMMM M  M M  M M M M  M M  M M M  M  *
echo   *  ``MM``MMMMMM-MMMMMM`````  MMMM M  M M  M MM M  M M  M M  M  M  *
echo   *  ``MM `MMM``````MM```````  M  M MMM  MMM  M   M MMMM MMMM MMM   *
echo   *  ``````MMMMMM```MM```````                                       *
echo   *  ``````MMM``````MM``MM```                                       *
echo   *  ``````MMMMMM```MM``MM```  MMMM MMM MMM M MMMMM M MMM MMM MMMM  *
echo   *  ```````````````````MM```  M  M M.M  M  M M M M M  M  MM  MM M  *
echo   *  ``````````````MMMMMMM```  MMMM M    M  M M M M M MMM MMM M M   *
echo   *  ````````````````````````                                       *
echo   *                                                                 *
echo   * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
echo                  ET HDD and SSD Optimizer is finished!
timeout 2 > nul

cls
echo.
echo   * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
echo   *                                                                 *
echo   *  ````````````````````````                                       *
echo   *  ``MMMMMMM```````````````  M  M MMM  MMM   MMM  MMMM MMMM MMM   *
echo   *  ``MM````````````````````  MMMM M  M M  M M M M  M M  M M M  M  *
echo   *  ``MM``MMMMMM-MMMMMM`````  MMMM M  M M  M MM M  M M  M M  M  M  *
echo   *  ``MM `MMM``````MM```````  M  M MMM  MMM  M   M MMMM MMMM MMM   *
echo   *  ``````MMMMMM```MM```````                                       *
echo   *  ``````MMM``````MM``MM```                                       *
echo   *  ``````MMMMMM```MM``MM```  MMMM MMM MMM M MMMMM M MMM MMM MMMM  *
echo   *  ```````````````````MM```  M  M M.M  M  M M M M M  M  MM  MM M  *
echo   *  ``````````````MMMMMMM```  MMMM M    M  M M M M M MMM MMM M M   *
echo   *  ````````````````````````                                       *
echo   *                                                                 *
echo   * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
title Exiting in 3 seconds
echo                      Exiting the CMD in 3 seconds.
timeout 1 > nul

cls
echo.
echo   * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
echo   *                                                                 *
echo   *  ````````````````````````                                       *
echo   *  ``MMMMMMM```````````````  M  M MMM  MMM   MMM  MMMM MMMM MMM   *
echo   *  ``MM````````````````````  MMMM M  M M  M M M M  M M  M M M  M  *
echo   *  ``MM``MMMMMM-MMMMMM`````  MMMM M  M M  M MM M  M M  M M  M  M  *
echo   *  ``MM `MMM``````MM```````  M  M MMM  MMM  M   M MMMM MMMM MMM   *
echo   *  ``````MMMMMM```MM```````                                       *
echo   *  ``````MMM``````MM``MM```                                       *
echo   *  ``````MMMMMM```MM``MM```  MMMM MMM MMM M MMMMM M MMM MMM MMMM  *
echo   *  ```````````````````MM```  M  M M.M  M  M M M M M  M  MM  MM M  *
echo   *  ``````````````MMMMMMM```  MMMM M    M  M M M M M MMM MMM M M   *
echo   *  ````````````````````````                                       *
echo   *                                                                 *
echo   * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
title Exiting in 2 seconds
echo                      Exiting the CMD in 2 seconds.
timeout 1 > nul

cls
echo.
echo   * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
echo   *                                                                 *
echo   *  ````````````````````````                                       *
echo   *  ``MMMMMMM```````````````  M  M MMM  MMM   MMM  MMMM MMMM MMM   *
echo   *  ``MM````````````````````  MMMM M  M M  M M M M  M M  M M M  M  *
echo   *  ``MM``MMMMMM-MMMMMM`````  MMMM M  M M  M MM M  M M  M M  M  M  *
echo   *  ``MM `MMM``````MM```````  M  M MMM  MMM  M   M MMMM MMMM MMM   *
echo   *  ``````MMMMMM```MM```````                                       *
echo   *  ``````MMM``````MM``MM```                                       *
echo   *  ``````MMMMMM```MM``MM```  MMMM MMM MMM M MMMMM M MMM MMM MMMM  *
echo   *  ```````````````````MM```  M  M M.M  M  M M M M M  M  MM  MM M  *
echo   *  ``````````````MMMMMMM```  MMMM M    M  M M M M M MMM MMM M M   *
echo   *  ````````````````````````                                       *
echo   *                                                                 *
echo   * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
title Exiting in 1 second
echo                      Exiting the CMD in 1 second.
timeout 1 > nul
exit