# PowerShell PostProcess script for EVTXtract of Category C:\DFIR\_Tools\Recovery

# Check if the category path exists, if not, create it
if (!(Test-Path -Path "C:\DFIR\_Tools\Event Log Tools")) {
    New-Item -Path "C:\DFIR\_Tools\Event Log Tools" -ItemType Directory
}

# Check if the tool directory exists
if (Test-Path -Path "C:\DFIR\EVTXtract") {
    # Create symlink if tool directory exists
    New-Item -Path "C:\DFIR\_Tools\Event Log Tools\EVTXtract" -ItemType SymbolicLink -Target "C:\DFIR\EVTXtract" -Force
} else {
    Write-Host "Tool directory does not exist: C:\DFIR\EVTXtract"
}

# Create symlink
#New-Item -Path "C:\DFIR\_Tools\Recovery\EVTXtract.exe" -ItemType SymbolicLink -Target "C:\DFIR\EVTXtract\EVTXtract.exe" -Force

# File moving command will be inserted here
# Move-Item -Path C:\DFIR\ -Destination "C:\DFIR\Tools\Recovery"

