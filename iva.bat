@echo off
color 0A
:start

echo [%time%] Analyzing network topology...
netstat -an | findstr ESTABLISHED
timeout 3 >nul

echo.
echo [%time%] Scanning active processes...
tasklist | findstr /i "system chrome firefox edge"
timeout 2 >nul

echo.
echo [%time%] Retrieving system configuration...
systeminfo | findstr /C:"OS" /C:"System" /C:"Memory"
timeout 3 >nul

echo.
echo [%time%] Checking network interfaces...
ipconfig /all | findstr /C:"IPv4" /C:"Subnet" /C:"Gateway" /C:"DNS"
timeout 3 >nul

echo.
echo [%time%] Monitoring directory structure...
dir /s /b | findstr /i "\.log \.txt \.dll" | more
timeout 2 >nul

echo.
echo [%time%] Testing connectivity to external servers...
ping -n 4 8.8.8.8
timeout 2 >nul

echo.
echo [%time%] Tracing network routes...
tracert -h 10 google.com
timeout 3 >nul

echo.
echo [%time%] Analyzing disk usage...
wmic logicaldisk get name,size,freespace
timeout 3 >nul

echo.
echo [%time%] Checking CPU performance metrics...
wmic cpu get name,numberofcores,maxclockspeed
timeout 2 >nul

echo.
echo [%time%] Scanning network adapters...
wmic nic get name,speed,macaddress
timeout 3 >nul

echo.
echo [%time%] Process cycle complete. Restarting diagnostics...
timeout 2 >nul
cls

goto start