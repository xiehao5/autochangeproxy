@echo off

title �Զ����ô���������

echo ������մ������������á��� 

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0 /f

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /d "" /f

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyOverride /t REG_SZ /d 0 /f 

echo ���������������Ѿ����

echo ����ˢ�����á��� 
ipconfig /flushdns

echo ��ʾ�µ����ã� 
ipconfig /all