@echo off
:: Add all changes to staging
git add .

:: Get the current date and time
for /f "tokens=1-4 delims=/ " %%a in ('date /t') do set curDate=%%a-%%b-%%c
for /f "tokens=1-2 delims=: " %%a in ('time /t') do set curTime=%%a-%%b

:: Commit with the date and time as the message
git commit -m "%curDate% %curTime%"

:: Push changes
git push

:: Pause before closing
echo Press any key to close this window...
pause > nul