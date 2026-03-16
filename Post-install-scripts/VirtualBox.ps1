# PowerShell PostProcess script for VirtualBox of Category C:\DFIR\_Tools\Utilities

# Check if the category path exists, if not, create it
if (!(Test-Path -Path "C:\DFIR\_Tools\System Utilities")) {
    New-Item -Path "C:\DFIR\_Tools\System Utilities" -ItemType Directory
}

# Check if the tool directory exists
if (Test-Path -Path "C:\DFIR\VirtualBox") {
    # Create symlink if tool directory exists
    New-Item -Path "C:\DFIR\_Tools\System Utilities\VirtualBox" -ItemType SymbolicLink -Target "C:\DFIR\VirtualBox" -Force
} else {
    Write-Host "Tool directory does not exist: C:\DFIR\VirtualBox"
}

# Create symlink
#New-Item -Path "C:\DFIR\_Tools\Utilities\VirtualBox.exe" -ItemType SymbolicLink -Target "C:\DFIR\VirtualBox\VirtualBox.exe" -Force

# File moving command will be inserted here
# Move-Item -Path C:\DFIR\ -Destination "C:\DFIR\Tools\Utilities"

