
@echo off

IF "%VAGRANT_HOME%"=="" (
    echo "--- VAGRANT_HOME is not defined. Check your Vagrant installation and try again."
    GOTO :EOF
)

set CURRENT_DIR=%~dp0

echo "--- Linking Vagrantfile ---"
mklink "%VAGRANT_HOME%\Vagrantfile" "%CURRENT_DIR%\Vagrantfile"

echo "--- Linking associated resources ---"
mklink /J "%VAGRANT_HOME%\scripts" "%CURRENT_DIR%\scripts"

echo "-- Done --"

@echo on