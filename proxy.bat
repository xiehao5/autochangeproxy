@echo off

title �Զ����ô���������

echo �Զ����ô���������

echo ��Ҫ����ͨ�û�Ȩ�ޡ�����ԱȨ�޸����б�����һ��

echo �������ô�������������

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f

rem reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /d "������IP:�˿�" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t REG_SZ /d socks=127.0.0.1:7070 /f

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyOverride /t REG_SZ /d "" /f

echo ����ˢ�����á��� 
ipconfig /flushdns

echo ��ʾ�µ����ã� 
ipconfig /all