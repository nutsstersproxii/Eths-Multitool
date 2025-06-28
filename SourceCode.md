@echo off
chcp 65001 > nul
title Eths Multitool

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
echo ==== Eths Multitool Menu ====
echo [1] DNS Lookup                        - Resolve domain names to IPs
echo [2] IP Geolocation                    - Find geographic info of an IP
echo [3] Ping Test                         - Check if a host is reachable
echo [4] Traceroute                        - Trace the path packets take
echo [5] HTTP Header Check                   - View server headers of a URL
echo [6] Reverse IP Lookup                 - Find domains on an IP
echo [7] Check Open Ports (PowerShell/Nmap)- Scan for open network ports
echo [8] IPConfig / All                     - Show all network configs
echo [9] Netstat -aon                       - Show active connections and ports
echo [10] Whois Lookup                      - Lookup registration info
echo [11] System Info                       - Get system details
echo [12] ARP -a                            - Show IP-MAC mappings
echo [13] Route Print                       - Show network routing table
echo [14] Show Wireless Profiles            - List saved Wi-Fi networks
echo [15] Show Network Interfaces           - Show network interface status
echo [16] PowerCFG Energy Report            - Generate power efficiency report
echo [17] DNS Cache                         - Clear DNS cache
echo [18] Exit                              - Exit the script
echo ==========================
set /p choice="Select an option: "

if "%choice%"=="1" goto dns_lookup
if "%choice%"=="2" goto ip_geo
if "%choice%"=="3" goto ping_test
if "%choice%"=="4" goto traceroute
if "%choice%"=="5" goto http_header
if "%choice%"=="6" goto reverse_dns
if "%choice%"=="7" goto open_ports
if "%choice%"=="8" goto ipconfig_all
if "%choice%"=="9" goto netstat
if "%choice%"=="10" goto whois_lookup
if "%choice%"=="11" goto systeminfo
if "%choice%"=="12" goto arp_a
if "%choice%"=="13" goto route_print
if "%choice%"=="14" goto show_wifi_profiles
if "%choice%"=="15" goto show_network_interfaces
if "%choice%"=="16" goto powercfg_energy
if "%choice%"=="17" goto flush_dns
if "%choice%"=="18" goto exit_script
echo Invalid option.
pause
goto menu

:dns_lookup
cls
echo.
echo --- DNS Lookup ---
set /p dns="Enter DNS server (e.g., 8.8.8.8): "
set /p domain="Enter domain: "
echo.
echo Executing: nslookup %domain% %dns%
nslookup %domain% %dns%
pause
goto menu

:ip_geo
cls
echo.
echo --- IP Geolocation ---
set /p ip="Enter IP address: "
echo.
echo To get geolocation info, open your browser or run:
echo curl http://ip-api.com/json/%ip%
echo or visit: http://ip-api.com/json/%ip%
pause
goto menu

:ping_test
cls
echo.
echo --- Ping Test ---
set /p target="Host to ping: "
echo.
echo Executing: ping %target%
ping %target%
pause
goto menu

:traceroute
cls
echo.
echo --- Traceroute ---
set /p target="Host for traceroute: "
echo.
echo Executing: tracert %target%
tracert %target%
pause
goto menu

:http_header
cls
echo.
echo --- HTTP Header Check ---
set /p url="Enter URL: "
echo.
echo Executing: curl -I %url%
curl -I %url%
pause
goto menu

:reverse_dns
cls
echo.
echo --- Reverse IP Lookup ---
set /p ip="Enter IP for reverse lookup: "
echo.
echo Executing: nslookup %ip%
nslookup %ip%
pause
goto menu

:open_ports
cls
echo.
echo --- Check Open Ports ---
set /p target="Host for port check: "
echo.
echo Use PowerShell or nmap for port checking.
echo Example: PowerShell -Command "Test-NetConnection -ComputerName %target% -Port 80"
pause
goto menu

:ipconfig_all
cls
echo.
echo --- IPConfig / All ---
ipconfig /all
pause
goto menu

:netstat
cls
echo.
echo --- Netstat -aon ---
netstat -aon
pause
goto menu

:whois_lookup
cls
echo.
echo --- Whois Lookup ---
echo Note: Whois command may not be available by default.
echo If installed, run: whois [domain or IP]
set /p target="Enter domain or IP for Whois: "
whois %target%
pause
goto menu

:systeminfo
cls
echo.
echo --- System Info ---
systeminfo
pause
goto menu

:arp_a
cls
echo.
echo --- ARP -a ---
arp -a
pause
goto menu

:route_print
cls
echo.
echo --- Route Print ---
route print
pause
goto menu

:show_wifi_profiles
cls
echo.
echo --- Show Wireless Profiles ---
netsh wlan show profiles
pause
goto menu

:show_network_interfaces
cls
echo.
echo --- Show Network Interfaces ---
netsh interface show interface
pause
goto menu

:powercfg_energy
cls
echo.
echo --- PowerCfg Energy Report ---
powercfg /energy
pause
goto menu

:flush_dns
cls
echo.
echo --- Flush DNS Cache ---
ipconfig /flushdns
pause
goto menu

:exit_script
echo.
echo Exiting... Goodbye!
pause
exit
