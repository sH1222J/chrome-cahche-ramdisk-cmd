@echo off
color 1F
cd /d %~dp0
title Google Chrome ����ũ �ڵ� ��α��� ��ġ���� by SH.
mode con cols=100 lines=25
setlocal enabledelayedexpansion

:gotAdmin

:main
cls
echo.
echo		[ Google Chrome ����ũ �ڵ� ��α��� ��ġ���� by SH. [21. 06. 30. Modified :)]]
echo.
echo.
echo.
echo		1. Ȱ��ȭ (ũ�� ���� ����)
echo.
echo		2. ��Ȱ��ȭ [�⺻��]
echo.
echo		0. ����
echo.
echo.
echo.
set menu=
set /p menu=���Ͻô� �۾� ��ȣ�� �Է� �� ����(Enter)Ű�� �����ּ��� : 
if "%menu%" == "1" goto Go
if "%menu%" == "2" goto Default
if "%menu%" == "0" goto Exit

goto main

:Go
rem ����� ũ�� ��� ����
set /p ChromeTempDrivePath=�ӽ� ���� ���� ���:
set ChromeDrive=%ChromeTempDrivePath%
echo ������ ��δ� %ChromeTempDrivePath% �Դϴ�.
rem ũ�� Cache ���� ����
mkdir "%ChromeDrive%\Cache"
rd /s /q "%LocalAppData%\Google\Chrome\User Data\Default\Cache"
mklink /j "%LocalAppData%\Google\Chrome\User Data\Default\Cache" "%ChromeDrive%\Cache"
echo ũ�� Media Cache ���� ����
mkdir "%ChromeDrive%\Media Cache"
rd /s /q "%LocalAppData%\Google\Chrome\User Data\Default\Media Cache"
mklink /j "%LocalAppData%\Google\Chrome\User Data\Default\Media Cache" "%ChromeDrive%\Media Cache"
pause
goto main


:Default
rem ����� ũ�� ��� ����
set /p ChromeTempDrivePath=�ӽ� ���� ���� ���:
set ChromeDrive=%ChromeTempDrivePath%
echo ������ ��δ� %ChromeTempDrivePath% �Դϴ�.
rem ũ�� Cache , Media Cache ���� ���� ����
rd "%ChromeDrive%"
rem ũ��  �⺻ĳ������ ����
rd /s /q "%LocalAppData%\Google\Chrome\User Data\Default\Cache"
pause
goto main


:EXit


