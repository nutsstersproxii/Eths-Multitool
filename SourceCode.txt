@echo off
chcp 65001 > nul
title Multi-Tool Menu by @slashgamerx

:menu
cls
echo.
echo ███╗   ███╗██╗   ██╗██╗  ████████╗██╗    ████████╗ ██████╗  ██████╗ ██╗     
echo ████╗ ████║██║   ██║██║  ╚══██╔══╝██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     
echo ██╔████╔██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║     
echo ██║╚██╔╝██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║     
echo ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║       ██║   ╚██████╔╝╚██████╔╝███████╗
echo ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.
echo Made by @slashgamerx on Discord
echo.

echo ==== Multi-Tool Menu ====
echo [1] Domain Lookup
echo [2] IP Geolocation
echo [3] DNS Lookup with Custom Server
echo [4] Ping Test
echo [5] Traceroute
echo [6] HTTP Header Check
echo [7] Reverse IP Lookup
echo [8] Check Open Ports
echo [9] Exit
echo ==========================
set /p choice="Select an option: "

cls
:repeat_menu_banner
echo.
echo ███╗   ███╗██╗   ██╗██╗  ████████╗██╗    ████████╗ ██████╗  ██████╗ ██╗     
echo ████╗ ████║██║   ██║██║  ╚══██╔══╝██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     
echo ██╔████╔██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║     
echo ██║╚██╔╝██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║     
echo ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║       ██║   ╚██████╔╝╚██████╔╝███████╗
echo ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.

if "%choice%"=="1" (
    set /p domain="Enter domain: "
    echo.
    echo Looking up domain %domain%...
    nslookup %domain% || echo Error: nslookup failed.
) else if "%choice%"=="2" (
    set /p ip="Enter IP address: "
    echo.
    echo Fetching geolocation for %ip%...
    curl -s http://ip-api.com/json/%ip% || echo Error: curl failed.
) else if "%choice%"=="3" (
    set /p dns="Enter DNS server (e.g., 8.8.8.8): "
    set /p domain="Enter domain: "
    echo.
    echo Performing lookup for %domain% using server %dns%...
    nslookup %domain% %dns% || echo Error: nslookup failed.
) else if "%choice%"=="4" (
    set /p target="Enter host to ping: "
    echo.
    echo Pinging %target%...
    ping %target% || echo Error: ping failed.
) else if "%choice%"=="5" (
    set /p target="Enter host to traceroute: "
    echo.
    echo Tracing route to %target%...
    tracert %target% || echo Error: tracert failed.
) else if "%choice%"=="6" (
    set /p url="Enter URL (e.g., http://example.com): "
    echo.
    echo Retrieving HTTP headers for %url%...
    curl -I %url% || echo Error: curl failed.
) else if "%choice%"=="7" (
    set /p ip="Enter IP address for reverse lookup: "
    echo.
    echo Performing reverse DNS lookup on %ip%...
    nslookup %ip% || echo Error: nslookup failed.
) else if "%choice%"=="8" (
    set /p target="Enter host to check for open ports: "
    echo.
    echo Running open port check on %target%...
    nmap %target% || echo Error: nmap failed.
) else if "%choice%"=="9" (
    echo Exiting... Goodbye!
    exit
) else (
    echo Invalid option. Please enter a valid number.
)

echo.
pause
goto menu
