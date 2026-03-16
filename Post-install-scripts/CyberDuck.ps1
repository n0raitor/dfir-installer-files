# PowerShell PostProcess script for CyberDuck of Category C:\DFIR\_Tools\Network

# Check if the category path exists, if not, create it
if (!(Test-Path -Path "C:\DFIR\_Tools\Network")) {
    New-Item -Path "C:\DFIR\_Tools\Network" -ItemType Directory
}

# Check if the tool directory exists
if (Test-Path -Path "C:\DFIR\CyberDuck") {
    # Create symlink if tool directory exists
    New-Item -Path "C:\DFIR\_Tools\Network\CyberDuck" -ItemType SymbolicLink -Target "C:\DFIR\CyberDuck" -Force
} else {
    Write-Host "Tool directory does not exist: C:\DFIR\CyberDuck"
}

# Create symlink
#New-Item -Path "C:\DFIR\_Tools\Network\CyberDuck.exe" -ItemType SymbolicLink -Target "C:\DFIR\CyberDuck\CyberDuck.exe" -Force

# File moving command will be inserted here
# Move-Item -Path C:\DFIR\ -Destination "C:\DFIR\Tools\Network"

