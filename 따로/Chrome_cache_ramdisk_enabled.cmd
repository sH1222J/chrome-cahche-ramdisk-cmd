title Google Chrome 램디스크 자동 경로구성 배치파일(Namsik's Story)
echo Google Chrome 램디스크 자동 경로구성 배치파일(Namsik's Story)

echo 사용자 크롬 경로 지정
set ChromeDrive="R:\Temp\Chrome_cache"

echo 크롬 Cache 폴더 지정
mkdir "%ChromeDrive%\Cache"
rd /s /q "%LocalAppData%\Google\Chrome\User Data\Default\Cache"
mklink /j "%LocalAppData%\Google\Chrome\User Data\Default\Cache" "%ChromeDrive%\Cache"

echo 크롬 Media Cache 폴더 지정
mkdir "%ChromeDrive%\Media Cache"
rd /s /q "%LocalAppData%\Google\Chrome\User Data\Default\Media Cache"
mklink /j "%LocalAppData%\Google\Chrome\User Data\Default\Media Cache" "%ChromeDrive%\Media Cache"

pause