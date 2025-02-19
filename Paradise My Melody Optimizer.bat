:: #############################################################################################################################################
@shift /0
@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a" & set "COL=%%b")
Reg add HKCU\CONSOLE /v VirtualTerminalLevel /t REG_DWORD /d 1 /f >nul 2>&1
(for /f %%a in ('echo prompt $E^| cmd') do set "esc=%%a" )

:variables
set "mml=[38;5;205m"
set g=[92m
set r=[91m
set red=[04m
set l=[1m
set w=[0m
set b=[94m
set m=[95m
set p=[35m
set c=[35m
set d=[96m
set u=[0m
set z=[91m
set n=[96m
set y=[40;33m
set g2=[102m
set r2=[101m
set t=[40m
set gg=[93m
set q=[90m
set gr=[32m
set o=[38;5;202m
set bb=[38;5;74m
set nn=[38;5;82m
set rr=[1;91m
set blb=[1;94m
set neon_vp=[1;38;5;129m
set ha=[38;5;203m

:menu
mode 151,43
title Paradise My melody Optimizer by zWhitezinn55 and Memphis
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                      %mml%███╗   ███╗ ██╗   ██╗     ███╗   ███╗ ███████╗ ██╗       ██████╗  ██████╗  ██╗   ██╗    
echo                                      ████╗ ████║ ╚██╗ ██╔╝     ████╗ ████║ ██╔════╝ ██║      ██╔═══██╗ ██╔══██╗ ╚██╗ ██╔╝    
echo                                      ██╔████╔██║  ╚████╔╝      ██╔████╔██║ █████╗   ██║      ██║   ██║ ██║  ██║  ╚████╔╝     
echo                                      ██║╚██╔╝██║   ╚██╔╝       ██║╚██╔╝██║ ██╔══╝   ██║      ██║   ██║ ██║  ██║   ╚██╔╝      
echo                                      ██║ ╚═╝ ██║    ██║        ██║ ╚═╝ ██║ ███████╗ ███████╗ ╚██████╔╝ ██████╔╝    ██║       
echo                                      ╚═╝     ╚═╝    ╚═╝        ╚═╝     ╚═╝ ╚══════╝ ╚══════╝  ╚═════╝  ╚═════╝     ╚═╝       
echo.                                                                                         
echo.                                                                                                                                                                                                                                                                                                            
echo.                                                                                                                          
echo                 %mml%=========================================================================================================================                                                                                                                           
echo.
echo.
echo                            %w%Este programa oferece opções de otimização para melhorar o desempenho dos seus jogos e do seu sistema.
echo                          %mml%Aviso%w% : Crie Ponto De Restauracao / Não use caso tenha conta Microsoft Logada ou Pin no computador 
echo.
echo.                                                                                                                          
echo.
echo.
echo                             %mml%[%w% 1 %mml%]%w% Executar os tweaks                                      %mml%[%w% 2 %mml%]%w% Discord
echo                             %mml%[%w% 3 %mml%]%w% Conheça os criadores                                    %mml%[%w% 4 %mml%]%w% Sair  
echo.

set /p Comando=:
if "%Comando%" equ "1" (goto:op1)
if "%Comando%" equ "2" (goto:op2)
if "%Comando%" equ "3" (goto:op3)
if "%Comando%" equ "4" (goto:op4)

:op1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\ModernSleep" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DoNotConnectToWindowsUpdateInternetLocations" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "SetDisableUXWUAccess" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "1" /f
Reg.exe delete "HKCU\System\GameConfigStore" /v "Win32_AutoGameModeDefaultProfile" /f
Reg.exe delete "HKCU\System\GameConfigStore" /v "Win32_GameModeRelatedProcesses" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_DSEBehavior" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_EFSEFeatureFlags" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_DWORD /d "0" /f
bcdedit /set disabledynamictick yes
bcdedit /deletevalue useplatformclock
bcdedit /set useplatformtick yes
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DXGKrnl\ /v  MonitorLatencyTolerance /t  REG_DWORD /d  0 
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DXGKrnl\ /v  MonitorRefreshLatencyTolerance /t  REG_DWORD /d  0 
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" /v "SyncPolicy" /t REG_DWORD /d 5 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Personalization" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\BrowserSettings" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Credentials" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Accessibility" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Windows" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d 1 /f
call :menu

:op2
start https://discord.gg/Z9UpJUbUzk

:op3
echo msgbox "Saiba mais sobre o nosso trabalho ", vbinformation, "Paradise Optimizer Social" > %temp%\mensagem1.vbs
start %temp%\mensagem1.vbs
timeout /t 3 /nobreak > nul
start https://kzwhitezinn.github.io/55/
start https://memphis-ctrl.github.io/
call :menu

:op4
exit