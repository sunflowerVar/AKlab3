@chcp 65001
@echo off
setlocal enableextensions enabledelayedexpansion
) else (
echo for help enter "/help"
echo Enter path to files for change their attributes:
set /p MyPath=
if "!MyPath!" equ "/help" (
echo .
echo  this program sets/removes the "read-only" attribute, depending on its presence
echo .
to work you will need to enter the full path to the files
echo .
pause
) else (
set cnt=0
if exist %MyPath% (
cd %MyPath%
  echo directory exists
for %%f in (*) do (
set /a cnt+=1
 set "attribut=1"
( for /f "tokens=2 delims=r" %%b in ("%%~af") do break ) || set "attribut="
    if defined attribut (
rem File is read-only.
 attrib -r %%f
) else (
rem File is not read-only.
attrib +r %%f
)
     ) 
if !cnt!==0 (
echo there are no files in the folder
) else ( 
echo attributes of !cnt! files have been changed
)

) else (
  
 echo not exist 

)
pause
exit
)