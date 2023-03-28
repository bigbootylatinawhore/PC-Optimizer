@echo off
title Low latency
bcdedit /set disabledynamictick yes
bcdedit /set useplatformtick yes 
bcdedit /set useplatformclock false
bcdedit /set tscsyncpolicy enhanced
bcdedit /set x2apicpolicy enable
cls
