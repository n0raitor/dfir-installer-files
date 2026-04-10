# PowerShell PostProcess script for VMware Workstation25 of Category C:\DFIR\_Tools\System Utilities

# Check if the category path exists, if not, create it
if (!(Test-Path -Path "C:\DFIR\_Tools\System Utilities")) {
    New-Item -Path "C:\DFIR\_Tools\System Utilities" -ItemType Directory
}

# Check if the tool directory exists
if (Test-Path -Path "C:\DFIR\VMware Workstation25") {
    # Create symlink if tool directory exists
    New-Item -Path "C:\DFIR\_Tools\System Utilities\VMware Workstation25" -ItemType SymbolicLink -Target "C:\DFIR\VMware Workstation25" -Force
} else {
    Write-Host "Tool directory does not exist: C:\DFIR\VMware Workstation25"
}

# Create symlink
#New-Item -Path "C:\DFIR\_Tools\System Utilities\VMware Workstation25.exe" -ItemType SymbolicLink -Target "C:\DFIR\VMware Workstation25\VMware Workstation25.exe" -Force

# File moving command will be inserted here
# Move-Item -Path C:\DFIR\ -Destination "C:\DFIR\Tools\System Utilities"

