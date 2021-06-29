title Google Chrome 램디스크 자동 경로구성 배치파일(sH.)
echo Google Chrome 램디스크 자동 경로구성 배치파일((sH.)

echo 사용자 크롬 경로 지정
set ChromeDrive="R:\Temp\Chrome_cache"
rmdir "%ChromeDrive%"

echo 크롬 Cache 폴더 지정 삭제
rmdir "%ChromeDrive%\Cache"

echo 크롬 Media Cache 폴더 지정 삭제
rmdir "%ChromeDrive%\Media Cache"

pause