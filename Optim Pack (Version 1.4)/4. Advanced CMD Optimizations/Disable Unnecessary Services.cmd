echo off
color F0
title Disable Unnecessary Windows Service
mode con: cols=92 lines=21
cls

rem **This is a start menu designed to inform the user whether they would like to continue or not.**
:start
echo Batch script created by bigbootylatina.
timeout 2 > nul


rem **This is a choice system created to tell you possible choices, these values can be changed but may cause undesired results in their current setup**
:choice
cls
echo Disabler Options (Type in "std" or "adv" to disable services.)
echo Revert Changes (Type in "revert" to revert the changes.)
echo More Info (Type in "info" to get info.)
echo Which one would you like to choose?
set /p a=
if "%a%" == "std" goto :disablestd
if "%a%" == "adv" goto :disableadv
if "%a%" == "revert" goto :revert
if "%a%" == "info" goto :disablesvcinfo


rem **This is placed in front to make sure if misspelled, it will redirect you instead of running the service disabler**
:misspell
cls
echo Misspell detected!
timeout 2 > nul
echo Redirecting back to choices.
timeout 2 > nul
goto :choice


rem **This is the advanced service disabler option**
:disableadv
cls
sc stop AJRouter > nul
sc config AJRouter start= disabled > nul

sc stop ALG > nul
sc config ALG start= disabled > nul

sc stop CertPropSvc > nul
sc config CertPropSvc start= disabled > nul

sc stop DiagTrack > nul
sc config DiagTrack start= disabled > nul

sc stop MapsBroker > nul
sc config MapsBroker start= disabled > nul

sc stop Fax > nul
sc config Fax start= disabled > nul

sc stop CscService > nul
sc config CscService start= disabled > nul

sc stop RetailDemo > nul
sc config RetailDemo start= disabled > nul

sc stop seclogon > nul
sc config seclogon start= disabled > nul

sc stop SCardSvr > nul
sc config SCardSvr start= disabled > nul

sc stop ScDeviceEnum > nul
sc config ScDeviceEnum start= disabled > nul

sc stop SCPolicySvc > nul
sc config SCPolicySvc start= disabled > nul

sc stop TabletInputService > nul
sc config TabletInputService start= disabled > nul

sc stop WbioSrvc > nul
sc config WbioSrvc start= disabled > nul

sc stop WSearch > nul
sc config WSearch start= disabled > nul

sc stop WerSvc > nul
sc config WerSvc start= disabled > nul

sc stop stisvc > nul
sc config stisvc start= disabled > nul

sc stop wisvc > nul
sc config wisvc start= disabled > nul

sc stop XboxGipSvc > nul
sc config XboxGipSvc start= disabled > nul

sc stop XblAuthManager > nul
sc config XblAuthManager start= disabled > nul

sc stop XblGameSave > nul
sc config XblGameSave start= disabled > nul

sc stop XboxNetApiSvc > nul
sc config XboxNetApiSvc start= disabled > nul

sc stop SysMain > nul
sc config SysMain start= disabled > nul

sc stop mpssvc > nul
sc config mpssvc start= disabled > nul

sc stop Spooler > nul
sc config Spooler start= disabled > nul

sc stop RemoteRegistry > nul
sc config RemoteRegistry start= disabled > nul

sc stop lmhosts > nul
sc config lmhosts start= disabled > nul

sc stop PcaSvc > nul
sc config PcaSvc start= disabled > nul

sc stop TrkWks > nul
sc config TrkWks start= disabled > nul

sc stop Fax > nul
sc config Fax start= disabled > nul

sc stop iphlpsvc > nul
sc config iphlpsvc start= disabled > nul

sc stop lfsvc > nul
sc config lfsvc start= disabled > nul

sc stop WpcMonSvc > nul
sc config WpcMonSvc start= disabled > nul

sc stop SEMgrSvc > nul
sc config SEMgrSvc start= disabled > nul

sc stop lfsvc > nul
sc config lfsvc start= disabled > nul

sc stop Netlogon > nul
sc config Netlogon start= disabled > nul

sc stop CscService > nul
sc config CscService start= disabled > nul

sc stop WalletService > nul
sc config WalletService start= disabled > nul

sc stop fhsvc > nul
sc config fhsvc start= disabled > nul

sc stop FrameServer > nul
sc config FrameServer start= disabled > nul

sc stop AxInstSV > nul
sc config AxInstSV start= disabled > nul

sc stop SensorService > nul
sc config SensorService start= disabled > nul

sc stop BcastDVRUserService_4be3a > nul
sc config BcastDVRUserService_4be3a start= disabled > nul

sc stop tzautoupdate > nul
sc config tzautoupdate start= disabled > nul

sc stop Sense > nul
sc config Sense start= disabled > nul

sc stop gupdate > nul
sc config gupdate start= disabled > nul

sc stop gupdatem > nul
sc config gupdatem start= disabled > nul

sc stop AJRouter > nul
sc config AJRouter start= disabled > nul

sc stop ALG > nul
sc config ALG start= disabled > nul

sc stop AppMgmt > nul
sc config AppMgmt start= disabled > nul

sc stop tzautoupdate > nul
sc config tzautoupdate start= disabled > nul

sc stop BITS > nul
sc config BITS start= disabled > nul

sc stop BDESVC > nul
sc config BDESVC start= disabled > nul

sc stop PeerDistSvc > nul
sc config PeerDistSvc start= disabled > nul

sc stop CertPropSvc > nul 
sc config CertPropSvc start= disabled > nul

sc stop ClipSVC > nul
sc config ClipSVC start= disabled > nul

sc stop DiagTrack > nul
sc config DiagTrack start= disabled > nul

sc stop CDPSvc > nul 
sc config CDPSvc start= disabled > nul 

sc stop DusmSvc > nul
sc config DusmSvc start= disabled > nul
 
sc stop DoSvc > nul
sc config DoSvc start= disabled > nul

sc stop diagsvc > nul
sc config diagsvc start= disabled > nul

sc stop DPS > nul
sc config DPS start= disabled > nul

sc stop WdiServiceHost > nul
sc config WdiServiceHost start= disabled > nul

sc stop WdiSystemHost > nul
sc config WdiSystemHost start= disabled > nul

sc stop dmwappushservice > nul 
sc config dmwappushservice start= disabled > nul

sc stop MapsBroker > nul
sc config MapsBroker start= disabled > nul

sc stop EntAppSvc > nul
sc config EntAppSvc start= disabled > nul

sc stop HomeGroupListener > nul
sc config HomeGroupListener start= disabled > nul

sc stop HomeGroupProvider > nul
sc config HomeGroupProvider start= disabled > nul

sc stop IEEtwCollectorService > nul
sc config IEEtwCollectorService start= disabled > nul

sc stop PolicyAgent > nul
sc config PolicyAgent start= disabled > nul

sc stop diagnosticshub.standardcollector.service > nul
sc config diagnosticshub.standardcollector.service start= disabled > nul

sc stop SmsRouter > nul
sc config SmsRouter start= disabled > nul

sc stop defragsvc > nul
sc config defragsvc start= disabled > nul

sc stop PhoneSvc > nul
sc config PhoneSvc start= disabled > nul

sc stop WPDBusEnum > nul
sc config WPDBusEnum start= disabled > nul

sc stop RemoteRegistry > nul
sc config RemoteRegistry start= disabled > nul

sc stop RetailDemo > nul
sc config RetailDemo start= disabled > nul

sc stop RemoteAccess > nul
sc config RemoteAccess start= disabled > nul

sc stop SCardSvr > nul
sc config SCardSvr start= disabled > nul

sc stop ScDeviceEnum > nul
sc config ScDeviceEnum start= disabled > nul

sc stop SCPolicySvc > nul
sc config SCPolicySvc start= disabled > nul

sc stop SharedRealitySvc > nul
sc config SharedRealitySvc start= disabled > nul

sc stop SysMain > nul
sc config SysMain start= disabled > nul

sc stop WalletService > nul
sc config WalletService start= disabled > nul

sc stop TokenBroker > nul
sc config TokenBroker start= disabled > nul

sc stop WebClient > nul
sc config WebClient start= disabled > nul

sc stop WdNisSvc > nul
sc config WdNisSvc start= disabled > nul

sc stop WinDefend > nul
sc config WinDefend start= disabled > nul

sc stop SecurityHealthService > nul
sc config SecurityHealthService start= disabled > nul

sc stop FontCache > nul
sc config FontCache start= disabled > nul

sc stop FontCache3.0.0.0 > nul
sc config FontCache3.0.0.0 start= disabled > nul

sc stop WSearch > nul
sc config WSearch start= disabled > nul

sc stop W32Time > nul
sc config W32Time start= disabled > nul



goto :exit


rem **This is the basic service disabler option**
:disablestd
cls
sc stop AJRouter > nul
sc config AJRouter start= disabled > nul

sc stop ALG > nul
sc config ALG start= disabled > nul

sc stop CertPropSvc > nul
sc config CertPropSvc start= disabled > nul

sc stop DiagTrack > nul
sc config DiagTrack start= disabled > nul

sc stop MapsBroker > nul
sc config MapsBroker start= disabled > nul

sc stop Fax > nul
sc config Fax start= disabled > nul

sc stop CscService > nul
sc config CscService start= disabled > nul

sc stop RetailDemo > nul
sc config RetailDemo start= disabled > nul

sc stop seclogon > nul
sc config seclogon start= disabled > nul

sc stop SCardSvr > nul
sc config SCardSvr start= disabled > nul

sc stop ScDeviceEnum > nul
sc config ScDeviceEnum start= disabled > nul

sc stop SCPolicySvc > nul
sc config SCPolicySvc start= disabled > nul

sc stop TabletInputService > nul
sc config TabletInputService start= disabled > nul

sc stop WbioSrvc > nul
sc config WbioSrvc start= disabled > nul

sc stop WSearch > nul
sc config WSearch start= disabled > nul

sc stop WerSvc > nul
sc config WerSvc start= disabled > nul

sc stop stisvc > nul
sc config stisvc start= disabled > nul

sc stop wisvc > nul
sc config wisvc start= disabled > nul

sc stop SysMain > nul
sc config SysMain start= disabled > nul

sc stop mpssvc > nul
sc config mpssvc start= disabled > nul

sc stop RemoteRegistry > nul
sc config RemoteRegistry start= disabled > nul

sc stop lmhosts > nul
sc config lmhosts start= disabled > nul

sc stop PcaSvc > nul
sc config PcaSvc start= disabled > nul

sc stop TrkWks > nul
sc config TrkWks start= disabled > nul

sc stop Fax > nul
sc config Fax start= disabled > nul

sc stop iphlpsvc > nul
sc config iphlpsvc start= disabled > nul

sc stop lfsvc > nul
sc config lfsvc start= disabled > nul

sc stop WpcMonSvc > nul
sc config WpcMonSvc start= disabled > nul

sc stop SEMgrSvc > nul
sc config SEMgrSvc start= disabled > nul

sc stop lfsvc > nul
sc config lfsvc start= disabled > nul

sc stop Netlogon > nul
sc config Netlogon start= disabled > nul

sc stop CscService > nul
sc config CscService start= disabled > nul

sc stop WalletService > nul
sc config WalletService start= disabled > nul

sc stop fhsvc > nul
sc config fhsvc start= disabled > nul

sc stop FrameServer > nul
sc config FrameServer start= disabled > nul

sc stop AxInstSV > nul
sc config AxInstSV start= disabled > nul

sc stop SensorService > nul
sc config SensorService start= disabled > nul

sc stop tzautoupdate > nul
sc config tzautoupdate start= disabled > nul

sc stop Sense > nul
sc config Sense start= disabled > nul

sc stop AJRouter > nul
sc config AJRouter start= disabled > nul

sc stop ALG > nul
sc config ALG start= disabled > nul

sc stop AppMgmt > nul
sc config AppMgmt start= disabled > nul

sc stop tzautoupdate > nul
sc config tzautoupdate start= disabled > nul

sc stop BITS > nul
sc config BITS start= disabled > nul

sc stop BDESVC > nul
sc config BDESVC start= disabled > nul

sc stop PeerDistSvc > nul
sc config PeerDistSvc start= disabled > nul

sc stop CertPropSvc > nul 
sc config CertPropSvc start= disabled > nul

sc stop ClipSVC > nul
sc config ClipSVC start= disabled > nul

sc stop DiagTrack > nul
sc config DiagTrack start= disabled > nul

sc stop CDPSvc > nul 
sc config CDPSvc start= disabled > nul 

sc stop DusmSvc > nul
sc config DusmSvc start= disabled > nul
 
sc stop DoSvc > nul
sc config DoSvc start= disabled > nul

sc stop diagsvc > nul
sc config diagsvc start= disabled > nul

sc stop DPS > nul
sc config DPS start= disabled > nul

sc stop WdiServiceHost > nul
sc config WdiServiceHost start= disabled > nul

sc stop WdiSystemHost > nul
sc config WdiSystemHost start= disabled > nul

sc stop dmwappushservice > nul 
sc config dmwappushservice start= disabled > nul

sc stop MapsBroker > nul
sc config MapsBroker start= disabled > nul

sc stop EntAppSvc > nul
sc config EntAppSvc start= disabled > nul

sc stop HomeGroupListener > nul
sc config HomeGroupListener start= disabled > nul

sc stop HomeGroupProvider > nul
sc config HomeGroupProvider start= disabled > nul

sc stop IEEtwCollectorService > nul
sc config IEEtwCollectorService start= disabled > nul

sc stop PolicyAgent > nul
sc config PolicyAgent start= disabled > nul

sc stop diagnosticshub.standardcollector.service > nul
sc config diagnosticshub.standardcollector.service start= disabled > nul

sc stop SmsRouter > nul
sc config SmsRouter start= disabled > nul

sc stop defragsvc > nul
sc config defragsvc start= disabled > nul

sc stop PhoneSvc > nul
sc config PhoneSvc start= disabled > nul

sc stop WPDBusEnum > nul
sc config WPDBusEnum start= disabled > nul

sc stop RemoteRegistry > nul
sc config RemoteRegistry start= disabled > nul

sc stop RetailDemo > nul
sc config RetailDemo start= disabled > nul

sc stop RemoteAccess > nul
sc config RemoteAccess start= disabled > nul

sc stop SCardSvr > nul
sc config SCardSvr start= disabled > nul

sc stop ScDeviceEnum > nul
sc config ScDeviceEnum start= disabled > nul

sc stop SCPolicySvc > nul
sc config SCPolicySvc start= disabled > nul

sc stop SharedRealitySvc > nul
sc config SharedRealitySvc start= disabled > nul

sc stop SysMain > nul
sc config SysMain start= disabled > nul

sc stop WalletService > nul
sc config WalletService start= disabled > nul

sc stop TokenBroker > nul
sc config TokenBroker start= disabled > nul

sc stop WebClient > nul
sc config WebClient start= disabled > nul

sc stop WdNisSvc > nul
sc config WdNisSvc start= disabled > nul

sc stop WinDefend > nul
sc config WinDefend start= disabled > nul

sc stop SecurityHealthService > nul
sc config SecurityHealthService start= disabled > nul

sc stop FontCache > nul
sc config FontCache start= disabled > nul

sc stop FontCache3.0.0.0 > nul
sc config FontCache3.0.0.0 start= disabled > nul

sc stop WSearch > nul
sc config WSearch start= disabled > nul

sc stop W32Time > nul
sc config W32Time start= disabled > nul


goto :exit


rem **This is the service revert option**
:revert
cls
sc config AJRouter start= demand > nul

sc config AppXSvc start= demand > nul

sc config ALG start= demand > nul

sc config AppMgmt start= demand > nul
 
sc config AppReadiness start= demand > nul

sc config tzautoupdate start= demand > nul
 
sc config AssignedAccessManagerSvc start= demand > nul

sc config BITS start= delayed-auto > nul

sc config BDESVC start= demand > nul

sc config wbengine start= demand > nul

sc config BTAGService start= demand > nul

sc config bthserv start= demand > nul
 
sc config BthHFSrv start= demand > nul

sc config PeerDistSvc start= demand > nul

sc config CertPropSvc start= demand > nul

sc config ClipSVC start= demand > nul

sc config DiagTrack start= auto > nul

sc config CDPSvc start= demand > nul

sc config DusmSvc start= auto > nul

sc config DoSvc start= delayed-auto > nul

sc config diagsvc start= demand > nul

sc config DPS start= auto > nul

sc config WdiServiceHost start= demand > nul

sc config WdiSystemHost start= demand > nul

sc config TrkWks start= auto > nul

sc config MSDTC start= demand > nul

sc config dmwappushservice start= demand > nul

sc config DisplayEnhancementService start= demand > nul

sc config MapsBroker start= delayed-auto > nul

sc config fdPHost start= demand > nul

sc config FDResPub start= demand > nul

sc config EFS start= demand > nul

sc config EntAppSvc start= demand > nul

sc config fhsvc start= demand > nul

sc config lfsvc start= demand > nul

sc config GraphicsPerfSvc start= demand > nul

sc config HomeGroupListener start= demand > nul

sc config HomeGroupProvider start= demand > nul

sc config HvHost start= demand > nul

sc config hns start= demand > nul

sc config vmickvpexchange start= demand > nul

sc config vmicguestinterface start= demand > nul

sc config vmicshutdown start= demand > nul

sc config vmicheartbeat start= demand > nul

sc config vmicvmsession start= demand > nul

sc config vmicrdv start= demand > nul

sc config vmictimesync start= demand > nul

sc config vmicvss start= demand > nul

sc config IEEtwCollectorService start= demand > nul

sc config lltdsvc start= demand > nul

sc config iphlpsvc start= auto > nul

sc config IpxlatCfgSvc start= demand > nul

sc config PolicyAgent start= demand > nul

sc config irmon start= demand > nul

sc config SharedAccess start= demand > nul

sc config diagnosticshub.standardcollector.service start= demand > nul

sc config wlidsvc start= demand > nul

sc config AppVClient start= demand > nul

sc config NgcSvc start= demand > nul
 
sc config NgcCtnrSvc start= demand > nul

sc config smphost start= demand > nul

sc config InstallService start= demand > nul

sc config SmsRouter start= demand > nul

sc config MSiSCSI start= demand > nul

sc config NaturalAuthentication start= demand > nul

sc config NetTcpPortSharing start= demand > nul
  
sc config Netlogon start= demand > nul

sc config NcdAutoSetup start= demand > nul

sc config NcbService start= auto > nul

sc config NcaSvc start= demand > nul

sc config CscService start= demand > nul

sc config defragsvc start= demand > nul

sc config SEMgrSvc start= demand > nul

sc config PNRPsvc start= demand > nul

sc config p2psvc start= demand > nul

sc config p2pimsvc start= demand > nul

sc config pla start= demand > nul

sc config PhoneSvc start= demand > nul

sc config WPDBusEnum start= demand > nul

sc config Spooler start= auto > nul

sc config PrintNotify start= demand > nul

sc config PcaSvc start= auto > nul

sc config WpcMonSvc start= demand > nul

sc config QWAVE start= demand > nul

sc config RasAuto start= demand > nul

sc config RasMan start= demand > nul

sc config SessionEnv start= demand > nul

sc config TermService start= demand > nul

sc config UmRdpService start= demand > nul

sc config RpcLocator start= auto > nul

sc config RemoteRegistry start= demand > nul

sc config RetailDemo start= demand > nul

sc config RemoteAccess start= demand > nul

sc config RmSvc start= demand > nul

sc config SNMPTRAP start= demand > nul

sc config seclogon start= demand > nul

sc config wscsvc start= delayed-auto > nul

sc config SamSs start= demand > nul

sc config SensorDataService start= demand > nul

sc config SensrSvc start= demand > nul

sc config SensorService start= demand > nul

sc config LanmanServer start= auto > nul

sc config shpamsvc start= demand > nul
 
sc config ShellHWDetection start= auto > nul

sc config SCardSvr start= demand > nul

sc config ScDeviceEnum start= demand > nul

sc config SCPolicySvc start= demand > nul

sc config SharedRealitySvc start= demand > nul

sc config StorSvc start= demand > nul

sc config TieringEngineService start= demand > nul

sc config SysMain start= auto > nul

sc config SgrmBroker start= delayed-auto > nul

sc config lmhosts start= auto > nul

sc config TapiSrv start= demand > nul

sc config Themes start= auto> nul

sc config tiledatamodelsvc start= auto > nul

sc config TabletInputService start= demand > nul

sc config UsoSvc start= demand > nul

sc config UevAgentService start= demand > nul

sc config WalletService start= demand > nul

sc config wmiApSrv start= demand > nul

sc config WwanSvc start= demand > nul

sc config TokenBroker start= demand > nul

sc config WebClient start= demand > nul

sc config WFDSConMgrSvc start= demand > nul

sc config SDRSVC start= demand > nul

sc config WbioSrvc start= auto > nul

sc config FrameServer start= demand > nul

sc config wcncsvc start= demand > nul

sc config Sense start= demand > nul

sc config WdNisSvc start= demand > nul

sc config WinDefend start= auto > nul

sc config SecurityHealthService start= auto > nul

sc config WEPHOSTSVC start= demand > nul

sc config WerSvc start= demand > nul

sc config Wecsvc start= demand > nul

sc config FontCache start= auto > nul

sc config StiSvc start= delayed-auto > nul

sc config wisvc start= demand > nul

sc config LicenseManager start= demand > nul

sc config icssvc start= demand > nul

sc config WMPNetworkSvc start= demand > nul

sc config FontCache3.0.0.0 start= auto > nul

sc config WpnService start= auto > nul

sc config perceptionsimulation start= demand > nul

sc config spectrum start= demand > nul

sc config WinRM start= demand > nul

sc config WSearch start= delayed-auto > nul

sc config SecurityHealthService start= auto > nul
 
sc config W32Time start= demand > nul

sc config wuauserv start= demand > nul

sc config WaaSMedicSvc start= demand > nul

sc config LanmanWorkstation start= auto > nul

sc config XboxGipSvc start= demand > nul

sc config xbgm start= demand > nul

sc config XblAuthManager start= demand > nul

sc config XblGameSave start= demand > nul

sc config XboxNetApiSvc start= demand > nul

sc config WlanSvc start= auto > nul

goto :revertexit


rem **This is the options info**
:disablesvcinfo
cls
echo Standard Info (Type in "std" to choose)
echo Disables 25-30 services, keeps most services like Xbox, GameDVR, etc.
echo.
echo Advanced Info (Type in "adv" to choose)
echo Disables 35-40 services, keeps only the vital services.
timeout 3 > nul
echo.
echo Which option would you like to choose?
set /p a=
if "%a%" == "std" goto :disablestd
if "%a%" == "adv" goto :disableadv



rem **This is placed in front to make sure if misspelled, it will redirect you instead of running the service disabler**
:misspell
cls
echo Misspell detected!
timeout 2 > nul
echo Redirecting back to info.
timeout 2 > nul
goto :disablesvcinfo


rem **This is the Exit system info entry**
:exit
cls
echo Nicely Done!
timeout 3 > nul
cls
echo Exiting.
timeout 1 > nul
cls
echo Exiting..
timeout 1 > nul
cls
echo Exiting...
timeout 1 > nul
exit

rem **This is the Revert Exit system info entry**
:revertexit
cls
echo Undone Changes!
timeout 3 > nul
cls
echo Exiting.
timeout 1 > nul
cls
echo Exiting..
timeout 1 > nul
cls
echo Exiting...
timeout 1 > nul
exit










