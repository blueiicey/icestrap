echo Ice Client - Cleaning cached files
@echo off
cd /D %temp%
for /d %%D in (*) do rd /s /q "%%D"
del /f /q *