@echo off
setlocal EnableExtensions

rem First-pass pilot: decompile only the main menu binary.
rem Run this from the repository root after placing the untouched original
rem archive contents in their original CLEO folder structure.
rem Usage: tools\decompile-pilot.cmd "C:\Path\To\SannyBuilder\sanny.exe"
rem Output: source\disassembled\CHEAT menu.txt
rem The original CLEO\CHEAT menu.cs is read-only input and is not modified.

if "%~1"=="" (
    echo Usage: %~nx0 "full path to sanny.exe"
    exit /b 2
)

set "SANNY=%~1"
set "INPUT=CLEO\CHEAT menu.cs"
set "OUTDIR=source\disassembled"
set "OUTPUT=%OUTDIR%\CHEAT menu.txt"

if not exist "%SANNY%" (
    echo ERROR: Sanny Builder executable not found: "%SANNY%"
    exit /b 2
)
if not exist "%INPUT%" (
    echo ERROR: Original input not found: "%INPUT%"
    echo Restore the archive folder structure before running this pilot.
    exit /b 2
)

if not exist "%OUTDIR%" mkdir "%OUTDIR%"
if exist "%OUTPUT%" (
    echo ERROR: Output already exists: "%OUTPUT%"
    echo Move the previous output aside; this pilot will not overwrite it.
    exit /b 2
)

echo Decompiling the main menu script in GTA III mode...
"%SANNY%" --game gta3 --decompile "%INPUT%" "%OUTPUT%"
if errorlevel 1 (
    echo ERROR: Sanny Builder reported a decompilation failure.
    echo Inspect compile.log in the Sanny Builder directory.
    exit /b 1
)

if not exist "%OUTPUT%" (
    echo ERROR: Sanny Builder returned without creating the expected output.
    echo Inspect compile.log in the Sanny Builder directory.
    exit /b 1
)

echo SUCCESS: "%OUTPUT%"
echo Do not edit or recompile yet. Review the output and compile.log first.
exit /b 0
