@echo off

title 自动设置代理服务器

echo 自动设置代理服务器

echo 需要以普通用户权限、管理员权限各运行本程序一次

echo 正在设置代理服务器……

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f

rem reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /d "代理的IP:端口" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t REG_SZ /d socks=127.0.0.1:7070 /f

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyOverride /t REG_SZ /d "" /f

echo 正在刷新设置…… 
ipconfig /flushdns

echo 显示新的设置： 
ipconfig /all