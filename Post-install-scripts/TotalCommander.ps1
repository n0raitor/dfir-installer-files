# PowerShell PostProcess script for TotalCommander of Category C:\DFIR\_Tools\Misc

# Check if the category path exists, if not, create it
if (!(Test-Path -Path "C:\DFIR\_Tools\System Utilities")) {
    New-Item -Path "C:\DFIR\_Tools\System Utilities" -ItemType Directory
}

# Check if the tool directory exists
if (Test-Path -Path "C:\DFIR\TotalCommander") {
    # Create symlink if tool directory exists
    New-Item -Path "C:\DFIR\_Tools\System Utilities\TotalCommander" -ItemType SymbolicLink -Target "C:\DFIR\TotalCommander" -Force
} else {
    Write-Host "Tool directory does not exist: C:\DFIR\TotalCommander"
}

# Create symlink
#New-Item -Path "C:\DFIR\_Tools\Misc\TotalCommander.exe" -ItemType SymbolicLink -Target "C:\DFIR\TotalCommander\TotalCommander.exe" -Force

# File moving command will be inserted here
# Move-Item -Path C:\DFIR\ -Destination "C:\DFIR\Tools\Misc"

