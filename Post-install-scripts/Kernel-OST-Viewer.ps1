# PowerShell PostProcess script for Kernel-OST-Viewer (FREE) of Category C:\DFIR\_Tools\Email Tools

# Check if the category path exists, if not, create it
if (!(Test-Path -Path "C:\DFIR\_Tools\Email Tools")) {
    New-Item -Path "C:\DFIR\_Tools\Email Tools" -ItemType Directory
}

# Check if the tool directory exists
if (Test-Path -Path "C:\DFIR\Kernel-OST-Viewer (FREE)") {
    # Create symlink if tool directory exists
    New-Item -Path "C:\DFIR\_Tools\Email Tools\Kernel-OST-Viewer (FREE)" -ItemType SymbolicLink -Target "C:\DFIR\Kernel-OST-Viewer (FREE)" -Force
} else {
    Write-Host "Tool directory does not exist: C:\DFIR\Kernel-OST-Viewer (FREE)"
}

# Create symlink
#New-Item -Path "C:\DFIR\_Tools\Email Tools\Kernel-OST-Viewer (FREE).exe" -ItemType SymbolicLink -Target "C:\DFIR\Kernel-OST-Viewer (FREE)\Kernel-OST-Viewer (FREE).exe" -Force

# File moving command will be inserted here
# Move-Item -Path C:\DFIR\ -Destination "C:\DFIR\Tools\Email Tools"

