:: Copy script for now
copy a:\activKey.bat C:\Windows\System32\activKey.bat

:: Setup command variable
set Sc=ONSTART
set TaskName=activKey
set TaskRun=C:\Windows\System32\activKey.bat
set System=SYSTEM

:: Create command
set Exp=schtasks /Create /Sc %Sc% /Tn %TaskName% /Tr  %TaskRun% /Ru %System

:: Exec command in powershell
powershell -Command "%Exp%"

set Exp=schtasks /run /Tn %TaskName%

:: Exec command in powershell
powershell -Command "%Exp%"
