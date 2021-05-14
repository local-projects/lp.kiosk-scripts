REM Turn off the firewall
netsh advfirewall set allprofiles state off

REM Kill Windows Explorer and taskbar
taskkill /f /im explorer.exe /fi "memusage gt 2"

REM Start Chromium in Kiosk mode to open the desired URL
"C:\\Program Files\\Chromium\\Application\\chrome.exe\" --new --disable-pinch -kiosk --overscroll-history-navigation=0 --aggressive-cache-discard --disable-cache --disable-application-cache --disable-offline-load-stale-cache --disk-cache-size=0 --app=http://localhost:3000
