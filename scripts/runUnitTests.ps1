<#
.DESCRIPTION
    Runs mypy and ruff linters to make sure project is adherring to established python standards.

    MUST RUN setupDevEnv.ps1 FIRST

.PARAMETER <parameter_name>
    None

.EXAMPLE
    .\scripts\runLinters.ps1

.NOTES
    Project: Practice
    License: Unlicensed (No warranty)
    Author: Lane Taylor
#>
$ErrorActionPreference = "Stop"
$scriptPath = split-path -parent $MyInvocation.MyCommand.Definition
& $scriptPath/../.venv/Scripts/Activate.ps1

python -m pytest -vv -s $scriptPath/../tests; if ($LastExitCode -ne 0) { exit $LastExitCode }

deactivate
Exit $LASTEXITCODE