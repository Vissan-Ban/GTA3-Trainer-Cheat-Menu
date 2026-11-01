@echo off
setlocal EnableExtensions

rem Disassemble the supplied GTA III CLEO binaries with Sanny Builder.
rem Usage:
rem   decompile-all.cmd "C:\Path\To\SannyBuilder\sanny.exe"
rem Run from the repository root. Raw output is written to source\disassembled.
rem This does not modify the original CLEO binaries.

if "%~1"=="" (
    echo Usage: %~nx0 "full path to sanny.exe"
    exit /b 2
)

set "SANNY=%~1"
if not exist "%SANNY%" (
    echo ERROR: Sanny Builder executable not found: "%SANNY%"
    exit /b 2
)

set "OUT=source\disassembled"
if not exist "%OUT%" mkdir "%OUT%"

set "FAILED=0"
for %%F in (
    "CHEAT menu"
    "CHEAT_ally"
    "CHEAT_misc"
    "CHEAT_mission"
    "CHEAT_object"
    "CHEAT_skin"
    "CHEAT_teleport"
    "CHEAT_time"
    "CHEAT_vehicle"
    "CHEAT_weapon"
    "CHEAT_weather"
) do (
    echo.
    echo [DISASSEMBLE] CLEO\%%~F.cs
    "%SANNY%" --game gta3 --decompile "CLEO\%%~F.cs" "%OUT%\%%~F.txt"
    if errorlevel 1 (
        echo [FAILED] %%~F
        set "FAILED=1"
    ) else (
        if exist "%OUT%\%%~F.txt" (
            echo [OK] %%~F
        ) else (
            echo [FAILED] No output file for %%~F
            set "FAILED=1"
        )
    )
)

echo.
if "%FAILED%"=="1" (
    echo One or more scripts could not be disassembled. Check Sanny Builder's compile.log.
    exit /b 1
)

echo All 11 scripts were disassembled. Review the output before editing or recompiling.
exit /b 0
