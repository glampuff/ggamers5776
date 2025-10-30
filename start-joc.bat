@echo off
echo.
echo  Pornesc serverul local pentru joc...
echo.

:: Schimbă politica temporar doar pentru sesiunea curentă
powershell -Command "Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass"

:: Pornește serverul
start "" powershell -NoExit -Command "npx serve -l 3000"

:: Așteaptă 3 secunde
timeout /t 3 >nul

:: Deschide jocul în browser
start http://localhost:3000/joc.html

echo.
echo  Server pornit! Jocul se deschide automat.
echo  Închide fereastra PowerShell când termini.
echo.
pause