@echo off
color 1F
cd /d %~dp0
title Google Chrome 램디스크 자동 경로구성 배치파일 by SH.
mode con cols=100 lines=25
setlocal enabledelayedexpansion

:gotAdmin

:main
cls
echo.
echo		[ Google Chrome 램디스크 자동 경로구성 배치파일 by SH. ]
echo.
echo.
echo.
echo		1. 활성화 (크롬 종료 권장)
echo.
echo		2. 비활성화 [기본값]
echo.
echo		0. 종료
echo.
echo.
echo.
set menu=
set /p menu=원하시는 작업 번호를 입력 후 엔터(Enter)키를 눌러주세요 : 
if "%menu%" == "1" goto Go
if "%menu%" == "2" goto Default
if "%menu%" == "0" goto Exit

goto main

:Go
rem 사용자 크롬 경로 지정
set ChromeDrive="R:\Temp\Chrome_cache"
rem 크롬 Cache 폴더 지정
mkdir "%ChromeDrive%\Cache"
rd /s /q "%LocalAppData%\Google\Chrome\User Data\Default\Cache"
mklink /j "%LocalAppData%\Google\Chrome\User Data\Default\Cache" "%ChromeDrive%\Cache"
echo 크롬 Media Cache 폴더 지정
mkdir "%ChromeDrive%\Media Cache"
rd /s /q "%LocalAppData%\Google\Chrome\User Data\Default\Media Cache"
mklink /j "%LocalAppData%\Google\Chrome\User Data\Default\Media Cache" "%ChromeDrive%\Media Cache"
pause
goto main


:Default
rem 사용자 크롬 경로 지정
set ChromeDrive="R:\Temp\Chrome_cache"
rmdir "%ChromeDrive%"
rem 크롬 Cache , Media Cache 폴더 지정 삭제
rd "%ChromeDrive%"
rem 크롬  기본캐시폴더 삭제
rd /s /q "%LocalAppData%\Google\Chrome\User Data\Default\Cache"


pause
goto main


:EXit


