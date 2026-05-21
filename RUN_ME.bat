@echo off
echo ====================================
echo  Online Reservation System - OIBSIP
echo ====================================
echo.

REM Check if javac exists
where javac >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Java JDK not found!
    echo Please install JDK from: https://adoptium.net
    pause
    exit /b 1
)

echo [1/3] Compiling Java files...
cd /d "%~dp0src"
javac reservation\*.java
if %errorlevel% neq 0 (
    echo ERROR: Compilation failed!
    pause
    exit /b 1
)
echo Compilation successful!

echo.
echo [2/3] Creating runnable JAR...
cd /d "%~dp0"
jar cfm OnlineReservationSystem.jar MANIFEST.MF -C src .
echo JAR created!

echo.
echo [3/3] Launching application...
java -jar OnlineReservationSystem.jar
pause
