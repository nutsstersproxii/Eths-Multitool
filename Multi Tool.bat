@echo off
chcp 65001 > nul
:menu
cls
echo ███╗   ███╗██╗   ██╗██╗  ████████╗██╗    ████████╗ ██████╗  ██████╗ ██╗     
echo ████╗ ████║██║   ██║██║  ╚══██╔══╝██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     
echo ██╔████╔██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║     
echo ██║╚██╔╝██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║     
echo ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║       ██║   ╚██████╔╝╚██████╔╝███████╗
echo ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.
echo Made by @slashgamerx on Discord
echo.

echo Multi-Tool Menu
echo =================
echo 1. Domain Lookup
echo 2. IP Geolocation
echo 3. Port Scanning
echo 4. DNS Lookup
echo 5. Ping Test
echo 6. Traceroute
echo 7. HTTP Header Check
echo 8. Reverse IP Lookup
echo 9. Check Open Ports
echo 10. Exit
set /p choice="Select an option: "

if "%choice%"=="1" (
    set /p domain="Enter domain: "
    nslookup %domain%
    pause
    goto menu
) else if "%choice%"=="2" (
    set /p ip="Enter IP address: "
    curl http://ip-api.com/json/%ip%
    pause
    goto menu
) else if "%choice%"=="3" (
    set /p target="Enter target for scanning: "
    echo Scanning %target%...
    nmap %target%
    pause
    goto menu
) else if "%choice%"=="4" (
    set /p dns="Enter DNS server (e.g., 8.8.8.8): "
    set /p domain="Enter domain: "
    nslookup %domain% %dns%
    pause
    goto menu
) else if "%choice%"=="5" (
    set /p target="Enter target to ping: "
    ping %target%
    pause
    goto menu
) else if "%choice%"=="6" (
    set /p target="Enter target for traceroute: "
    tracert %target%
    pause
    goto menu
) else if "%choice%"=="7" (
    set /p url="Enter URL to check headers (e.g., http://example.com): "
    curl -I %url%
    pause
    goto menu
) else if "%choice%"=="8" (
    set /p ip="Enter IP address for reverse lookup: "
    nslookup %ip%
    pause
    goto menu
) else if "%choice%"=="9" (
    set /p target="Enter target to check open ports: "
    nmap %target%
    pause
    goto menu
) else if "%choice%"=="10" (
    exit
) else (
    echo Invalid choice. Please try again.
    pause
    goto menu
)
