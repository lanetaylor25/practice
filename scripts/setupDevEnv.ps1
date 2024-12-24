<#
.DESCRIPTION
    Sets up the local poetry environment used for development.

.PARAMETER <parameter_name>
    None

.EXAMPLE
    .\scripts\setupDevEnv.ps1

.NOTES
    Project: Practice
    License: Unlicensed (No warranty)
    Author: Lane Taylor
#>
$scriptPath = split-path -parent $MyInvocation.MyCommand.Definition

if (-not (Get-Command poetry.exe -ErrorAction SilentlyContinue)) {
    Write-Output "Poetry is not installed. Installing Poetry..."
    if (Get-Command pip -ErrorAction SilentlyContinue) {
        pip install poetry
    }
    else {
        Write-Error "pip is not installed. Please install pip first."
    }
}
else {
    Write-Output "Poetry is already installed."
}

poetry env list
poetry env remove --all
poetry check --lock; if ($LastExitCode -ne 0) { exit $LastExitCode }
poetry install; if ($LastExitCode -ne 0) { exit $LastExitCode }
