echo ELITE FIXER
echo By VoxiClient


@echo off

REM Set the path to the Version.txt file and the Elite folder in the %temp% directory
set "versionFile=%temp%\Version.txt"
set "eliteFolder=%temp%\Elite"


:menu
cls
REM Display menu options
echo Select an option:
echo 1) Reset Version
echo 2) Uninstall Elite
echo 3) Exit
set /p choice="Enter your choice (1, 2, or 3): "

REM Handle user choice
if "%choice%"=="1" (
    REM Check if the Version.txt file exists and set its contents to 0.0.1
    if exist "%versionFile%" (
        echo 0.0.1 > "%versionFile%"
        echo Version reset to 0.0.1.
    ) else (
        echo 0.0.1 > "%versionFile%"
        echo Version file created and set to 0.0.1.
    )
    pause
    goto menu
) else if "%choice%"=="2" (
    REM Check if the Elite folder exists and delete it
    if exist "%eliteFolder%" (
        rd /s /q "%eliteFolder%"
        if not exist "%eliteFolder%" (
            echo Folder deleted.
        ) else (
            echo Failed to delete folder.
        )
    ) else (
        echo Folder does not exist.
    )
    pause
    goto menu
) else if "%choice%"=="3" (
    REM Exit the script
    echo Exiting...
    exit /b
) else (
    echo Invalid choice. Please select a valid option.
    pause
    goto menu
)

REM End of script
pause
