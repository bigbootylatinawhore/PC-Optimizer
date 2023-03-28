@echo off
cls
title command prompt - Disable HPET 
ver
bcdedit /deletevalue useplatformclock
cls