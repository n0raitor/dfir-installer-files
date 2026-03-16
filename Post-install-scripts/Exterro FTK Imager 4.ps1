# PowerShell PostProcess script for Exterro FTK Imager 4 of Category C:\DFIR\_Tools\Acquisition Tools

# Check if the category path exists, if not, create it
if (!(Test-Path -Path "C:\DFIR\_Tools\Acquisition Tools")) {
    New-Item -Path "C:\DFIR\_Tools\Acquisition Tools" -ItemType Directory
}

# Check if the tool directory exists
if (Test-Path -Path "C:\DFIR\Exterro FTK Imager 4") {
    # Create symlink if tool directory exists
    New-Item -Path "C:\DFIR\_Tools\Acquisition Tools\Exterro FTK Imager 4" -ItemType SymbolicLink -Target "C:\DFIR\Exterro FTK Imager 4" -Force
} else {
    Write-Host "Tool directory does not exist: C:\DFIR\Exterro FTK Imager 4"
}

# Create symlink
#New-Item -Path "C:\DFIR\_Tools\Acquisition Tools\Exterro FTK Imager 4.exe" -ItemType SymbolicLink -Target "C:\DFIR\Exterro FTK Imager 4\Exterro FTK Imager 4.exe" -Force

# File moving command will be inserted here
# Move-Item -Path C:\DFIR\ -Destination "C:\DFIR\Tools\Acquisition Tools"

