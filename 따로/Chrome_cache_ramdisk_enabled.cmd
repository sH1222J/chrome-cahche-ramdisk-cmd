title Google Chrome ����ũ �ڵ� ��α��� ��ġ����(Namsik's Story)
echo Google Chrome ����ũ �ڵ� ��α��� ��ġ����(Namsik's Story)

echo ����� ũ�� ��� ����
set ChromeDrive="R:\Temp\Chrome_cache"

echo ũ�� Cache ���� ����
mkdir "%ChromeDrive%\Cache"
rd /s /q "%LocalAppData%\Google\Chrome\User Data\Default\Cache"
mklink /j "%LocalAppData%\Google\Chrome\User Data\Default\Cache" "%ChromeDrive%\Cache"

echo ũ�� Media Cache ���� ����
mkdir "%ChromeDrive%\Media Cache"
rd /s /q "%LocalAppData%\Google\Chrome\User Data\Default\Media Cache"
mklink /j "%LocalAppData%\Google\Chrome\User Data\Default\Media Cache" "%ChromeDrive%\Media Cache"

pause