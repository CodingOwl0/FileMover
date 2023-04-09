@echo off

:: Modify the follwing list, if a specific filetype needs to be moved to a specific folder
set imageList=png jpg bmp tiff
set programList=bat exe lnk
set documentList=txt rtf doc docx xls xlsx ppt pptx csv

:: Do not modify below this line, if you don´t know, what you are doing...

echo *** Moving files in folder %~dp0 in the correct folders ***
echo                  By CodingOwl0  - 2023

:: Program-Folder:
if not exist "%~dp0\Programs" mkdir "%~dp0\Programs"
for %%a in (%programList%) do (
  move "%~dp0\*.%%a" "%~dp0\Programs" >nul
)

:: Documents-Folder:
if not exist "%~dp0\Documents" mkdir "%~dp0\Documents"
for %%a in (%documentList%) do (
   move "%~dp0\*.%%a" "%~dp0\Documents" >nul
)

:: Image-Folder:
if not exist "%~dp0\Images" mkdir "%~dp0\Images"
for %%a in (%imageList%) do (
   move "%~dp0\*.%%a" "%~dp0\Images" >nul
)

echo *** Finished ***
timeout /t 3 >nul
exit

